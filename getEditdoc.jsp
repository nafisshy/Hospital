<%-- 
    Document   : getEditdoc
    Created on : 16-Jun-2022, 9:55:23 am
    Author     : Sadique Eqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
 <script src="https://kit.fontawesome.com/ddbd31c09a.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <!-- Font awesome imported -->
        <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%> 
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
                            <li class=""><a href="Doctor.jsp">Home</a></li>
                            <li class=""><a href="view_patient.jsp">Patient</a></li>

                        </ul>

                        <ul class="nav navbar-nav navbar-right">

                            <li class=""><a href="canceldoc.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                        </ul>
                    </div>


                </div>
            </nav>
        </header>
        <!-- header ends here--->
         <%
            try{
             String email=(String)session.getAttribute("email1");
                                   
            String url="jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital";
            String username="admin";
            String password="RdsHospital1!";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
           System.out.println("Connected success");
           Statement st=con.createStatement();
           System.out.println("Statement Created");
           
           String query = "select d_id,dname,dob,gender,ph_no,address,pass from doc_registration where email=\""+email+"\"";
           ResultSet r= st.executeQuery(query);
           r.next();
            String id= r.getString("d_id");
           String dname = r.getString("dname");
            String dob= r.getString("dob");
             String gender = r.getString("gender");
              String ph_no = r.getString("ph_no");
             
              String address= r.getString("address");
              String pass = r.getString("pass");
             
              
              session.setAttribute("id", id);
                                   
           
          
        %>
        <div class="container">
            <h2><b> EDIT DOCTOR</b></h2><br>
            <form action="savedoc.jsp" id="f1" onclick="return check()" method="post" >
                
                <div class="row mb-3">
                    <label for="name" class="col-sm-2 col-form-label">Edit Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="name" id="name" value="<%out.print(dname);%>" required="">
                    </div>
                </div>
                <br>
                <div class="row mb-3">
                    <label  for="ph_no" class="col-sm-2 col-form-label">Edit Date Of Birth</label>
                    <div class="col-sm-10">
                        <input class="form-control" name="dob" type="date"  id="dob" value="<%out.print(dob);%>" required="">

                    </div>
                </div>
                <br>

                <fieldset class="row mb-3">
                    <label for="gender" class="col-form-label col-sm-2">Edit Gender</label>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="Male" <%if(r.getString("gender").equals("Male")){ %>checked<% } %>>
                            <label class="form-check-label" for="gridRadios1">
                                Male
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="Female" <% if(r.getString("gender").equals("Female") ){ %>checked<% } %>>
                            <label class="form-check-label" for="gridRadios2">
                                Female
                            </label>
                        </div>
                        <div class="form-check disabled">
                            <input class="form-check-input" type="radio" name="gender" id="gridRadios3" value="Others" <% if(r.getString("gender").equals("Others")){ %>checked<% } %> >
                            <label class="form-check-label" for="gridRadios3">
                                Others
                                
                            </label>
                        </div>
                    </div>
                </fieldset>
                <br>
               
                

                <div class="row mb-3">
                    <label  for="ph_no" class="col-sm-2 col-form-label">Edit Phone Number</label>
                    <div class="col-sm-10">
                        <input class="form-control" name="ph_no" type="text"  id="ph_no" value="<%out.print(ph_no);%>" required="" pattern="^[9|8|7][0-9]{9}" title="Must Be A Ten Digit Indian Number">

                    </div>
                </div>
                <br>
                <div class="row mb-3">
                    <label for="email" class="col-sm-2 col-form-label">Edit Email</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" name="email" id="email" value="<%out.print(email);%>" required  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter a valid email.">
                    </div>
                </div>
                <br>
                <div class="row mb-3">
                    <label for="addr" class="col-sm-2 col-form-label">Edit Address</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="text" name="addr" id="addr" value="<%out.print(address);%>" required="">
                    </div>
                </div>
                <br>
                <div class="row mb-3">
                    <label for="addr" class="col-sm-2 col-form-label">Edit Password</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="password" name="pass" id="pass" value="<%out.print(pass);%>"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="">
                    </div>
                </div>
                <br>

                


                <div class="row mb-3">
                    <label for="pass" class="col-sm-2 col-form-label">Confirm Password:</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" name="cpass" id="cpass"  value="<%out.print(pass);%>" required="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                               title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </div>
                </div>
                <br>


                <br><br>

                <div class="text-center">
                    <button type="submit" class="btn btn-block btn-success" >SUBMIT</button>

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
                
            }
        </script>
    </body>
</html>
