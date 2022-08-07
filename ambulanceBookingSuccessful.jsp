<%-- 
    Document   : ambulanceBookingSuccessful
    Created on : 09-Apr-2022, 10:37:37 am
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ambulance Booking Successful Page</title>
        <!--Bootstrap 5-->
        
         <!-- Importing bootstrap -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Bootstrap import finished -->
  <!--Linking vanilla css-->
 <link rel="stylesheet" href="style.css"/>
 <!--Importing font awesome -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://kit.fontawesome.com/ddbd31c09a.js" crossorigin="anonymous"></script>
 <!-- Font awesome imported -->
 
    </head>
    <body>
         <!--Authorized Header Begins Here -->
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
        <li class=""><a href="home.jsp">Home</a></li>
       
        <li class=""><a href="bookappointment.jsp">Book Appointment</a></li>
        <li class="active"><a href="bookambulance.jsp">Book Ambulance</a></li>
        <li class=""><a href="booktest.jsp">Book Test</a></li>
        <li class=""><a href="bloodBank.jsp">Blood Bank</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditUser.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="cancel.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
        </header>
         <!-- Header Ends here -->
         <div class="text-center">
       <!--Animated Check-mark-->
       <i class="fa-solid fa-circle-check zoom-in"></i>
       <!--Animated Check mark ends here-->
       
       <strong>
           <h2 class="text-success">Booking Successful!</h2>
           <h3 class="text-success">Your Ambulance is on the way!</h3>
       </strong></div>
           <i class="text-success fa fa-solid fa-ambulance slide-right"></i>
      
       
        
    </body>
</html>
