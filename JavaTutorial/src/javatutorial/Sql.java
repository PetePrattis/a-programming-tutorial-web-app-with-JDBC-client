package javatutorial;

public class Sql {
	public String loginUser(String u_email, String u_pass) {
		String s = "SELECT * FROM users WHERE u_pass='" + u_pass + "'AND u_email='" + u_email + "';";
		return(s);
	}
	
	public String uniqueUser(String u_email) {
		String s = "select case when u_email='"+u_email+"'then 'YES' else 'NO' end from users;";
		return(s);
	}
	
	public String insertUser(String u_name,String u_email, String u_pass) {
		String chapter = "0";
		String page = "0";
		String test = "0";
		String cur_chapter = "0";
		String cur_page = "0";
		String s = "INSERT INTO users(u_name,u_email,u_pass,chapter,page,test,cur_chapter,cur_page) VALUES ('"+u_name+"','"+u_email+"','"+ u_pass+"','"+chapter+"','"+page+"','"+test+"','"+cur_chapter+"','"+cur_page+"');";
		return(s);
	}
	
	public String getChapterInfo(String chapter) {
		String s = "";
		if (chapter.equals("1"))
			s = "select * from chapter1;";
		else if (chapter.equals("2"))
			s = "select * from chapter2;";
		else if (chapter.equals("3"))
			s = "select * from chapter3;";
		else if (chapter.equals("4"))
			s = "select * from chapter4;";
		else if (chapter.equals("5"))
			s = "select * from chapter5;";
		else if (chapter.equals("6"))
			s = "select * from chapter6;";
		else if (chapter.equals("7"))
			s = "select * from chapter7;";
		else if (chapter.equals("8"))
			s = "select * from chapter8;";
		else if (chapter.equals("9"))
			s = "select * from chapter9;";
		else if (chapter.equals("10"))
			s = "select * from chapter10;";
		else if (chapter.equals("11"))
			s = "select * from chapter11;";
		else if (chapter.equals("12"))
			s = "select * from chapter12;";
		else if (chapter.equals("13"))
			s = "select * from chapter13;";
		else if (chapter.equals("14"))
			s = "select * from chapter14;";
		else if (chapter.equals("15"))
			s = "select * from chapter15;";
		else if (chapter.equals("16"))
			s = "select * from chapter16;";
		else if (chapter.equals("17"))
			s = "select * from chapter17;";
		else if (chapter.equals("18"))
			s = "select * from chapter18;";
		else if (chapter.equals("19"))
			s = "select * from chapter19;";
		return(s);
	}
	
	public String updateUserReadingProgress(String u_email, String chapter, String page, String cur_chapter, String cur_page) {
		String s = "UPDATE users SET chapter='"+chapter+"', page='"+page+"', cur_chapter='"+ cur_chapter+"', cur_page='"+cur_page+"' WHERE u_email='"+u_email+"'";
		return(s);
	}
	
	public String updateTestUserInfo (String u_email,String test_num)
	{
		String s= "UPDATE users SET test='"+ test_num + "' where u_email = '" + u_email+ "';";
		return (s);
	}
	
	public String getMoocInfo ()
	{
		String s= "Select * from mooc_info where name ='Java Tutorial';";
		return (s);
	}
	
	public String getExamInfo ()
	{
		String s= "Select * from exam;";
		return (s);
	}
	
	
	public String getTestInfo(String test) {
		String s = "";
		if (test.equals("1"))
			s = "select * from test1;";
		else if (test.equals("2"))
			s = "select * from test2;";
		else if (test.equals("3"))
			s = "select * from test3;";
		else if (test.equals("4"))
			s = "select * from test4;";
		else if (test.equals("5"))
			s = "select * from test5;";
		else if (test.equals("6"))
			s = "select * from test6;";
		else if (test.equals("7"))
			s = "select * from test7;";
		else if (test.equals("8"))
			s = "select * from test8;";
		else if (test.equals("9"))
			s = "select * from test9;";
		else if (test.equals("10"))
			s = "select * from test10;";
		else if (test.equals("11"))
			s = "select * from test11;";
		else if (test.equals("12"))
			s = "select * from test12;";
		else if (test.equals("13"))
			s = "select * from test13;";
		else if (test.equals("14"))
			s = "select * from test14;";
		else if (test.equals("15"))
			s = "select * from test15;";
		else if (test.equals("16"))
			s = "select * from test16;";
		else if (test.equals("17"))
			s = "select * from test17;";

		return(s);
	}

	public String insertUserStatistics(String u_email, String scores) {
		String score = "-";
		String s = "INSERT INTO statistics(u_email,score1,score2,scoref) VALUES ('"+u_email+"','"+scores+"','"+ scores+"','"+score+"');";
		return(s);
	}
	
	public String getStatistics(String u_email) {
		String s = "SELECT * FROM statistics WHERE u_email = '" + u_email+ "';";
		return(s);
	}
	
	public String updateStatisticsScores(String u_email, String score1, String score2, String scoref) {
		String s = "UPDATE statistics SET score1='"+score1+"', score2='"+score2+"', scoref='"+scoref+"' WHERE u_email='"+u_email+"'";
		return(s);
	}

	public String insertMonthly(String u_email) {
		String s = "INSERT INTO monthly (u_email,counter1,counter2,counter3,counter4,counter5,counter6,counter7,counter8,counter9,counter10,counter11,counter12) values ('"+u_email+"','0','0','0','0','0','0','0','0','0','0','0','0');";
		return(s);
	}
	
	public String getMonthly(String u_email) {
		String s = "SELECT * FROM monthly WHERE u_email = '" + u_email+ "';";
		return(s);
	}
	
	public String updateMonthly(String u_email, int month, int counter) {
		String s ="";
		if (month == 1)
			s = "UPDATE monthly SET counter1='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 2)
			s = "UPDATE monthly SET counter2='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 3)
			s = "UPDATE monthly SET counter3='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 4)
			s = "UPDATE monthly SET counter4='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 5)
			s = "UPDATE monthly SET counter5='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 6)
			s = "UPDATE monthly SET counter6='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 7)
			s = "UPDATE monthly SET counter7='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 8)
			s = "UPDATE monthly SET counter8='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 9)
			s = "UPDATE monthly SET counter9='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 10)
			s = "UPDATE monthly SET counter10='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 11)
			s = "UPDATE monthly SET counter11='"+counter+"' WHERE u_email='"+u_email+"'";
		else if (month == 12)
			s = "UPDATE monthly SET counter12='"+counter+"' WHERE u_email='"+u_email+"'";
		
		return(s);
	}
	
	public String insertWeekly(String u_email, int weekofyear) {
		String s = "INSERT INTO weekly (u_email,weekofyear,counter) values ('" + u_email+ "','" + weekofyear+ "',1);";
		return(s);
	}
	
	public String getWeekly(String u_email) {
		String s = "SELECT * FROM weekly WHERE u_email = '" + u_email+ "';";
		return(s);
	}
	
	public String updateWeekly(String u_email,int weekofyear, int counter) {
		String s = "UPDATE weekly SET counter='"+counter+"', weekofyear='"+weekofyear+"' WHERE u_email='"+u_email+"'";
		return(s);
	}
	

}
