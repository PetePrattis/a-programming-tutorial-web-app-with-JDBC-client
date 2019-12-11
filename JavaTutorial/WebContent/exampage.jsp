<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="tutorial_content">
  <meta name="author" content="OmadaraPotisAlex">

  <title>Java Tutorial - Διαγώνισμα</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

<style>
  .submitLink {
  background-color: transparent;
  text-decoration: none;
  /*font-weight: bold;*/
  border: none;
  color: #909294;
  cursor: pointer;
}
submitLink:focus {
  outline: none;
}
</style>
</head>
<body id="page-top">

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

      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Αποσύνδεση</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="help.jsp" id="help" role="button" aria-haspopup="true" aria-expanded="false">
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
			<!-- <a class="dropdown-item" href="login.jsp">Κεφάλαιο 1</a>
          <a class="dropdown-item" href="register.jsp">Κεφάλαιο 2</a>
          <a class="dropdown-item" href="forgot-password.html">Κεφάλαιο 3</a> -->
          <!-- <div class="dropdown-divider"></div>
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
        <form method="post" action="Tutorial">
			 	<input type="hidden" name="method" value="check_exam">
			 	<a href="#" class="nav-link"><span><button type="submit" class="submitLink">Τελικό διαγώνισμα</button> </span></a>
	 </form>
	 </li>
    </ul>

    <div id="content-wrapper">

      <div class="container-fluid">

<%	
    	//System.out.println(request.getAttribute("warning"));
      	if (request.getAttribute("2ndchance") != null) { 
      		if (request.getAttribute("2ndchance") == "1") {%>
		<div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>Έχεις ακόμη μια προσπάθεια!</strong> Μπορείς να τα καταφέρεις... Σε περίπτωση που θες να ξαναδιαβάσεις την θεωρία του <%= session.getAttribute("cchapter")%>
		   κεφαλαίου πάτα 
		   <form method="post" action="Tutorial">
		    <input type="hidden" name="method" value="<%=session.getAttribute("cchapter")%>">
		    <input type="submit" class="submitLink" value="εδώ">
		</form> 
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
            <a href="index.jsp">Αρχική</a>
          </li>
          <li class="breadcrumb-item active">Java Tutorial - Διαγώνισμα <%= session.getAttribute("testnum") %> </li>
        </ol>

        <!-- Page Content -->
		<form method="post" action="Tutorial">
			<input type="hidden" name="method" value="grade_exam">
			<%= request.getAttribute("html") %>
	  		<input type="submit" value="Υποβολή" class="btn btn-primary btn-block">
		</form> 

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

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

</body>

</html>
