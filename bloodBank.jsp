<%-- 
    Document   : bloodBank
    Created on : 19-Jun-2022, 4:57:15 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blood Bank</title>
        <!-- Importing bootstrap -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Bootstrap import finished -->
  <!--Importing font awesome -->
 <script src="https://kit.fontawesome.com/ddbd31c09a.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <!-- Font awesome imported -->
  <!--Linking vanilla css-->
 <link rel="stylesheet" href="style.css"/>
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
        <li class=""><a href="bookambulance.jsp">Book Ambulance</a></li>
        <li class=""><a href="booktest.jsp">Book Test</a></li>
        <li class="active"><a href="#">Blood Bank</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditUser.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="cancel.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
        </header>
         <!-- Header Ends here -->
       <div class='container text-center' style="width:70%; margin-top: 25vh;">
                <div class="card col-sm-6" style="margin-bottom: 10px;">
                    <div class="card-body text-center ">
                        <a href='blood_r.jsp'>
                            <span class="fa solid fa-droplet" style="font-size:120px; margin-top:25px; color: #28A745;">
                            </span><br><span class=" text-success ">Request Blood</span>
                        </a>
                    </div>
                 </div>
           
                <div class="card col-sm-6" style="margin-top: 30px; margin-bottom: 10px;">
                    <div class="card-body text-center  ">
                        <a href='blood_d.jsp'>
                            <span class="fa fa-solid fa-hand-holding-medical " style="font-size:115px; color: #28A745">
                            </span><br> <span class=" text-success ">Donate Blood</span>
                        </a>
                    </div>
                 </div>
                
            </div>
    </body>
</html>
