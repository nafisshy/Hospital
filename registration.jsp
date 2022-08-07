<%-- 
    Document   : Registration.jsp
    Created on : 29-Mar-2022, 11:25:41 am
    Author     : ADMIN
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
        <div class="container">
        <a href="index.jsp" class="text-info">back to login</a>
        <h1>User Registration Form</h1>
        <form  class="form-horizontal" action="confirmRegistration.jsp" onsubmit="return check()">
        <small class="text-danger">*required fields</small><br/>
        <label>First Name<span class="text-danger">*</span><br/>
            <input class="textbox" type="text" name="fname" value id="fn" placeholder="Enter your first name" required><br/><br/> 
        </label><br/>
        <label>Last Name<span class="text-danger">*</span><br/> 
            <input type="text"  class="textbox" name="lname" id="ln" placeholder="Enter your last name" required><br/><br/> 
        </label><br/>
        <label>Email<br/>
            <input type="email" class="textbox" name="email" id="email" placeholder="abc123@example.com" required><br/><br/> 
        </label><br/>
        <label>Phone Number<span class="text-danger">*</span><br/> 
            <input type="text" class="textbox" pattern="^[9|8|7][0-9]{9}" title="Must Be A Ten Digit Indian Number" name="contact" id="ph" placeholder="eg. 9876543210" required><br/><br/> 
        </label><br/>
        <label>Date Of Birth<span class="text-danger">*</span><br/> 
            <input type="date" class="textbox" name="dob" id="dob" required><br/><br/> 
        </label><br/>
        <label>Address<span class="text-danger">*</span><br/> 
            <textarea type="textarea" class="textbox" name="address" id="add" placeholder="21, Rajani Sen Road, Kolkata-700029." required></textarea><br/><br/>
        </label><br/>
        <label>Password<span class="text-danger">*</span><br/>
            <input type="password" class="textbox" name="password" id="pass" placeholde="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br/>
        </label>
        <small  class="form-text text-muted">Your password must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</small><br/>
        <br/>
        <label>Confirm Password<span class="text-danger">*</span><br/>
            <input type="password" class="textbox" name="cpass" id="cpass"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Enter password again" required><br/>
        </label>
        <small  class="form-text text-muted">Your password must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</small>
        <br/>
        <br/>
        <div class="text-center" >
        <input type="submit" class="btn btn-block btn-success" value="Submit">
        </form>
        </div>
        </div>
        <script>
            function check(){
                const pass=document.getElementById("pass").value;
                const cpass=document.getElementById("cpass").value;
                if(pass!==cpass){
                    alert("Your password mismatched");
                    return false;
                }
                return true;
            }
        </script>
        
    </body>
</html>
