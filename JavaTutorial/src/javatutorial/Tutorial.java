package javatutorial;

import java.io.IOException;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import javax.xml.bind.DatatypeConverter;



/**
 * Servlet implementation class Tutorial
 */
@WebServlet("/Tutorial")
public class Tutorial extends HttpServlet{
	private static final long serialVersionUID = 1L;

	//antlisi dedomenwn - vasi
	private DataSource datasource = null;
	//query
	Sql query = new Sql();
	//html content gia blank kai testpage
	String html = "";
	//number of test
	String testnum = "";
	//prwti prwti selida = index
	String page = "index";
	//Cookie gia to remember me
	//Cookie c = new Cookie("user", "");
	//an o xristis ehei kanei toulaxiston 1 fora to test
	String snd_chance = "0";
	
	public static HttpSession session;
	/*Θα έχω 4 μεταβλητές για session που θα σώζουν κεφάλαιο και σελίδα (μόνο τον αριθμό σε text)
	  οι απλές μεταβλητές chapter, page θα σωζουν το μαξ κεφάλαιο και την σελίδα που έχει φτάσει ο χρήστης
	  οι μεταβλητές cchapter, cpage θα σώζουν το κεφάλαιο και την σελίδα που ο χρήστης διαβάζει τώρα
	  μόνο όταν το cchapter, cpage ξεπεράσουν το chapter, page τότε αλλάζουν τα chapter, page και οι τιμές τους στην ΒΔ
	  */
	public void init() throws ServletException {
		try {
			InitialContext ctx = new InitialContext();
			datasource = (DataSource) ctx.lookup("java:comp/env/jdbc/LiveDataSource");
		} catch (Exception e) {
			throw new ServletException(e.toString());
		}

	}
	
	//μέθοδος η οποία κάνει salt στον κωδικό και επιστρέφει τον hashed κωδικό
	public static String getHash(byte[] inputBytes, String algorithm){
    	String hashValue="";
    	try{
    		MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
    		messageDigest.update(inputBytes);
    		byte[] digestedBytes = messageDigest.digest();
    		hashValue = DatatypeConverter.printHexBinary(digestedBytes).toLowerCase();
    		
    	}
    	catch(Exception e){}
    	return hashValue;
	}
	
	//μέθοδος η οποία ελέγχει αν τα στοιχεία που μπήκανε στην φόρμα για login υπάρχουν στην ΒΔ ως χρήστης
		public void login(HttpServletRequest request, HttpServletResponse response) {
			try {
				Connection con;
				con = datasource.getConnection();
				
				//pairnoume to email kai kwdiko pou pliktrologisame apo login jsp
				String u_email = request.getParameter("u_email");
				String u_pass = request.getParameter("u_pass");
				//String remember_me = request.getParameter("remember-me");
				//pairnoume ton hashed kwdiko gia na mporesoume na kanoume douleia 
				u_pass = getHash(u_pass.getBytes(),"MD5");
				
				//login me ta eisagwmena stoixeia apo login jsp
				PreparedStatement stmt = con.prepareStatement(query.loginUser(u_email,u_pass));
				ResultSet rs = stmt.executeQuery();		
				

				String score1="";
				String score2="";
				
				//ean uparxei o xristis me t eisagwmena stoixeia 
				if (rs.isBeforeFirst()) {
					while (rs.next()) {
						//pare to onoma tou, email, max chap, max page of chap, current chap, current page
						String r_uname = rs.getString("u_name");
						String r_uemail = rs.getString("u_email");
						//get max chap,page and cur chap, page
						String r_chapter = rs.getString("chapter");
						String r_page = rs.getString("page");
						String r_cchapter = rs.getString("cur_chapter");
						String r_cpage = rs.getString("cur_page");
						
						//if remember me was checked create a cookie
						/*if (remember_me != null) {
							if (remember_me.equals("remember-me"))
								{
									c.setValue(r_uemail);
									c.setMaxAge(24*60*60);
									response.addCookie(c);  // response is an instance of type HttpServletReponse
									System.out.print(c.getValue());
								}
						}*/
						//antlise tin current session
						session=request.getSession();  
						
						//set ta attributes tis session se name, email, pass??, max chapter, max page, cur chap, cur page of chap
						session.setAttribute("uname", r_uname);
				        session.setAttribute("uemail",r_uemail);  
				        //session.setAttribute("upass",u_pass);
				        session.setAttribute("chapter", r_chapter);
				        session.setAttribute("page", r_page);
				        session.setAttribute("cchapter", r_cchapter);
				        session.setAttribute("cpage", r_cpage);
				     
						
						System.out.println("Welcome " + session.getAttribute("uemail") + ", last read chapter " +session.getAttribute("chapter")+" page "+session.getAttribute("page"));
						
					}
					
					//get number of chapters
					stmt = con.prepareStatement(query.getMoocInfo());
					rs = stmt.executeQuery();		
					
					String n_chapters="";
					if (rs.isBeforeFirst()) {
						while (rs.next()) {
							n_chapters = rs.getString("n_chapters");
							session.setAttribute("n_chapters", n_chapters);
						}
					}
					stmt = con.prepareStatement(query.getStatistics(u_email));
					rs = stmt.executeQuery();
					
					if (rs.isBeforeFirst()) {
						while(rs.next()) {
							score1= rs.getString("score1");
							score2 = rs.getString("score2");
						}
					}
					ArrayList<String> score1_arr = new ArrayList<String>(Arrays.asList(score1.split(",")));
					ArrayList<String> score2_arr = new ArrayList<String>(Arrays.asList(score2.split(",")));
					//have already answered this test twice
					
					int tests = Integer.parseInt(n_chapters) -2;
					int i=0;
					for (int j=0;j<tests;j++) {
						if (!score1_arr.get(j).equals("-") && !score1_arr.get(j).equals("3") && score2_arr.get(j).equals("-") ) {
							i++;
							//poia test mporw na kanw ksana (px test_again1, 1 kai test_again2, 2)
							session.setAttribute("test_again"+i, j+1);
							System.out.println(j+1);
						}
					}
					//posa test mporw na kanw ksana? posa einai auta?
					session.setAttribute("howmany_test_again", i);
					System.out.println("howmany test" +i);
					
					//aujano to counter tou mina					
					//arxika pairno tin timi tou counter gia ton mina
					java.util.Date date= new Date(System.currentTimeMillis());
					Calendar cal = Calendar.getInstance();
					cal.setTime(date);
					int month = cal.get(Calendar.MONTH) + 1;
					String monthstr = String.valueOf(month);
					
					PreparedStatement stmt1 = con.prepareStatement(query.getMonthly(u_email));
					ResultSet rs1 = stmt1.executeQuery();
					int counter =0;
					int countJan = 0;
					int countFeb = 0;
					int countMar = 0;
					int countApr = 0;
					int countMay = 0;
					int countJun = 0;
					int countJul = 0;
					int countAug = 0;
					int countSep = 0;
					int countOct = 0;
					int countNov = 0;
					int countDec = 0;
					if (rs1.isBeforeFirst()) {
						while (rs1.next()) {
							//pare to counter tou sigekrimenou mina pou briskomaste
							//counter = rs.getInt("counter"+monthstr);
							counter = rs1.getInt(month+1);
							countJan=rs1.getInt(2);
							countFeb=rs1.getInt(3);
							countMar=rs1.getInt(4);
							countApr=rs1.getInt(5);
							countMay=rs1.getInt(6);
							countJun=rs1.getInt(7);
							countJul=rs1.getInt(8);
							countAug=rs1.getInt(9);
							countSep=rs1.getInt(10);
							countOct=rs1.getInt(11);
							countNov=rs1.getInt(12);
							countDec=rs1.getInt(13);

						}
					}
					counter = counter + 1;
				
			        PreparedStatement prestmt1 = con.prepareStatement(query.updateMonthly(u_email,month,counter));
					prestmt1.executeUpdate();

					//kane update to counter tou weekofyear an einai idio allios neo weekofyear kai counter = 1
					int week = cal.get(Calendar.WEEK_OF_YEAR);
					week = week-1;
					
					PreparedStatement stmt4 = con.prepareStatement(query.getWeekly(u_email));
					ResultSet rs4 = stmt4.executeQuery();
					int counter1 = 0;
					int weekofyear = 0;
					if (rs4.isBeforeFirst()) {
						while (rs4.next()) {
							//pare to counter tou sigekrimenou mina pou briskomaste
							weekofyear = rs4.getInt("weekofyear");
							counter1 = rs4.getInt("counter");

						}
					}
					if(week == weekofyear)
						counter1 = counter1 + 1;
					else
						counter1 = 1;
					System.out.println(cal);
					PreparedStatement prestmt3 = con.prepareStatement(query.updateWeekly(u_email,week,counter1));
					prestmt3.executeUpdate();
					
					
					session.setAttribute("weekly_episkepsi",counter1);
					session.setAttribute("monthly_episkepsiJan", countJan);
					session.setAttribute("monthly_episkepsiFeb", countFeb);
					session.setAttribute("monthly_episkepsiMar", countMar);
					session.setAttribute("monthly_episkepsiApr", countApr);
					session.setAttribute("monthly_episkepsiMay", countMay);
					session.setAttribute("monthly_episkepsiJun", countJun);
					session.setAttribute("monthly_episkepsiJul", countJul);
					session.setAttribute("monthly_episkepsiAug", countAug);
					session.setAttribute("monthly_episkepsiSep", countSep);
					session.setAttribute("monthly_episkepsiOct", countOct);
					session.setAttribute("monthly_episkepsiNov", countNov);
					session.setAttribute("monthly_episkepsiDec", countDec);
					
					

					session.setAttribute("telos", 0);
					
					//efoson egkura stoixeia steile ton xristi stin arxiki tu tutorial
					response.sendRedirect("index.jsp");
					con.close();
					rs.close();
				}
				else {
				
					//se periptwsh pou eishgage o xristis lanthasmena dedomena tote steilton sthn error page twn lathos ded/nwn
					
					//page="index";
					page ="error";
					request.setAttribute("page",page);
					request.getRequestDispatcher("error.jsp").forward(request, response);
					con.close();
					rs.close();
				}
			} catch (SQLException | IOException | ServletException e) {
				e.printStackTrace();
			}
		}
		
		public void checkForTestAgain(HttpServletRequest request, HttpServletResponse response) {
			try {
				Connection con;
				con = datasource.getConnection();
				
				String score1="";
				String score2="";
				
				PreparedStatement stmt = con.prepareStatement(query.getStatistics(session.getAttribute("uemail").toString()));
				ResultSet rs = stmt.executeQuery();
				
				if (rs.isBeforeFirst()) {
					while(rs.next()) {
						score1= rs.getString("score1");
						score2 = rs.getString("score2");
					}
				}
				
				//get number of chapters
				stmt = con.prepareStatement(query.getMoocInfo());
				rs = stmt.executeQuery();		
				
				String n_chapters="";
				if (rs.isBeforeFirst()) {
					while (rs.next()) {
						n_chapters = rs.getString("n_chapters");
						session.setAttribute("n_chapters", n_chapters);
					}
				}
				ArrayList<String> score1_arr = new ArrayList<String>(Arrays.asList(score1.split(",")));
				ArrayList<String> score2_arr = new ArrayList<String>(Arrays.asList(score2.split(",")));
				//have already answered this test twice
				
				int tests = Integer.parseInt(n_chapters) -2;
				int i=0;
				for (int j=0;j<tests;j++) {
					if (!score1_arr.get(j).equals("-") && !score1_arr.get(j).equals("3") && score2_arr.get(j).equals("-") ) {
						i++;
						//poia test mporw na kanw ksana (px test_again1, 1 kai test_again2, 2)
						session.setAttribute("test_again"+i, j+1);
						System.out.println(j+1);
					}
				}
				//posa test mporw na kanw ksana? posa einai auta?
				session.setAttribute("howmany_test_again", i);
				System.out.println("howmany test" +i);
				
				//efoson egkura stoixeia steile ton xristi stin arxiki tu tutorial
				//response.sendRedirect("index.jsp");
				con.close();
				rs.close();
				
			}
			catch (SQLException  e) {
				e.printStackTrace();
			}
		}
		
		
		//μέθοδος που σε μεταφέρει στην σελίδα δημιουργίας νέου χρήστη
		public void signup(HttpServletRequest request, HttpServletResponse response) {
			try {
				Connection con = datasource.getConnection();
				response.sendRedirect("register.jsp");
				con.close();
			}
			catch (SQLException | IOException e) {
				e.printStackTrace();
			}
		}
		
		//μέθοδος που ελέγχει αν ο χρήστης προς δημιουργία έχει μοναδικό ψευδώνυμο και τον εισαγάγει στην ΒΔ
	public void insertUser(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection con = datasource.getConnection();
			//antlisi twn dedomenwn apo tin forma
			String u_name = request.getParameter("u_name").toString();
			String u_email = request.getParameter("u_email").toString();
			String u_pass = request.getParameter("u_pass").toString();
			
	     
	        //uniqueness is true unless something points the opposite 
			boolean unique = true;
			//unique user based on email
			PreparedStatement prestmt1 = con.prepareStatement(query.uniqueUser(u_email));
			ResultSet rs1 = prestmt1.executeQuery();
			if(rs1.isBeforeFirst()) {
				while (rs1.next()) {
					//an vrethei idios xristis se tunique to false
					if (rs1.getString("case").equals("YES")) {
						unique = false;
					}
				}
			}
			//an unique user kai email kai pass den ein keno
			if (unique && u_email != "" && u_pass != "") {
				//get hashed kwdiko
				u_pass = getHash(u_pass.getBytes(),"MD5");
				//insert ton new user
				PreparedStatement prestmt2 = con.prepareStatement(query.insertUser(u_name,u_email,u_pass));
				prestmt2.executeUpdate();
				
				//arxikopoihsh twn session attributes
				session=request.getSession();  
				session.setAttribute("uname", u_name);
		        session.setAttribute("uemail",u_email);  
		        //session.setAttribute("upass",u_pass);
		        //set max chap, page and cur chap,pag to 0
		        session.setAttribute("chapter", "0");
		        session.setAttribute("page", "0");
		        session.setAttribute("cchapter", "0");
		        session.setAttribute("cpage", "0");
		        session.setAttribute("howmany_test_again", 0);

				session.setAttribute("telos", 0);
		      
		        String chap="";
		        PreparedStatement prestmt3 = con.prepareStatement(query.getMoocInfo());
				ResultSet rs3 = prestmt3.executeQuery();
				if(rs3.isBeforeFirst()) {
					while (rs3.next()) {
						chap = rs3.getString("n_chapters");
					}
				}
		        
				int tests = (Integer.parseInt(chap)-2);
				String scores ="";
				for (int i=0;i<=tests-1;i++)
					scores = scores + "-,";
				
				scores= scores.substring(0, scores.length() - 1);
				PreparedStatement prestmt4 = con.prepareStatement(query.insertUserStatistics(u_email,scores));
				prestmt4.executeUpdate();
				
				//get number of chapters
				prestmt4= con.prepareStatement(query.getMoocInfo());
				rs3 = prestmt4.executeQuery();		
				
				
				if (rs3.isBeforeFirst()) {
					while (rs3.next()) {
						String n_chapters = rs3.getString("n_chapters");
						session.setAttribute("n_chapters", n_chapters);
					}
				}
				
				//insert eggrafes gia ton pinaka monthly kai aujise kata ena to counter tou mina
				PreparedStatement prestmt5 = con.prepareStatement(query.insertMonthly(u_email));
				prestmt5.executeUpdate();
								
				java.util.Date date= new Date(System.currentTimeMillis());
				Calendar cal = Calendar.getInstance();
				cal.setTime(date);
				int month = cal.get(Calendar.MONTH) + 1;

		        PreparedStatement prestmt6 = con.prepareStatement(query.updateMonthly(u_email,month,1));
				prestmt6.executeUpdate();

				//insert eggrafes gia ton pinaka weekly kai aujise kata ena to counter kai kane eisagogi tis week of year
				int weekofyear = cal.get(Calendar.WEEK_OF_YEAR);
				PreparedStatement prestmt7 = con.prepareStatement(query.insertWeekly(u_email,weekofyear));
				prestmt7.executeUpdate();
				
				
				
				PreparedStatement stmt2 = con.prepareStatement(query.getMonthly(u_email));
				ResultSet rs2 = stmt2.executeQuery();
				int counter =0;
				int countJan = 0;
				int countFeb = 0;
				int countMar = 0;
				int countApr = 0;
				int countMay = 0;
				int countJun = 0;
				int countJul = 0;
				int countAug = 0;
				int countSep = 0;
				int countOct = 0;
				int countNov = 0;
				int countDec = 0;
				if (rs1.isBeforeFirst()) {
					while (rs1.next()) {
						//pare to counter tou sigekrimenou mina pou briskomaste
						//counter = rs.getInt("counter"+monthstr);
						counter = rs1.getInt(month+1);
						countJan=rs1.getInt(1);
						countFeb=rs1.getInt(2);
						countMar=rs1.getInt(3);
						countApr=rs1.getInt(4);
						countMay=rs1.getInt(5);
						countJun=rs1.getInt(6);
						countJul=rs1.getInt(7);
						countAug=rs1.getInt(8);
						countSep=rs1.getInt(9);
						countOct=rs1.getInt(10);
						countNov=rs1.getInt(11);
						countDec=rs1.getInt(12);

					}
				}

				session.setAttribute("weekly_episkepsi",1);
				session.setAttribute("monthly_episkepsiJan", countJan);
				session.setAttribute("monthly_episkepsiFeb", countFeb);
				session.setAttribute("monthly_episkepsiMar", countMar);
				session.setAttribute("monthly_episkepsiApr", countApr);
				session.setAttribute("monthly_episkepsiMay", countMay);
				session.setAttribute("monthly_episkepsiJun", countJun);
				session.setAttribute("monthly_episkepsiJul", countJul);
				session.setAttribute("monthly_episkepsiAug", countAug);
				session.setAttribute("monthly_episkepsiSep", countSep);
				session.setAttribute("monthly_episkepsiOct", countOct);
				session.setAttribute("monthly_episkepsiNov", countNov);
				session.setAttribute("monthly_episkepsiDec", countDec);
				
				//go to index - arxiki selida xristi
				response.sendRedirect("index.jsp");
				rs1.close();
				rs3.close();
				con.close();
				
			}		
			else {
				//o xristis yparxei idi!
				//page="index";
				page ="error";
				request.setAttribute("page",page);
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
		catch (SQLException | IOException | ServletException e) {
			e.printStackTrace();
		}
	}
	
	/*μέθοδος που ελέγχει αν το κεφάλαιο που επιλέχθηκε προς ανάγνωση έχει ξεκλειδωθεί
	*ένα κεφάλαιο έχει ξεκλειδωθεί αν έχει έχει ήδη διαβάσει ο χρήστης την 1η του σελίδα
	*ή αν έχει διαβάσει όλες τις σελίδες του προηγούμενου κεφαλαίου 
	*και αν το προηγούμενο κεφάλαιο είχε άσκηση, να την έχει λύσει
	*αλλά και προφανώς αν έχει διαβάσει και επόμενα κεφάλαια
	**/
	public void checkChapter(HttpServletRequest request, HttpServletResponse response, String mchapter) throws ServletException, IOException {
		try {
			Connection con = datasource.getConnection();
			//chapter to be read
			int chapter = Integer.parseInt(mchapter);
			
			session=request.getSession();
			//what is max chapter and max page read
			String r_chapter = session.getAttribute("chapter").toString();
			String r_page = session.getAttribute("page").toString();
			
			
			int r_chapter2 = Integer.parseInt(r_chapter);
			int r_page2 = Integer.parseInt(r_page);
			int page_sum = 0;
			
			//gia kathe chapter pou zitithike, ektos apo to 1o
			if(chapter!=1) {
				//antlise tis info tou chapter pou zitithike
				PreparedStatement prestmt = con.prepareStatement(query.getChapterInfo(String.valueOf(chapter)));//(String.valueOf(chapter-1)));
				ResultSet rs = prestmt.executeQuery();
				if(rs.isBeforeFirst()) {
					while (rs.next()) {
						//poses selides ehei to sugkekrimeno chapter pou zitithike
						page_sum = Integer.parseInt(rs.getString("pages"));
					}
				}

				rs.close();
				
				
				//an to max chapter einai >= tou chapter pou zitithike VALID CASE
				//h
				//to max chapter einai == me to chapter pou zitithike kai ehei diabastei olo to kefalaio (diladi oles oi selides) 
				if(r_chapter2 >= chapter ) {//|| (r_chapter2 == chapter - 1 && r_page2 == page_sum)) {
					System.out.println("have read that"); //paei na pei oti to exeis ksanadiavasei auto to chapter
					readChapter(request, response, mchapter); // kai se afinw na to ksanadiavaseis!!
				}
				else {
					System.out.println("havent read that"); //an epilekseis kefalaio pou den exeis diavasei den ginetai na to diavasies
			       	request.setAttribute("warning","1");
					request.getRequestDispatcher("index.jsp").forward(request, response); 
					
					//response.sendRedirect("index.jsp"); //meine sthn same page
				}
			}
			else if(chapter == 1) { //an chapter einai to 1o apla diabase to
				readChapter(request, response, mchapter);
			}		

			con.close();
		}
		catch (SQLException e){//| IOException e) {
			e.printStackTrace();
		}
		
	}
	
	//μέθοδος που παίρνει την 1η σελίδα του κεφαλαίου προς ανάγνωση και την εμφανίζει
		public void readChapter(HttpServletRequest request, HttpServletResponse response, String chapter) {
			try {
				Connection con = datasource.getConnection();
				html="";
				PreparedStatement prestmt1;
				//get info gia to chapter pou egkrithike pros anagnwsi
				PreparedStatement prestmt = con.prepareStatement(query.getChapterInfo(chapter));
				ResultSet rs = prestmt.executeQuery();
				//emfanise tin 1h selida
				if(rs.isBeforeFirst()) {
					while (rs.next()) {
						html = rs.getString("page1");
					}
				}

		        String uemail =  session.getAttribute("uemail").toString();
		        //String upass = session.getAttribute("upass").toString();
		        
				//efoson pira tin egkrisi oti den to exw diavasei, cur chap, cur page = me ekei p vriskomai
				session=request.getSession();  
		        session.setAttribute("cchapter", chapter);  
		        session.setAttribute("cpage", "1");
		        
		        //POIA EINAI TA CUR CHAPTER,PAGE?
		        String cchapter =  session.getAttribute("cchapter").toString();
		        String cpage = session.getAttribute("cpage").toString();
				
				//POIO EINAI TO MAX KEFALAIO KAI I MAX PAGE?
				String uchapter =  session.getAttribute("chapter").toString();
			    String upage = session.getAttribute("page").toString();
			    
			    /*Στην περίπτωση που είναι η πρώτη ανάγνωση του χρήστη 
			     * και στην περίπτωση που ο χρήστης δεν είχε ξεκινήσει το κεφάλαιο
			     * τότε αλλάζουμε τις τιμές του session και τις τιμές στην ΒΔ
			     */
			    //an einai i 1h anagnwsh-ara kefalaio 1 
			    
			    if (uchapter == "0") {
			    	
			    	session.setAttribute("chapter", cchapter);  
			        session.setAttribute("page", "1");
			        
			        prestmt1 = con.prepareStatement(query.updateUserReadingProgress(uemail,cchapter,"1",cchapter,"1"));
					prestmt1.executeUpdate();
			    }
			    //an einai kefalaio >1, apla alakse ta cur chap, page
			    if (Integer.parseInt(cchapter) <= Integer.parseInt(uchapter))
			    {
			    	System.out.println("current chap" +cchapter);
			    	System.out.println("max chap" +uchapter);
			    	prestmt1 = con.prepareStatement(query.updateUserReadingProgress(uemail,uchapter,upage,cchapter,"1"));
			    	prestmt1.executeUpdate();
					
			    } 
			    //emfanise to content
				request.setAttribute("html",html);
				request.getRequestDispatcher("blank.jsp").forward(request, response); 
				rs.close();
				con.close();

			}
			catch (SQLException | IOException |  ServletException e) {
				e.printStackTrace();
			}
		}
		
		/*μέθοδος που σε πάει στην προηγούμενη σελίδα του κεφαλαίου
		 * αν είσαι ήδη στην 1η σελίδα ενός κεφαλαίου σε πάει στην 1η σελίδα του προηγούμενου κεφαλαίου
		 */
		public void goPrevious(HttpServletRequest request, HttpServletResponse response) {
			try {
				Connection con = datasource.getConnection();
				html="";
				
				//se poio cur chapter eimai?? kai se poia selida? auta exoun idi allaxei mesw 3 epilogwn
				//stili plagia - prosfato kefalaio OK
				//go previous
				//go next
				session=request.getSession();  
				String cchapter = session.getAttribute("cchapter").toString();
				String cpage = session.getAttribute("cpage").toString();

				//poio einai to max chapter, page?
				String chapter = session.getAttribute("chapter").toString();
				String page = session.getAttribute("page").toString();
							
				//UEMAIL UPASS HERE ATTRIBS
				String uemail = session.getAttribute("uemail").toString();
				//String upass = session.getAttribute("upass").toString();
				
				//an eisai sti prwth selida kai to cur kefalaio einai 2,3,4.... (sto 1o kefalaio prin den ehei!!!)
				//tote pigaine sti 1h selida tou prohgoumenou kefalaiou
				if (cpage.equals("1") && !cchapter.equals("1")) {
					//go at start of previous chapter 				
					//new current chapter,page
					cchapter = String.valueOf(Integer.parseInt(cchapter) - 1);
					cpage = "1";
					
					PreparedStatement prestmt = con.prepareStatement(query.getChapterInfo(cchapter));
					ResultSet rs = prestmt.executeQuery();
					if(rs.isBeforeFirst()) {
						while (rs.next()) {
							html = rs.getString("page"+cpage);
						}
					}
					rs.close();
				} //an current page einai 2,3,4 klp kai eisai sto prwto kefalaio
				else if (!cpage.equals("1") && cchapter.equals("1")) {
					//go at first page	of chapter 1
					cchapter = "1";
					cpage = String.valueOf(Integer.parseInt(cpage) - 1) ;
					PreparedStatement prestmt = con.prepareStatement(query.getChapterInfo(cchapter));
					ResultSet rs = prestmt.executeQuery();
					if(rs.isBeforeFirst()) {
						while (rs.next()) {
							html = rs.getString("page"+cpage);
						}
					}
					rs.close();
				}
				//gia opoio kefalaio (ektos tou 1) vriskesai sti 2,3,4 sel. apla plhgaine sthn prohgoumeni toi
				else if (!cpage.equals("1")) {
					//go at previous page of same chapter
					cpage = String.valueOf(Integer.parseInt(cpage) - 1);
					
					PreparedStatement prestmt = con.prepareStatement(query.getChapterInfo(cchapter));
					ResultSet rs = prestmt.executeQuery();
					if(rs.isBeforeFirst()) {
						while (rs.next()) {
							//set content
							html = rs.getString("page"+cpage);
						}
					}
					rs.close();
				}	
				
				//set session attributes for current chap, page
				session=request.getSession();  
		        session.setAttribute("cchapter", cchapter);  
		        session.setAttribute("cpage", cpage);
		        
				
				//kane update st dedomena tou xristi oson afora to CURRENT CHAPT, PAGE
		        PreparedStatement prestmt2 = con.prepareStatement(query.updateUserReadingProgress(uemail,chapter,page,cchapter,cpage));
				prestmt2.executeUpdate();
				
				
				//emfanise content
				request.setAttribute("html",html);
				request.getRequestDispatcher("blank.jsp").forward(request, response); 
				
				
				con.close();

			}
			catch (SQLException | IOException |  ServletException e) {
				e.printStackTrace();
			}
		}
		
		/*μέθοδος που σε πηγαίνει στην επόμενη σελίδα
		 * αν το κεφάλαιο που διαβάζεις δεν έχει άλλη σελίδα σε πάει στο επόμενο κεφάλαιο εκτός αν 
		 * μετά το τέλος του κεφαλαίου υπάρχει τεστ, οπότε πας στο τεστ για να το λύσεις αν δεν το έχεις λύσει
		 * μόλις πας στην επόμενη σελίδα και έχεις ξεπεράσει την πρόοοδο σου ενημερώνεται η ΒΔ και session
		 */
		public void goNext(HttpServletRequest request, HttpServletResponse response) {
			try {
				Connection con = datasource.getConnection();
				html="";
				
				//get attributes of user
				session=request.getSession();
				String uemail = session.getAttribute("uemail").toString();
				String cchapter = session.getAttribute("cchapter").toString();
				String cpage = session.getAttribute("cpage").toString();
				String uchapter = session.getAttribute("chapter").toString();
				String upage = session.getAttribute("page").toString();
				
				
				//synolo selidwn kefalaiou
				int page_sum = 0;
				String n_chapters = "0";
				
				
				//lave info gia to chapter pou vriskosoun mexri prin
				PreparedStatement prestmt = con.prepareStatement(query.getChapterInfo(String.valueOf(cchapter)));
				ResultSet rs = prestmt.executeQuery();
				if(rs.isBeforeFirst()) {
					while (rs.next()) {
						//poses selides ehei sunolika??
						page_sum = Integer.parseInt(rs.getString("pages"));
					}
				}
				
				PreparedStatement prestmt1 = con.prepareStatement(query.getMoocInfo());
				ResultSet rs1 = prestmt1.executeQuery();
				if(rs1.isBeforeFirst()) {
					while (rs1.next()) {
						n_chapters = rs1.getString("n_chapters");
					}
				}
				
				rs.close();
				
				
				//an h selida pou briskosoun prin einai to sunolo twn selidwn enos kefalaiou (ara oloklirwses ena kefalaio)
				//kai
				//an to kefalaio pou vriskosoun einai to 1 h to 2 tote
				//OTAN OLOKLIRWNETAI KEFALAIO!!! kai auto einai to 1 h to 2
				if(Integer.parseInt(cpage) == page_sum && (cchapter.equals("1") || cchapter.equals("2"))) {
					//go at start of next chapter 	
					cchapter = String.valueOf(Integer.parseInt(cchapter) + 1);
					//prwth selida autou
					cpage = "1";
					
					//lave info gia to chapter p vriskosoun mexri stigmis
					prestmt1 = con.prepareStatement(query.getChapterInfo(cchapter));
					rs1 = prestmt1.executeQuery();
					if(rs1.isBeforeFirst()) {
						while (rs1.next()) {
							//html content
							html = rs1.getString("page"+cpage);
						}
					}

					rs1.close();
					//set session attributes gia cur chap, page
					session=request.getSession();  
			        session.setAttribute("cchapter", cchapter);  
			        session.setAttribute("cpage", cpage);
			        		        
			        //an omws to neo cur chapt einai > apo to max chap AUKSISE KAI TO MAX CHAP, PAGE
			        if(Integer.parseInt(cchapter) > Integer.parseInt(uchapter)) {
			        	
			        	//set session attributes for MAX CHAP, PAGE
			        	session.setAttribute("chapter", cchapter);  
				        session.setAttribute("page", "1");
			        }
			        
			        //update current page and chapter and MAX chap, page
			        PreparedStatement prestmt2 = con.prepareStatement(query.updateUserReadingProgress(uemail,cchapter,"1",cchapter,"1"));
					prestmt2.executeUpdate();
					
					
					//emfanise to content
					request.setAttribute("html",html);
					request.getRequestDispatcher("blank.jsp").forward(request, response);
					
				}//se kathe allo kefalaio 3,4...(ektos apo 1,2) pou ehei oloklirwthei (auta ehoun test)
				else if (Integer.parseInt(cpage) == page_sum && !cchapter.equals("1") && !cchapter.equals("2")) {					
					//go at chapter's test page
					
					testnum = String.valueOf((Integer.parseInt(cchapter) - 2));
					
					//κωδικας που θα τσεκαρει για το τρεχον κεφαλαιο ποσες φορες εχει απαντηθει το τεστ		
					String score1 ="";
					String score2 ="";
					PreparedStatement ps = con.prepareStatement(query.getStatistics(uemail));
					ResultSet r = ps.executeQuery();
					if(r.isBeforeFirst()) {
						while (r.next()) {
							//pare ta score1, score2
							System.out.println("scores is "+ r.getString("score1") +" "+ r.getString("score2"));
							score1 = r.getString("score1");
							score2 = r.getString("score2");
						}
					}
					
					r.close();
					
					System.out.println("scores is "+ score1 +" "+ score2);
					ArrayList<String> score1_arr = new ArrayList<String>(Arrays.asList(score1.split(",")));
					ArrayList<String> score2_arr = new ArrayList<String>(Arrays.asList(score2.split(",")));
					boolean done = false;
					//have already answered this test twice
					
					if (score1_arr.get(Integer.parseInt(testnum)-1).equals("3"))
						done = true;
					if (!score1_arr.get(Integer.parseInt(testnum)-1).equals("-") && !score2_arr.get(Integer.parseInt(testnum)-1).equals("-")) {
						done = true;
					}
					System.out.println(done + score1 + score2);
					if(!done) {
						System.out.println("goNext pigaino se test kefalaioy");
						/*prestmt1 = con.prepareStatement(query.getStatistics(uemail));
						rs1 = prestmt1.executeQuery();
						if(rs1.isBeforeFirst()) {
							while (rs1.next()) {
								
								String what_to_do = rs1.getString("score2");
							}
						}
						*/
						
						
						//ta test ksekinane apo to kefalaio 3 kai meta..!!! ta 2 prwta ein eisagwgika
						//test 1,2,3 klp
						
						//antlise erwthseis kai apantiseis gia to test
						prestmt1 = con.prepareStatement(query.getTestInfo(testnum));
						rs1 = prestmt1.executeQuery();
						
						//askiseis
						ArrayList<String> exercises = new ArrayList<String>();
						//index of ask
						ArrayList<String> exercise_nums = new ArrayList<String>();
						//to answer
						ArrayList<String> exercise_ans = new ArrayList<String>();
						
						//n = plithsos ask
						int n=1;
						if(rs1.isBeforeFirst()) {
							while (rs1.next()) {
								//will choose randomly some of the exercises
								//will save exercise inside list with append, and then randomly keep 3 exercises
								
								//apothikeuse tis askiseis
								exercises.add(rs1.getString("exercise"));
								exercise_ans.add(rs1.getString("answer"));
								//to index tis kathe askisis me ti seira pou emfanizontai
								exercise_nums.add(String.valueOf(n));
								n++;
							}
						}
						//an to plithos askisewn einai apo 4 kai anw..
						if (exercises.size() > 3) {
							while (exercises.size() > 3) {
								//epelekse tuhaia 3 askiseis
								int rando = (int) ((Math.random() * exercises.size()));
								//afairese apo tis ask px tis 2,3
								exercises.remove(rando);
								//afairese to antistoixo index ask
								exercise_nums.remove(rando);
								exercise_ans.remove(rando);
							}
						}
						//gia ti kathe askisi, antlise to content tis
						for (String ex : exercises) {
							html = html + ex;
						}
						//set session attr for test and plithos ask
						session.setAttribute("testnum", testnum);
						session.setAttribute("exercise_nums", String.join(",", exercise_nums));
						session.setAttribute("exercise_ans", String.join(",", exercise_ans));
						
						
						//update user info!!!
						PreparedStatement prestmt2 = con.prepareStatement(query.updateTestUserInfo(uemail,testnum));
						prestmt2.executeUpdate();
						
						rs1.close();
						//emfanise tis askiseis kai to noumero tou test
						request.setAttribute("html",html);
						request.setAttribute("testnum",testnum);
						request.getRequestDispatcher("testpage.jsp").forward(request, response);
					}
					else {
						System.out.println("goNext den pigaino se test kefalaioy");
						cchapter = String.valueOf(Integer.parseInt(cchapter) + 1);
						//prwth selida autou
						cpage = "1";
						
						//lave info gia to chapter p vriskosoun mexri stigmis
						prestmt1 = con.prepareStatement(query.getChapterInfo(cchapter));
						rs1 = prestmt1.executeQuery();
						if(rs1.isBeforeFirst()) {
							while (rs1.next()) {
								//html content
								html = rs1.getString("page"+cpage);
							}
						}
						

						rs1.close();
						//set session attributes gia cur chap, page
						session=request.getSession();  
				        session.setAttribute("cchapter", cchapter);  
				        session.setAttribute("cpage", cpage);
				        		        
				        //an omws to neo cur chapt einai > apo to max chap AUKSISE KAI TO MAX CHAP, PAGE
				        if(Integer.parseInt(cchapter) > Integer.parseInt(uchapter)) {
				        	
				        	//set session attributes for MAX CHAP, PAGE
				        	session.setAttribute("chapter", cchapter);  
					        session.setAttribute("page", "1");
				        }
				        
				        //update current page and chapter and MAX chap, page
				        PreparedStatement prestmt2 = con.prepareStatement(query.updateUserReadingProgress(uemail,cchapter,"1",cchapter,"1"));
						prestmt2.executeUpdate();
						
						
						//emfanise to content
						request.setAttribute("html",html);
						request.getRequestDispatcher("blank.jsp").forward(request, response);
					}
				}
				//an i current page tou kefalaiou einai < apo to sunolo selidwn tou kefalaiou, tote apla phgaine sthn epomeni
				else if (Integer.parseInt(cpage) < page_sum) {
					//go at next page of same chapter
					cpage = String.valueOf(Integer.parseInt(cpage) + 1);
					
					prestmt1 = con.prepareStatement(query.getChapterInfo(cchapter));
					rs1 = prestmt1.executeQuery();
					
					if(rs1.isBeforeFirst()) {
						while (rs1.next()) {
							html = rs1.getString("page"+cpage);
						}
					}
					rs1.close();
					//set session attributes, curr chap,page
					//MONO CURRENT PAGE ALLAZEI!!!
					session=request.getSession();  
			        session.setAttribute("cchapter", cchapter);  
			        session.setAttribute("cpage", cpage);
			        
			        //an to cur chap einai to max chap kai i cur page > max pag SET MAX PAGE = CUR PAGE
			        if(Integer.parseInt(cchapter) == Integer.parseInt(uchapter) && Integer.parseInt(cpage) > Integer.parseInt(upage)) {
			        	
			        	//set session attributes
			        	session.setAttribute("chapter", cchapter);  
				        session.setAttribute("page", cpage);
				
			        }
			        
			        //update user info
			        PreparedStatement prestmt2 = con.prepareStatement(query.updateUserReadingProgress(uemail,uchapter,cpage,cchapter,cpage));
					prestmt2.executeUpdate();
					
					
					//emfanise content
					request.setAttribute("html",html);
					request.getRequestDispatcher("blank.jsp").forward(request, response); 				
				}			
				con.close();

			}
			catch (SQLException | IOException |  ServletException e) {
				e.printStackTrace();
			}
		}
		
		//method that checks results of test1
				public void test(HttpServletRequest request, HttpServletResponse response) {
					try {
						Connection con;
						con = datasource.getConnection();

						//get session attributes
						session=request.getSession();
						String uemail = session.getAttribute("uemail").toString();
						String cchapter = session.getAttribute("cchapter").toString();
						String cpage = session.getAttribute("cpage").toString();
						String uchapter = session.getAttribute("chapter").toString();
						//String upage = session.getAttribute("page").toString();
						//se poio test briskesai
						String testnum = session.getAttribute("testnum").toString();
						//poies ask exoun epilexthei (index)
						String exercise_nums = session.getAttribute("exercise_nums").toString();
						//oi antistoixes apantiseis twn ask p ehoun epilexthei
						String exercise_ans = session.getAttribute("exercise_ans").toString();
						
						
						
						//oi ask pou exoun epilexthei (index)
						ArrayList<String> exercise_nums_arr = new ArrayList<String>(Arrays.asList(exercise_nums.split(",")));
						ArrayList<String> exercise_ans_arr = new ArrayList<String>(Arrays.asList(exercise_ans.split(",")));
						
					

						int score =0;
						boolean allcorrect = true;
						for (int i=0; i<exercise_nums_arr.size();i++) {
							if(!exercise_ans_arr.get(i).equals(request.getParameter("answer"+exercise_nums_arr.get(i))))
								allcorrect = false;
							else
								score++;
							
						}
						
						String score1 ="";
						String score2 ="";
						PreparedStatement prestmt = con.prepareStatement(query.getStatistics(uemail));
						ResultSet rs = prestmt.executeQuery();
						if(rs.isBeforeFirst()) {
							while (rs.next()) {
								//pare ta score1, score2
								score1 = rs.getString("score1");
								score2 = rs.getString("score2");
							}
						}
						
						ArrayList<String> score1_arr = new ArrayList<String>(Arrays.asList(score1.split(",")));
						ArrayList<String> score2_arr = new ArrayList<String>(Arrays.asList(score2.split(",")));
						boolean first = false;
						boolean second = false;
						
						//first time giving this test
						if(score1_arr.get(Integer.parseInt(testnum)-1).equals("-")) {
							score1_arr.set(Integer.parseInt(testnum)-1,String.valueOf(score));
							request.setAttribute("2ndchance", "1");
							first = true;
							PreparedStatement prestmt1 = con.prepareStatement(query.updateStatisticsScores(uemail,String.join(",", score1_arr),String.join(",", score2_arr),"-"));
							prestmt1.executeUpdate();
							
							session.setAttribute("howmany_test_again", "1");
							session.setAttribute("test_again1", testnum);
							
							
						}
						//second time giving this test
						else if (!score1_arr.get(Integer.parseInt(testnum)-1).equals("-") && !score1_arr.get(Integer.parseInt(testnum)-1).contentEquals("3") && score2_arr.get(Integer.parseInt(testnum)-1).equals("-") ) {
							score2_arr.set(Integer.parseInt(testnum)-1,String.valueOf(score));
							second = true;
							
							PreparedStatement prestmt1 = con.prepareStatement(query.updateStatisticsScores(uemail,String.join(",", score1_arr),String.join(",", score2_arr),"-"));
							prestmt1.executeUpdate();
							
						}
						//have already answered this test twice
						else if (!score2_arr.get(Integer.parseInt(testnum)-1).equals("-")) {
							//do something
						}
						
						
						
						
						//an ola swsta, phgaine epomeno kefalaio
						if (allcorrect || second) {
							//go at start of next chapter
							System.out.println("Right anwswer!");
							if (!testnum.equals("17")) {
								cchapter = String.valueOf(Integer.parseInt(cchapter) + 1);
								cpage = "1";
								PreparedStatement prestmt1 = con.prepareStatement(query.getChapterInfo(cchapter));
								ResultSet rs1 = prestmt1.executeQuery();
								if(rs1.isBeforeFirst()) {
									while (rs1.next()) {
										html = rs1.getString("page"+cpage);
									}
								}
								session=request.getSession();  
						        session.setAttribute("cchapter", cchapter);  
						        session.setAttribute("cpage", cpage);
						        		        
						        if(Integer.parseInt(cchapter) > Integer.parseInt(uchapter)) {
						        	session.setAttribute("chapter", cchapter);  
							        session.setAttribute("page", "1");
							        
						        	PreparedStatement prestmt2 = con.prepareStatement(query.updateUserReadingProgress(uemail,cchapter,"1",cchapter,"1"));
									prestmt2.executeUpdate();
						        }
						        
						        session.setAttribute("howmany_test_again", 0);
						        rs1.close();
								request.setAttribute("html",html);
								request.getRequestDispatcher("blank.jsp").forward(request, response);			
							
							}
							else {
								//na thesw metabliti oti paw sto final test
								session.setAttribute("final", "yep");
								response.sendRedirect("index.jsp");
								//request.getRequestDispatcher("index.jsp").forward(request, response);	
							}
						}			
						else { //an kaneis lathos
							//an 1h fora kaneis lathos
								System.out.println("Wrong anwswer!");        
								request.setAttribute("html",html);
								request.getRequestDispatcher("testpage.jsp").forward(request, response);
							
							
						}
						rs.close();
						con.close();
					} catch (SQLException | IOException |  ServletException e) {
						e.printStackTrace();
					}
					
				}
				
				public void test_index(HttpServletRequest request, HttpServletResponse response) {
					try {
						html="";
						Connection con = datasource.getConnection();
						//antlise erwthseis kai apantiseis gia to test
						PreparedStatement prestmt1 = con.prepareStatement(query.getTestInfo(session.getAttribute("testnum").toString()));
						ResultSet rs1 = prestmt1.executeQuery();
						
						//askiseis
						ArrayList<String> exercises = new ArrayList<String>();
						//index of ask
						ArrayList<String> exercise_nums = new ArrayList<String>();
						//to answer
						ArrayList<String> exercise_ans = new ArrayList<String>();
						
						//n = plithsos ask
						int n=1;
						if(rs1.isBeforeFirst()) {
							while (rs1.next()) {
								//will choose randomly some of the exercises
								//will save exercise inside list with append, and then randomly keep 3 exercises
								
								//apothikeuse tis askiseis
								exercises.add(rs1.getString("exercise"));
								exercise_ans.add(rs1.getString("answer"));
								//to index tis kathe askisis me ti seira pou emfanizontai
								exercise_nums.add(String.valueOf(n));
								n++;
							}
						}
						//an to plithos askisewn einai apo 4 kai anw..
						if (exercises.size() > 3) {
							while (exercises.size() > 3) {
								//epelekse tuhaia 3 askiseis
								int rando = (int) ((Math.random() * exercises.size()));
								//afairese apo tis ask px tis 2,3
								exercises.remove(rando);
								//afairese to antistoixo index ask
								exercise_nums.remove(rando);
								exercise_ans.remove(rando);
							}
						}
						//gia ti kathe askisi, antlise to content tis
						for (String ex : exercises) {
							html = html + ex;
						}
						//set session attr for test and plithos ask
						
						session.setAttribute("exercise_nums", String.join(",", exercise_nums));
						session.setAttribute("exercise_ans", String.join(",", exercise_ans));
						
						rs1.close();
						//emfanise tis askiseis kai to noumero tou test
						request.setAttribute("html",html);
						request.setAttribute("testnum",session.getAttribute("testnum"));
						request.getRequestDispatcher("testpage.jsp").forward(request, response);
					}
					catch(SQLException | IOException |  ServletException e) {
						e.printStackTrace();
						
					}
				}
				//μέθοδος που βρίσκει τα στατιστικα του χρηστη
				public void statistics(HttpServletRequest request, HttpServletResponse response) {
					try {
						Connection con = datasource.getConnection();
						
						//get session attributes
						session=request.getSession();
						String uemail = session.getAttribute("uemail").toString();
						/*String cchapter = session.getAttribute("cchapter").toString();
						String cpage = session.getAttribute("cpage").toString();
						String uchapter = session.getAttribute("chapter").toString();
						String upage = session.getAttribute("page").toString();*/
						//se poio test briskesai
						//String testnum = session.getAttribute("testnum").toString();
						//poies ask exoun epilexthei (index)
						
						
						String score1 ="";
						String score2 ="";
						String scoref ="";
						PreparedStatement prestmt = con.prepareStatement(query.getStatistics(uemail));
						ResultSet rs = prestmt.executeQuery();
						if(rs.isBeforeFirst()) {
							while (rs.next()) {
								//pare ta score1, score2, scoref
								score1 = rs.getString("score1");
								score2 = rs.getString("score2");
								scoref = rs.getString("scoref");
							}
						}
						
						//pare ta scores 1h prospatheia kai 2h (list)
						ArrayList<String> score1_arr = new ArrayList<String>(Arrays.asList(score1.split(",")));
						ArrayList<String> score2_arr = new ArrayList<String>(Arrays.asList(score2.split(",")));
						
						//λίστα όπου σώζει για κάθε τεστ απο 1 - max πόσες φορές το έχω λύσει
						ArrayList<Integer> scores_arr = new ArrayList<Integer>(); 
						//kaluteri vathmologia apo score1 kai score 2
						ArrayList<Integer> scores_max_arr = new ArrayList<Integer>(); 
						
						int counter0 = 0; //ποσες φορές έχω λύσει κάποιο τεστ καμία φορά
						int counter1 = 0; //ποσες φορές έχω λύσει κάποιο τεστ 1 φορά
						int counter2 = 0; //ποσες φορές έχω λύσει κάποιο τεστ 2 φορές
						int counterp = 0; //ποσες φορές έχω λύσει κάποιο τεστ με βαθμό 3 (είτε είναι από 1η ή 2η φορά)
						int testscore = 0; //συνολική βαθμολογία από τα τεστ
						int finalscore = 0; //συνολική βαθμολογία απο τεστ και τελικό διαγώνσισμα
						
						for(int i=0;i<=score1_arr.size()-1;i++) {
							if(score1_arr.get(i).equals("-")) {
								//haven't answered this test at all
								scores_arr.add(0);
								counter0 = counter0 + 1;
								scores_max_arr.add(-1);
							}
							else if(!score1_arr.get(i).equals("-") && score2_arr.get(i).equals("-")) {
								//have answered this test only once
								counter1 = counter1 + 1;
								scores_arr.add(1);
								scores_max_arr.add(Integer.parseInt(score1_arr.get(i)));
							}
							else if (!score1_arr.get(i).equals("-") && !score2_arr.get(i).equals("-")){//have answered this test twice
								counter2 = counter2 + 1;
								scores_arr.add(2);
								if(Integer.parseInt(score1_arr.get(i)) > Integer.parseInt(score2_arr.get(i))) {//if first score is bigger
									testscore = testscore + Integer.parseInt(score1_arr.get(i));//we keep the biggest score
									scores_max_arr.add(Integer.parseInt(score1_arr.get(i)));
									if(Integer.parseInt(score1_arr.get(i)) == 3)//if it is 3
										counterp = counterp + 1;
								}
								else if (Integer.parseInt(score1_arr.get(i)) < Integer.parseInt(score2_arr.get(i))) {//if second score is bigger
									testscore = testscore + Integer.parseInt(score2_arr.get(i));//we keep the biggest score
									scores_max_arr.add(Integer.parseInt(score2_arr.get(i)));
									if(Integer.parseInt(score2_arr.get(i)) == 3)//if it is 3
										counterp = counterp + 1;
								}
								else if (Integer.parseInt(score1_arr.get(i)) == Integer.parseInt(score2_arr.get(i))) {//if same score
									testscore = testscore + Integer.parseInt(score1_arr.get(i));//we keep the score
									scores_max_arr.add(Integer.parseInt(score1_arr.get(i)));
									if(Integer.parseInt(score1_arr.get(i)) == 3)//if it is 3
										counterp = counterp + 1;
								}
							}
						}
						
						System.out.println(scores_arr.size());
						if (!scoref.equals("-"))
							finalscore = testscore + Integer.parseInt(scoref);
						else
							finalscore = testscore;
						
						request.setAttribute("testscore", testscore);
						request.setAttribute("num_tests", scores_arr.size());
						request.setAttribute("counter0", counter0);
						request.setAttribute("scores_max", scores_max_arr);
						request.setAttribute("counter1", counter1);
						request.setAttribute("counter2", counter2);
						request.setAttribute("counterp", counterp);
						session.setAttribute("finalscore", finalscore);
						request.setAttribute("finalscore", finalscore);
						request.getRequestDispatcher("charts.jsp").forward(request, response);
						//response.sendRedirect("charts.jsp");
						
						rs.close();
						con.close();
					}
					catch (SQLException | IOException | ServletException e) {
						e.printStackTrace();
					}
				}
				
				
				
				public void vathm_users(HttpServletRequest request, HttpServletResponse response) {
					try {
						Connection con = datasource.getConnection();
						
						//get session attributes
						session=request.getSession();
						String uemail = session.getAttribute("uemail").toString();
						
						//se poio test briskesai
						//String testnum = session.getAttribute("testnum").toString();
						//poies ask exoun epilexthei (index)
						
						
						String score1 ="";
						String score2 ="";
						String scoref ="";
						PreparedStatement prestmt = con.prepareStatement(query.getStatistics(uemail));
						ResultSet rs = prestmt.executeQuery();
						if(rs.isBeforeFirst()) {
							while (rs.next()) {
								//pare ta score1, score2, scoref
								score1 = rs.getString("score1");
								score2 = rs.getString("score2");
								scoref = rs.getString("scoref");
							}
						}
						
						//pare ta scores 1h prospatheia kai 2h (list)
						ArrayList<String> score1_arr = new ArrayList<String>(Arrays.asList(score1.split(",")));
						ArrayList<String> score2_arr = new ArrayList<String>(Arrays.asList(score2.split(",")));
						
						//kaluteri vathmologia apo score1 kai score 2
						ArrayList<Integer> scores_max_arr = new ArrayList<Integer>(); 
						
						
						for(int i=0;i<=score1_arr.size()-1;i++) {
							if(score1_arr.get(i).equals("-")) {
								//haven't answered this test at all
								scores_max_arr.add(-1);
							}
							else if(!score1_arr.get(i).equals("-") && score2_arr.get(i).equals("-")) {
								//have answered this test only once
								
								scores_max_arr.add(Integer.parseInt(score1_arr.get(i)));
							}
							else if (!score1_arr.get(i).equals("-") && !score2_arr.get(i).equals("-")){//have answered this test twice
								
								if(Integer.parseInt(score1_arr.get(i)) > Integer.parseInt(score2_arr.get(i))) {//if first score is bigger
									
									scores_max_arr.add(Integer.parseInt(score1_arr.get(i)));
									
								}
								else if (Integer.parseInt(score1_arr.get(i)) < Integer.parseInt(score2_arr.get(i))) {//if second score is bigger
									scores_max_arr.add(Integer.parseInt(score2_arr.get(i)));
									
								}
								else if (Integer.parseInt(score1_arr.get(i)) == Integer.parseInt(score2_arr.get(i))) {//if same score
									scores_max_arr.add(Integer.parseInt(score1_arr.get(i)));
									
								}
							}
						}
						
						
						session.setAttribute("num_tests", scores_max_arr.size());
						session.setAttribute("scores_max", scores_max_arr);
						session.setAttribute("final_test_score", scoref);
						
						response.sendRedirect("tables.jsp");
						//request.getRequestDispatcher("tables.jsp").forward(request, response);
						
						rs.close();
						con.close();
					}
					catch (SQLException | IOException e) {
						e.printStackTrace();
					}
					
				}
				
				public void check_exam(HttpServletRequest request, HttpServletResponse response){
					try {
						html="";
						Connection con = datasource.getConnection();

						
						
						String u_email = session.getAttribute("uemail").toString();
						String score1 ="";
						String score2="";
						String scoref ="";
						
						PreparedStatement prestmt = con.prepareStatement(query.getStatistics(u_email));
						ResultSet rs = prestmt.executeQuery();
						
						if(rs.isBeforeFirst()) {
							while (rs.next()) {
								//pare ta score1, score2, scoref
								score1 = rs.getString("score1");
								score2 = rs.getString("score2");
								scoref = rs.getString("scoref");
							}
						}	
						//pare ta scores 1h prospatheia kai 2h (list)
						ArrayList<String> score1_arr = new ArrayList<String>(Arrays.asList(score1.split(",")));
						ArrayList<String> score2_arr = new ArrayList<String>(Arrays.asList(score2.split(",")));
						
						//ama eheis oloklirwsei to test 17 (me best vathmo) kai den eheis kanei to final test
						if (!score1_arr.get(16).equals("-") && scoref.equals("-"))
						{//mpeka
							session.setAttribute("final","yep");
							//antlise erwthseis kai apantiseis gia to test
							prestmt = con.prepareStatement(query.getExamInfo());
							rs = prestmt.executeQuery();
							
							//askiseis
							ArrayList<String> exercises = new ArrayList<String>();
							//to answer
							ArrayList<String> exercise_ans = new ArrayList<String>();
							
							//n = plithsos ask
							if(rs.isBeforeFirst()) {
								while (rs.next()) {
									//krataei tis 2 askiseis kai oles tis apantiseis poy einai 10+10
									//apothikeuse tis askiseis
									exercises.add(rs.getString("exercise"));
									exercise_ans.add(rs.getString("answer1"));
									exercise_ans.add(rs.getString("answer2"));
									exercise_ans.add(rs.getString("answer3"));
									exercise_ans.add(rs.getString("answer4"));
									exercise_ans.add(rs.getString("answer5"));
									exercise_ans.add(rs.getString("answer6"));
									exercise_ans.add(rs.getString("answer7"));
									exercise_ans.add(rs.getString("answer8"));
									exercise_ans.add(rs.getString("answer9"));
									exercise_ans.add(rs.getString("answer10"));
								}
							}
							System.out.println(exercise_ans);
							//gia ti kathe askisi, antlise to content tis
							for (String ex : exercises) {
								html = html + ex;
							}
							//set session attr for test and plithos ask
							session.setAttribute("testnum", "final");
							session.setAttribute("exercise_ans", String.join(",", exercise_ans));							
							
							//update user info!!!
							PreparedStatement prestmt2 = con.prepareStatement(query.updateTestUserInfo(u_email,"final"));
							prestmt2.executeUpdate();
							
							rs.close();
							//emfanise tis askiseis kai to noumero tou test
							request.setAttribute("html",html);
							request.setAttribute("testnum","Τελικό");
							request.getRequestDispatcher("exampage.jsp").forward(request, response);
							}
						else if (score1_arr.get(16).equals("-"))
							{session.setAttribute("final","not");//den mpaineis
							response.sendRedirect("index.jsp");
							}
						
					}
					catch (SQLException | IOException | ServletException e) {
						e.printStackTrace();
					}
				}
				
				//method that checks results of test1
				public void grade_exam(HttpServletRequest request, HttpServletResponse response) {
					try {
						Connection con;
						con = datasource.getConnection();

						//get session attributes
						session=request.getSession();
						String uemail = session.getAttribute("uemail").toString();
						String cchapter = session.getAttribute("cchapter").toString();
						String cpage = session.getAttribute("cpage").toString();
						String uchapter = session.getAttribute("chapter").toString();
						//String upage = session.getAttribute("page").toString();
						//se poio test briskesai
						String testnum = session.getAttribute("testnum").toString();
						//oi antistoixes apantiseis twn ask p ehoun epilexthei
						String exercise_ans = session.getAttribute("exercise_ans").toString();
						
						ArrayList<String> exercise_ans_arr = new ArrayList<String>(Arrays.asList(exercise_ans.split(",")));
						System.out.println(exercise_ans_arr);
						int score =0;
						for (int i=0; i<exercise_ans_arr.size();i++) {
							System.out.println(request.getParameter("answer"+String.valueOf(i+1)));
							if(exercise_ans_arr.get(i).equals(request.getParameter("answer"+String.valueOf(i+1))))
								score++;					
						}
						
						String score1 ="";
						String score2 ="";
						PreparedStatement prestmt = con.prepareStatement(query.getStatistics(uemail));
						ResultSet rs = prestmt.executeQuery();
						if(rs.isBeforeFirst()) {
							while (rs.next()) {
								//pare ta score1, score2
								score1 = rs.getString("score1");
								score2 = rs.getString("score2");
							}
						}
						
						ArrayList<String> score1_arr = new ArrayList<String>(Arrays.asList(score1.split(",")));
						ArrayList<String> score2_arr = new ArrayList<String>(Arrays.asList(score2.split(",")));
						
						PreparedStatement prestmt1 = con.prepareStatement(query.updateStatisticsScores(uemail,String.join(",", score1_arr),String.join(",", score2_arr),String.valueOf(score)));
						prestmt1.executeUpdate();
						
						
						
						session.setAttribute("final", "END");
						response.sendRedirect("index.jsp");			
							
						con.close();
					} catch (SQLException | IOException  e) {
						e.printStackTrace();
					}
					
				}
				
				/**
				 * @see HttpServlet#HttpServlet()
				 */
				public Tutorial() {
					super();

				}

				/**
				 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
				 *      response)
				 */
				protected void doGet(HttpServletRequest request, HttpServletResponse response)
						throws ServletException, IOException {

				}

				/**
				 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
				 *      response)
				 */
				protected void doPost(HttpServletRequest request, HttpServletResponse response)
						throws ServletException, IOException {
					String method = request.getParameter("method");

					/*String remember_me = request.getParameter("remember-me");
					String u_email = request.getParameter("u_email");
					
					if (remember_me != null) {
						if (remember_me.equals("remember-me"))
							{
								c.setValue(u_email);
								c.setMaxAge(24*60*60);
								response.addCookie(c);  // response is an instance of type HttpServletReponse
								System.out.print(c.getValue());
							}
					}*/
					
					if (method.equals("login"))
						login(request,response);
					else if  (method.equals("signup")) 
						signup(request,response);
					else if  (method.equals("insertUser"))
						insertUser(request,response);
					//ola auta anaferontai stin epilogi kefalaiou apo ti plaini stili!!!
					//------------------------
					else if  (method.equals("1")) 
						checkChapter(request,response, "1");
					else if  (method.equals("2")) 
						checkChapter(request,response,"2");
					else if  (method.equals("3"))
						checkChapter(request,response,"3");
					else if  (method.equals("4"))
						checkChapter(request,response,"4");
					else if  (method.equals("5")) 
						checkChapter(request,response, "5");
					else if  (method.equals("6")) 
							checkChapter(request,response, "6");
					else if  (method.equals("7")) 
						checkChapter(request,response, "7");
					else if  (method.equals("8")) 
						checkChapter(request,response, "8");
					else if  (method.equals("9")) 
						checkChapter(request,response, "9");
					else if  (method.equals("10")) 
						checkChapter(request,response, "10");
					else if  (method.equals("11")) 
						checkChapter(request,response, "11");
					else if  (method.equals("12")) 
						checkChapter(request,response, "12");
					else if  (method.equals("13")) 
						checkChapter(request,response, "13");
					else if  (method.equals("14")) 
						checkChapter(request,response, "14");
					else if  (method.equals("15")) 
						checkChapter(request,response, "15");
					else if  (method.equals("16")) 
						checkChapter(request,response, "16");
					else if  (method.equals("17")) 
						checkChapter(request,response, "17");
					else if  (method.equals("18")) 
						checkChapter(request,response, "18");
					else if  (method.equals("19")) 
						checkChapter(request,response, "19");
					//------------------------
					else if (method.equals("<< Previous"))
						goPrevious(request,response);
					else if (method.equals("Next >>"))
						goNext(request,response);
					else if (method.equals("test")) {
						test(request,response);
					}
					else if (method.equals("logout")){
						//c.setMaxAge(0);
						session = request.getSession();
						session.invalidate();
						response.sendRedirect("index.html");
					}
					else if(method.equals("exit")) {
						session.invalidate();
						System.exit(0);
					}
					else if (method.equals("statistics")) {
						statistics(request,response);
					}
					else if (method.equals("vathm_users")) {
						vathm_users(request,response);
					} 
					else if (method.equals("test_index")) {
						test_index(request,response);
					}
					else if (method.equals("check_exam")) {
						check_exam(request,response);
					}
					else if (method.equals("grade_exam")) {
						grade_exam(request,response);
					}
						

				}

				
}