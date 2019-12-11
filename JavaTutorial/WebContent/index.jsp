
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="el">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Ena tutorial afieromeno gia tin glossa Java">
  <meta name="author" content="Omadara-Potis-Alex">
  
  <style>
  .submitLink {
  background-color: transparent;
  text-decoration: none;
  border: none;
  color: #909294;
  cursor: pointer;
}
submitLink:focus {
  outline: none;
}
.submitLink2 { 
 background-color: transparent;
  text-decoration: none;
  border: none;
  color: blue;
  cursor: pointer;
}
</style>

<title>Java Tutorial - Αρχική σελίδα</title>

<!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
    	var test1 = $('#final').val();
    	if (test1 === "yep"){
        	$("#finalModal").modal('show');}
    	//else if (test1 === "not")
    		//{$("#notfinalModal").modal('show');}
    });
    
    $('#final_test_form').submit(function() {
    	var test1 = $('#final').val();
    		if (test1 === "not")
    			{$("#notfinalModal").modal('show');
    			return false;}
    		return true;
    		    });
</script>
<script  type="text/javascript">

function formAutoSubmit () {

var frm = document.getElementById("finalscore");
var test1 = $('#final').val();
if (test1 === "END"){
frm.submit();}

}

window.onload = formAutoSubmit;

</script>


</head>

<body id="page-top">
<input type="hidden" id="final" value="<%=session.getAttribute("final")%>">

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="index.jsp">Java Tutorial</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Αναζήτηση.." aria-label="Search" aria-describedby="basic-addon2">
        <div class="input-group-append">
          <button class="btn btn-primary" type="button">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      <!--<li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-bell fa-fw"></i>
          <span class="badge badge-danger">9+</span>
        </a>
         <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div> 
      </li>-->
      <!-- <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-envelope fa-fw"></i>
          <span class="badge badge-danger">7</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li> -->
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Αποσύνδεση</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="help.jsp" id="help" role="button" data-toggle="modal" data-target="#helpModal" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-question-circle"></i>
        </a>
      </li>
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">
          <i class="fas fa-fw fa-home"></i>
          <span>Αρχική</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-book"></i>
          <span>Tutorial</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <h6 class="dropdown-header">Κεφάλαια:</h6>
          <% String n_chap = String.valueOf(session.getAttribute("n_chapters"));
          	int i=1;
          		while (i <= Integer.parseInt(n_chap)) {%>
          <form method="post" action="Tutorial">
		    <input type="hidden" name="method" value="<%=i%>">
		    <input type="submit" class="dropdown-item" value="Κεφάλαιο <%=i%>">
		  </form> 
		  <% i++; } %>
          <!-- <a class="dropdown-item" href="login.jsp"></a>
          <a class="dropdown-item" href="register.jsp">Κεφάλαιο 2</a>
          <a class="dropdown-item" href="forgot-password.html">Κεφάλαιο 3</a>
          <div class="dropdown-divider"></div>
          <h6 class="dropdown-header">Διαγωνίσματα:</h6>
          <a class="dropdown-item" href="404.jsp">Διαγώνισμα Κεφ. 1</a>
          <a class="dropdown-item" href="blank.jsp">Διαγώνισμα Κεφ. 2</a>-->
        </div>  
      </li>
      <li class="nav-item">
      <form method="post" action="Tutorial">
			 	<input type="hidden" name="method" value="statistics">
			 	<a href="#" class="nav-link"><i class="fas fa-fw fa-chart-bar"></i>
			 	<span><button type="submit" class="submitLink">Στατιστικά</button></span></a>
	 </form>
      </li>
      <li class="nav-item">
        <form method="post" action="Tutorial">
			 	<input type="hidden" name="method" value="vathm_users">
			 	<a href="#" class="nav-link"><i class="fas fa-fw fa-table"></i><span><button type="submit" class="submitLink">Βαθμολογίες</button></span></a> <!--  <input type="submit" class="nav-link submitLink" value="Πίνακας Βαθμολογιών"> -->
	 </form>
	 </li>
	
	<li class="nav-item">
        <form method="post" id ="final_test_form" action="Tutorial">
			 	<input type="hidden" name="method" value="check_exam">
			 	<a href="#" class="nav-link"><span><button type="submit" id="final_test" class="submitLink">Τελικό διαγώνισμα</button> </span></a>
	 </form>
	 </li>
    </ul>

<div id="content-wrapper">
      <div class="container-fluid">
      
      <%	
    	//System.out.println(request.getAttribute("warning"));
      	if (request.getAttribute("warning") != null) { 
      		if (request.getAttribute("warning") == "1") {%>
		<div class="alert alert-info alert-dismissible fade show" role="alert">
		  <strong>Μην είσαι ανυπόμονος =(</strong> Ολοκλήρωσε πρώτα τα προηγούμενα κεφάλαια...
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<%	}
      	}
      	%>

			
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Αρχική</a>
          </li>
          <li class="breadcrumb-item active">Σύνοψη</li>
        </ol>

		<%! public static HttpSession session; %>
		<%session = request.getSession(); %>
			
			<%if (session.getAttribute("final") != "END") {
			if (!session.getAttribute("cchapter").toString().equals("0")) { %>
			
			<!--  welcome message jumbotron -->
			<div class="jumbotron">
  <h1 class="display-4">Καλωσόρισες!</h1>
  <p class="lead">Η ομάδα του Java Tutorial σου εύχεται καλό διάβασμα.</p>
</div>
        <!-- Icon Cards-->
        <div class="row">
          <div class="col-xl-6 col-sm-6 mb-3">
            <div class="card text-black bg-light o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-history"></i>
                </div>
                <div class="mr-5">Συνέχεια πρόσφατου κεφαλαίου</div>
              </div>
              <form method="post" action="Tutorial">
			 	<input type="hidden" name="method" value="<%=session.getAttribute("cchapter")%>">
			 	 <div class="card-footer text-black clearfix small z-1">	
			 	 	<span class="float-left">
				 		<button type="submit" class="submitLink2">Πάμε!</button>
				 	</span>
				 	<span class="float-right">
	                  <i class="fas fa-angle-right"></i>
	                </span>
                </div>
			</form> 
			 
            </div>
          </div>
         <%
         Integer howmany2 = Integer.parseInt(String.valueOf(session.getAttribute("howmany_test_again")));
         if (howmany2 != 0) { %>
         <div class="col-xl-6 col-sm-6 mb-3">
            <div class="card text-black bg-light o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-exclamation"></i>
                </div>
                <div class="mr-5">Έχεις άλλη μια ευκαιρία!</div>
                <div class="mr-4">Κάνε ξανά 
					<%
					if (howmany2 > 1) {
					%>
					τα διαγωνίσματα στα Κεφάλαια 
					<% } else { %>
					το διαγώνισμα στο Κεφάλαιο 
					<%}
					for (int j=0; j< howmany2;j++)
					{
						System.out.println(session.getAttribute("test_again"+(j+1)));
						session.setAttribute("testnum",String.valueOf(session.getAttribute("test_again"+(j+1))));%>
						<%= // kefalaio pou vriskomai
						Integer.parseInt(String.valueOf(session.getAttribute("test_again"+(j+1))))+2%>
					
					</div>
                
              </div>
              <form method="post" action="Tutorial">
             	<input type="hidden" name="method" value="test_index">
			 	 <div class="card-footer text-black clearfix z-1">	
			 	 	<span class="float-left">
				 		<!-- submitLink --><button type="submit" class="btn btn-primary">Κεφάλαιο <%=Integer.parseInt(String.valueOf(session.getAttribute("test_again"+(j+1))))+2 %></button>
				 	</span>
                </div>
			</form> 
			 <% }
					%>
            </div>
          </div>
          <%} %>
                
        </div> 
        <div class="col-lg-12">
            <div class="card mb-3">
              <div class="card-header">
                <i class="fas fa-clipboard-list"></i>
                Επισκεψιμότητα</div>
              <div class="card-body text-center">
              Αυτή την <i>εβδομάδα</i> έχεις συνδεθεί στο Java Tutorial <b><%=session.getAttribute("weekly_episkepsi") %></b> φορές. </li>
                <hr>
                <b>Ιανουάριος </b> <%=session.getAttribute("monthly_episkepsiJan")%> <br>
                <b>Φεβρουάριος </b> <%=session.getAttribute("monthly_episkepsiFeb") %> <br>
                <b>Μάρτιος </b> <%=session.getAttribute("monthly_episkepsiMar") %><br>
                <b>Απρίλιος </b><%=session.getAttribute("monthly_episkepsiApr") %><br>
                <b>Μάιος </b><%=session.getAttribute("monthly_episkepsiMay") %><br>
                <b>Ιούνιος </b> <%=session.getAttribute("monthly_episkepsiJun") %><br>
                <b>Ιούλιος </b><%=session.getAttribute("monthly_episkepsiJul") %><br>
                <b>Αύγουστος </b><%=session.getAttribute("monthly_episkepsiAug") %><br>
                <b>Σεπτέμβριος </b><%=session.getAttribute("monthly_episkepsiSep") %><br>
                <b>Οκτώβριος </b><%=session.getAttribute("monthly_episkepsiOct") %><br>
                <b>Νοέμβριος </b><%=session.getAttribute("monthly_episkepsiNov") %><br>
                <b>Δεκέμβριος </b><%=session.getAttribute("monthly_episkepsiDec") %>
               
                </div>
              <div class="card-footer small text-muted">Ενημερώθηκε μόλις τώρα</div>
              </div>
            </div>
       


<% }
else
{%>
	<b><h1>Καλωσόρισες στο Java Tutorial!</h1></b>
Αυτή εδώ θα είναι η αρχική σου σελίδα η οποία θα ανανεώνεται συνεχώς προσφέροντας τόσο την ανάγνωση του πιο πρόσφατου κεφάλαιου που βρισκόσουν, όσο και την επισκεψιμότητά σου στην πλατφόρμα.
<br>
<br>
<h4><i>Μερικές πληροφορίες...</i></h4>
<br>
<i class="fas fa-user-circle "></i> Από εδώ μπορείς να επιλέξεις οποιαδήποτε στιγμή να αποσυνδεθείς
<br>
<i class="fas fa-book"></i>  Εδώ βρίσκονται όλα τα κεφάλαια του Java Tutorial. Προσοχή όμως! Σε περίπτωση που θελήσεις να διαβάσεις ένα κεφάλαιο ενώ δεν έχεις ολοκληρώσει τα προηγούμενα, το σύστημα θα σου απορρίπτει την ανάγνωσή του μέχρι να ολοκληρώσεις τα προηγούμενα κεφάλαια. 
<br>
<i class="fas fa-chart-bar"></i> Εδώ βρίσκονται διάφορα στατιστικά σχετικά με τις επιδόσεις σου, αλλά και την επισκεψιμότητά σου στο Java Tutorial
<br>
<i class="fas fa-table"></i> Κατά τη διάρκεια της εκμάθησης μέσω του Java Tutorial θα έρθεις αντιμέτωπος με διάφορα τεστ προκειμένου να κατανοήσεις τη θεωρία αλλά και στο τέλος να σου απονεμηθεί το πτυχίο που θα περιέχει τη τελική βαθμολογία σου. Συνεπώς, εδώ μπορείς να βρείς τη βαθμολογία που έχεις συγκεντρώσει μέχρι στιγμής.
<br>
<br>
<h2 class="text-center">Aς ξεκινήσουμε!</h2>
<br>
<form method="post" action="Tutorial">
		    <input type="hidden" name="method" value="1">
		    <input type="submit" class="btn btn-primary col-sm-12" value="Κεφάλαιο 1">
		  </form> 
<br>
	<% } 
	}
	else {%>
	<h2> Συγχαρητήρια!</h2> <br>
	<p>Το ταξίδι έφτασε στο τέλος του... </p>
	<br>
	<p> Η προσπάθεια που έκανες ήταν θαυμάσια. Σε ευχαριστούμε πολύ που προτίμησες το Java Tutorial για να μάθεις την γλώσσα προγραμματισμού Java. Η τελική σου βαθμολογία είναι: <br>
	<h1 class="text-center"><%= session.getAttribute("finalscore") %> / <%=3*17+20 %></h1>
	</p>
	
	<%} %>
</div>
      <!-- /.container-fluid -->
      
      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Εκπαιδευτικό Λογισμικό 2019</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Σίγουρα θέλετε να αποσυνδεθείτε?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Επιλέξτε "Αποσύνδεση" εάν είστε σίγουροι.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Ακύρωση</button>
	          <form method="post" action="Tutorial">
		  		  <input type="hidden" name="method" value="logout"> <!--  SOS -->
		  		  <input type="submit" value="Αποσύνδεση" class="btn btn-primary">
	  		  </form>
        </div>
      </div>
    </div>
  </div>


	<!-- Help Modal -->
  <div class="modal fade" id="helpModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-question-circle"></i> Βοήθεια</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div><div class="modal-body"><b><h1>Καλωσόρισες στο Java Tutorial!</h1></b>
<i class="fas fa-fw fa-home"></i> Στην αρχική σελίδα, η οποία ανανεώνεται συνεχώς, προσφέρονται λειτουργίες όπως ανάγνωση του πιο πρόσφατου κεφαλαίου, διεκδίκηση μιας δεύτερης ευκαιρίας σε διαγωνίσματα κεφαλαίων, καθώς και η επισκεψιμότητά σου στο Java Tutorial.
<br>
<br>
<h4><i>Μερικές πληροφορίες...</i></h4>
<br>
<i class="fas fa-user-circle "></i> Από εδώ μπορείς να επιλέξεις οποιαδήποτε στιγμή να αποσυνδεθείς.
<br>
<i class="fas fa-book"></i> Εδώ βρίσκονται όλα τα κεφάλαια του Java Tutorial. Προσοχή όμως! Σε περίπτωση που θελήσεις να διαβάσεις ένα κεφάλαιο ενώ δεν έχεις ολοκληρώσει τα προηγούμενα, το σύστημα θα σου απορρίπτει την ανάγνωσή του μέχρι να ολοκληρώσεις τα προηγούμενα κεφάλαια. 
<br>
<b>Στατιστικά</b></i> Εδώ βρίσκονται διάφορα στατιστικά σχετικά με τις επιδόσεις σου, αλλά και την επισκεψιμότητά σου στο Java Tutorial. Πιο αναλυτικά, τα στατιστικά αυτά αναφέρονται στα άριστα διαγωνίσματά σου (3/3), πόσες φορές έχεις επιτύχει με την πρώτη φορά σε διαγώνισμα και πόσες φορές έχεις επιτύχει με τη δεύτερη.
<br>
<b>Πίνακας Βαθμολογιών</b> Κατά τη διάρκεια της εκμάθησης μέσω του Java Tutorial θα έρθεις αντιμέτωπος με διάφορα τεστ προκειμένου να κατανοήσεις τη θεωρία αλλά και στο τέλος να σου απονεμηθεί το πτυχίο που θα περιέχει τη τελική βαθμολογία σου. Συνεπώς, εδώ μπορείς να βρείς τη βαθμολογία που έχεις συγκεντρώσει μέχρι στιγμής και φυσικά την βαθμολογία, αναλυτικά, σε κάθε διαγώνισμα.
<br>
<hr>
<p> Η λογική του Java Tutorial είναι η εξής: Διαβάζεις ένα-ένα τα κεφάλαια και από το κεφάλαιο 3 και ύστερα διαγωνίζεσαι απαντώντας σε 3 ερωτήσεις. Αν με την πρώτη προσπάθειά σου συγκεντρώσεις 3/3 βαθμούς τότε παίρνεις Άριστα. Σε κάθε άλλη περίπτωση σου δίνεται μια δεύτερη ευκαιρία να βελτιώσεις τον βαθμό σου, οποιαδήποτε στιγμή θελήσεις, καθώς με το που μεταφερθείς στη δεύτερη προσπάθεια ένα μήνυμα σε παραπέμπει στη θεωρία του συγκεκριμένου κεφαλαίου. Εάν πάλι επιλέξεις κάποια άλλη στιγμή να 
κάνεις το διαγώνισμα, ή τα διαγωνίσματα κεφαλάιων στα οποία δεν αρίστευσες, μην ανησυχείς καθώς υπάρχει αντίστοιχη ενότητα στην αρχική που μπορεί άμεσα να σε παραπέμψει. Σε περίπτωση που θελήσεις να επιλέξεις ένα κεφάλαιο από την πλαϊνή στήλη ενώ δεν έχεις ολοκληρώσει το διαγώνισμα του προηγουμένου, ένα μήνυμα στην αρχική σε ενημερώνει γιατί αδυνατείς να αποκτήσεις πρόσβαση.
Η αρχική σελίδα έχει δημιουργηθεί με τέτοιο τρόπο ώστε να υπάρχει ευελιξία στη μάθηση. 


</div>
        <div class="modal-footer">
         <h2 class="text-center">Καλό διάβασμα!</h2>
        </div>
      </div>
    </div>
  </div>
  
        

<!--  Final Modal -->
  <div class="modal fade" id="finalModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-trophy"></i> Συγχαρητήρια!</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Mόλις ολοκλήρωσες όλα τα διαγωνισματα του Java Tutorial! Ετοιμάσου τώρα για το τελικό διαγώνισμα που θα καθορίσει την συνολική σου επίδοση στο Java Tutorial. Είσαι ένα βήμα πριν το πτυχίο! Βάλε τα δυνατά σου...</div>
        </div>
        </div>
        </div>
        
       
        
        <!-- NOT Final Modal -->
  <div class="modal fade" id="notfinalModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-trophy"></i> Μην βιάζεσαι...</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body"> Δεν μπορείς ακόμη να αποκτήσεις πρόσβαση στο τελικό διαγώνισμα... Κάνε πρώτα τα υπόλοιπα διαγωνίσματα των κεφαλαίων!</div>
        </div>
        </div>
        </div>
        
        


  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <script src="js/demo/chart-area-demo.js"></script>
 

</body>

</html>

