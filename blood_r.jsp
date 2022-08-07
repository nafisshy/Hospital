<%-- 
    Document   : blood_b
    Created on : 20-May-2022, 9:03:27 pm
    Author     : S DUTTA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
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
  <!--Linking vanilla css-->
 <link rel="stylesheet" href="style.css"/>
<!--Importing font awesome -->
 <script src="https://kit.fontawesome.com/ddbd31c09a.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        <h3 style="color:crimson;"><b>Welcome to Inas Hospital Blood Bank</b></h3><br>
        <h4><b>To Donate blood </b><a href="blood_d.jsp">click here</a></h4>
        <h4 style="text-align:center;"><b>Fill the form below to request Blood</b></h4>
        <div class="container">
        <form  class="form-horizontal" action="confirm_bloodr.jsp" onsubmit="return check()">
        <small class="text-danger">*required fields</small><br/>
        <label>First Name<span class="text-danger">*</span><br/>
            <input class="textbox" type="text" name="fname" id="fn" placeholder="Enter your first name" required><br/><br/> 
        </label><br/>
        <label>Last Name<span class="text-danger">*</span><br/> 
            <input type="text"  class="textbox" name="lname" id="ln" placeholder="Enter your last name" required><br/><br/> 
        </label><br/>
        <label>Email<br/>
            <input type="email" class="textbox" name="email" id="email" placeholder="abc123@example.com"><br/><br/> 
        </label><br/>
        <label>Phone Number<span class="text-danger">*</span><br/> 
            <input type="text" class="textbox" name="contact" id="ph" placeholder="eg. 9876543210" title="Must be a 10 digit number" pattern="[7-9]{1}[0-9]{9}" required><br/><br/> 
        </label><br/>
        <fieldset class="row mb-3">
            <label for="bgroup" class="col-form-label col-sm-2">Blood Group<span class="text-danger">*</span></label>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="bgroup" id="gridRadios1" value="A+ve" >
                    <label class="form-check-label" for="gridRadios1">
                        A+ve
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="bgroup" id="gridRadios2" value="B+ve">
                    <label class="form-check-label" for="gridRadios2">
                        B+ve
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="bgroup" id="gridRadios3" value="O+ve" >
                    <label class="form-check-label" for="gridRadios3">
                        O+ve
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="bgroup" id="gridRadios3" value="A-ve" >
                    <label class="form-check-label" for="gridRadios3">
                        A-ve
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="bgroup" id="gridRadios3" value="B-ve" >
                    <label class="form-check-label" for="gridRadios3">
                        B-ve
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="bgroup" id="gridRadios3" value="O-ve" >
                    <label class="form-check-label" for="gridRadios3">
                        O-ve
                    </label>
                </div>
            </div>
        </fieldset> 
        <label>Blood Bags<span class="text-danger">*</span><br/>
            <input type="text" class="textbox" name="amount" id="amt" title="Must be a number" pattern="[1-30]{1}" required><br/><br/>
        </label><br/>
        <label>Requester Address<span class="text-danger">*</span><br/> 
            <textarea type="textarea" class="textbox" name="address" id="add" placeholder="MCN Hospital,maniktala,kolkata" required></textarea><br/><br/>
        </label><br/>
        <div class="text-center" >
        <input type="submit" class="btn btn-block btn-success" value="Submit">
        </form>
        </div>
        </div>
        <script>
            function check()
            {
                alert("Blood Requested!");
            }
        </script>
    </body>
</html>
