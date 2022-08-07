<%-- 
    Document   : admin_registration.jsp
    Created on : 12-Apr-2022, 10:19:34 am
    Author     : sadiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Registration</title>
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
        <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%> 

    </head>
    <body>

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
                            <li class=""><a href="admin.jsp">Home</a></li>
                            <li class=""><a href="viewComplaints.jsp">Feedback</a></li>
                            <li class=""><a href="view_patient_admin.jsp">Patient</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
        
        <li class=""><a href="canceladmin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>

                    </div> 
                    
                </div>
                        </header>
        <!-- header ends here--->
        <div class="container">
            <h2><b>ADMIN REGISTRATION</b></h2><br>
            <form action="check_admin_reg.jsp" name="f1" >
                <small class="text-danger">*required fields</small><br/>
                <div class="row mb-3">
                    <label for="fname" class="col-sm-2 col-form-label"> First Name<span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="fname" id="fname" placeholder="TANIA " required>
                    </div>
                </div>
                <br>

                <div class="row mb-3">
                    <label for="lname" class="col-sm-2 col-form-label"> Last Name<span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="lname" id="lname" placeholder="SINGH" required>
                    </div>
                </div>
                <br>

                <div class="row mb-3">
                    <label for="name" class="col-sm-2 col-form-label"> Email<span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" name="email" id="email" placeholder="abc01@gmail.com" required  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter a valid email">
                    </div>
                </div>
                <br>

                <div class="row mb-3">
                    <label for="pass" class="col-sm-2 col-form-label"> Password<span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="pass" id="pass" placeholder="" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                               title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </div>
                </div>
                <br>
                <br><!-- comment -->
                <div class="text-center">
                    <button type="submit" class="btn-btn-block btn-success" onclick="">SUBMIT</button>

                </div>
            </form>
        </div>
    </body>
</html>
