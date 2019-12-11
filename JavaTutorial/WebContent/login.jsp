<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <!-- <input type="submit" value="Log in"> -->

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Java Tutorial - Σύνδεση</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Σύνδεση</div>
      <div class="card-body">
        <form method="post" action="Tutorial">
  		  <input type="hidden" name="method" value="login"> <!--  SOS -->
          <div class="form-group">
            <div class="form-label-group">
              <input type="email" name="u_email" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
              <label for="inputEmail">Email</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="password" name="u_pass" id="inputPassword" class="form-control" placeholder="Password" required="required">
              <label for="inputPassword">Κωδικός</label>
            </div>
          </div>
          
          
  		  <input type="submit" value="Σύνδεση" class="btn btn-primary btn-block" > <!-- href="index.jsp"> -->
          <!-- <a class="btn btn-primary btn-block" href="index.html">Σύνδεση</a>
         -->
         </form>
         
        <div class="text-center">
        
        <hr>
		<!-- <form method="post" action="Tutorial">
  			<input type="hidden" name="method" value="signup">
 		    <input type="submit" class="d-block small mt-3" href="register.html" value="Εγγραφή">
		</form> -->
		<a class="d-block small mt-3" href="register.jsp"> Εγγραφή</a>
		<!-- <form method="post" action="Tutorial">
 			<input type="hidden" name="method" value="exit">
  			<input type="submit"  class="d-block small" value="Έξοδος" onclick="javascript:window.close();">
		</form> 
		 -->
		<!-- <a class="d-block small" href="forgot-password.html">Ξεχάσατε τον κωδικό?</a> -->

        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
