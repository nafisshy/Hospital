<%-- 
    Document   : getEditAdmin.jsp
    Created on : 22-Apr-2022, 10:01:40 am
    Author     : sadiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Details</title>
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
                            <li class=""><a href="admin.jsp">Home</a></li>
                                                        <li class=""><a href="about.jsp">About</a></li>


                        </ul>
                        <ul class="nav navbar-nav navbar-right">
        
        <li class=""><a href="canceladmin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>

                    </div> 
                    
                </div>
                        </header>
                        <!-- header ends here--->
        <%
try{
String url="jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital";
String username="admin";
String password="RdsHospital1!";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,username,password);
System.out.println("Connected success");
Statement st=con.createStatement();
System.out.println("Statement Created");
String email=(String)session.getAttribute("email");
String query = "select first_name,last_name,pass from admin_registration where email=\""+email+"\"";
ResultSet r= st.executeQuery(query);
r.next();
String fname = r.getString("first_name");
String lname = r.getString("last_name");
           
String pass = r.getString("pass");
          
        %>
        <div class="container">
            <h2><b>EDIT PROFILE</b></h2><br>
            <form action="saveadmin.jsp" name="f1" id="f1" onsubmit="return check()" >

                <span class="text-success">YOU CAN EDIT YOUR NAME,EMAIL AND PASSWORD</span><BR><BR>
                <div class="row mb-3">
                    <label for="fname" class="col-sm-2 col-form-label">Edit First Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="fname" id="fname"  value="<%out.print(fname); %>" required>
                    </div>
                </div>
                <br>

                <div class="row mb-3">
                    <label for="lname" class="col-sm-2 col-form-label">Edit Last Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="lname" id="lname"  value="<%out.print(lname); %>"required>
                    </div>
                </div>
                <br>
                <div class="row mb-3">
                    <label for="name" class="col-sm-2 col-form-label"> Edit Email<span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" name="email" id="email" value="<%out.print(email);%>" required  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter a valid email">
                    </div></div><br>

                <div class="row mb-3">
                    <label for="pass" class="col-sm-2 col-form-label">Edit Password:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="pass" id="pass"  value="<%out.print(pass); %>" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                               title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </div>
                </div>
                <br>
                <div class="row mb-3">
                    <label for="pass" class="col-sm-2 col-form-label">Confirm Password:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="cpass" id="cpass"  value="<%out.print(pass); %>" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                               title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </div>
                </div>
                <br>
                <br><!-- comment -->
                <div class="text-center">
                    <button type="submit" class="btn-btn-block btn-success" >SUBMIT</button>

                </div>
            </form>
        </div>
        <% }
catch(Exception e){
out.print(e);
//response.sendRedirect(deks.jsp);
}
        %>
        <script>
            function check() {
                const pass = document.getElementById("pass").value;
                const cpass = document.getElementById("cpass").value;
                if (pass !== cpass) {
                    alert("Your password mismatched");
                    document.f1.pass.focus();
                    return false;
                }
                return true;
            }
        </script>

    </body>
</html>
