<%-- 
    Document   : patient_form
    Created on : 20-Apr-2022, 10:56:36 am
    Author     : S DUTTA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration  Page</title>
        <!-- Importing bootstrap -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Bootstrap import finished -->
  <!-- Custom css -->
  <link rel="stylesheet" href="style.css"/>
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
        <li class=""><a href="home.jsp">Home</a></li>
       
        <li class="active"><a href="bookappointment.jsp">Book Appointment</a></li>
         <li class=""><a href="about.jsp">About</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="cancel.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
         </header>
        <h1><b>Fill Details to Book Appointment</b></h1>
        <div class="container">
        <form  class="form-horizontal" action="confirm_patient.jsp" onsubmit="return check()">
        <small class="text-danger">*required fields</small><br/>
         <input type="text" style="display:none;" name="did" value="<%=request.getParameter("did")%>">
        <label>First Name<span class="text-danger">*</span><br/>
            <input class="textbox" type="text" name="fname" id="fn" placeholder="Enter your first name" required><br/><br/> 
        </label><br/>
        <label>Last Name<span class="text-danger">*</span><br/> 
            <input type="text"  class="textbox" name="lname" id="ln" placeholder="Enter your last name" required><br/><br/> 
        </label><br/>
  
        <label>Phone Number<span class="text-danger">*</span><br/> 
            <input type="text" class="textbox" name="contact" id="ph" placeholder="eg. 9876543210" title="Must be a 10 digit number" pattern="[7-9]{1}[0-9]{9}" required>
            <small  class="form-text text-muted">
  Your phone number must be a 10 digit Indian number.
</small<br/><br/> 
        </label><br/>
        <label>Age<span class="text-danger">*</span><br/> 
            <input type="text" class="textbox" name="age" id="age" placeholder="6m or 30y" pattern="[1-130]{1|2|3}[m|y]{1}" required><br/><br/> 
        </label><br/>
        <fieldset class="row mb-3">
            <label for="gender" class="col-form-label col-sm-2">Gender<span class="text-danger">*</span></label>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="Male" >
                    <label class="form-check-label" for="gridRadios1">
                        Male
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="Female">
                    <label class="form-check-label" for="gridRadios2">
                        Female
                    </label>
                </div>
                <div class="form-check disabled">
                    <input class="form-check-input" type="radio" name="gender" id="gridRadios3" value="Others" >
                    <label class="form-check-label" for="gridRadios3">
                        Others
                    </label>
                </div>
            </div>
        </fieldset>        
        <label>Address<span class="text-danger">*</span><br/> 
            <textarea type="textarea" class="textbox" name="address" id="add" placeholder="21, Rajani Sen Road, Kolkata-700029." required></textarea><br/><br/>
        </label><br/>
        <label>Medical History<span class="text-danger"></span><br/> 
            <textarea type="textarea" class="textbox" name="mhist" id="hist" placeholder=""></textarea><br/><br/>
        </label><br/>
        <div class="text-center" >
        <input type="submit" class="btn btn-block btn-success" value="Submit">
        </form>
        </div>
        </div>
        <script>
            function check()
            {
                alert("Appointment booked!");
            }
        </script>
    </body>
</html>
