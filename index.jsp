<%-- 
    Document   : deks.jsp
    Created on : 29-Mar-2022, 11:25:01 am
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!-- Importing bootstrap -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Bootstrap import finished -->
  <!--Linking vanilla css-->
 <link rel="stylesheet" href="style.css"/>
 <!--Importing font awesome -->
 <script src="https://kit.fontawesome.com/ddbd31c09a.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <!-- Font awesome imported -->
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
        <li class="active"><a href="#">Login</a></li>
        <li class=""><a href="about.jsp">About</a></li>
        <li class=""><a href="#" onclick="loginAlert();">Book Ambulance</a></li>
        <li class=""><a href="#" onclick="loginAlert();">Blood Bank</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="registration.jsp"><span class="glyphicon glyphicon-user"></span> SignUp</a></li>
        <li class=""><a href="adminlogin.jsp"><span class="fa fa-solid fa-user-shield" style="color:#5cb85c"></span> Admin</a></li>
        </ul>
        </ul>
         </header>
        <!--Header ends Here-->
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    
                        <div class="card-body text-center">
                            <h2 class="card-title">User Login</h2>
                            <span class="fa fa-user" style="font-size:200px;"></span>
                            <form action="login.jsp" method="post">
                                <label>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="email" placeholder="Enter email"></label>
                                <label>Password: <input type="password" name="pass" placeholder="Enter Password"></label>
                                <br/>
                                <input type="submit" value="Login" name="" class="btn btn-success btn-block">
                                </form>
                            <a href="registration.jsp" class="text-info">New Registration? </a>
                        </div>
                    
                </div>
                <div class="col-sm-2">
                <hr>
                </div>
                <div class="col-sm-5">
                    <div class="card-body text-center">
                        <h2 class="card-title">Doctor Login</h2>
                        <span class="fa fa-user-md" style="font-size:200px;"></span>
                        <form action="Login1.jsp" method="post">
                            <label>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="" type="email" name="email1" placeholder="Enter email"></label>
                    <label>Password: <input class="" type="password" name="pass1" placeholder="Enter Password"></label>
                    <br/>
                    <input type="submit" value="Login" name="" class="btn btn-success btn-block">
                    </form>
                        
                      </div>
                </div>
            </div>  
        </div>
        <script>function loginAlert(){
            alert("Please Login first!");
        }</script>
    </body>
</html>
