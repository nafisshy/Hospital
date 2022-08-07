<%-- 
    Document   : about2.jsp
    Created on : 02-Apr-2022, 8:12:46 am
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Page</title>
         <!-- Importing bootstrap -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Bootstrap import finished -->
  <!--Linking vanilla css-->
 <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <!--Header Unauthorized Begins Here -->
        <header>
        <nav class="navbar navbar-default">
  <div class="container-fluid">
       
    <div class="navbar-header">
      
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp&nbsp&nbsp Inas Hospital</a>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class=""><a href="index.jsp">Login</a></li>
        <li class="active"><a href="">About</a></li>
        <li class=""><a href="#">Departments</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="registration.jsp"><span class="glyphicon glyphicon-user"></span> SignUp</a></li>
        </ul>
        </ul>
         </header>
        <!--Header ends Here-->
         <!--About Us-->
       <div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
        <h2 class="greenify">About Inas Hospital</h2><br>
      <h4>Our Hospital was established in 1982. It was founded by Nobel laureate Dr. Indrani Rana(Ph.D Neuroscience, University of Oxford, London, England. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-plus-sign logo"></span>
    </div>
  </div>
</div>
       <!--FOOTER-->
       <footer id="footer">  
<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center text-success">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
        <p class="text-success">Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Kolkata, India</p>
      <p><span class="glyphicon glyphicon-bed"></span> Ambulance +91 1515151515</p>
      <p><span class="glyphicon glyphicon-phone-alt"></span> +91 9898989898</p>
      <p><span class="glyphicon glyphicon-envelope"></span> contact@inashospital.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-success pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>
       </footer>
    </body>
</html>
