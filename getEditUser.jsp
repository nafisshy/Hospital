<%-- 
    Document   : getEditUser
    Created on : 20-Apr-2022, 11:38:49 am
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%>
        <!-- Importing bootstrap -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Bootstrap import finished -->
  <!-- Custom css -->
  <link rel="stylesheet" href="style.css"/>
        <title>Edit User Page</title>
    </head>
    <body>
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
           String query = "select fname, lname, ph_no, dob, pass, address from registration where email=\""+email+"\"";
           ResultSet r= st.executeQuery(query);
           r.next();
           String fname = r.getString("fname");
           String lname = r.getString("lname");
           String ph_no = r.getString("ph_no");
           String dob = r.getString("dob");
           String pass = r.getString("pass");
           String address = r.getString("address");
        %>
        <div class="container">
        <a href="home.jsp" class="text-info">back to home</a>
        <h1>Edit Profile</h1>
        <form  class="form-horizontal" action="saveUser.jsp" onsubmit="return check()">
        <small class="text-danger">*required fields</small><br/>
        <label>First Name<span class="text-danger">*</span><br/>
            <input class="textbox" type="text" name="fname" id="fn" placeholder="Enter your first name" value="<%out.print(fname); %>" required><br/><br/> 
        </label><br/>
        <label>Last Name<span class="text-danger">*</span><br/> 
            <input type="text"  class="textbox" name="lname" id="ln" placeholder="Enter your last name" value="<%out.print(lname); %>" required><br/><br/> 
        </label><br/>
        <label>Email<br/>
            <input type="email" class="textbox" name="email" id="email" value="<%out.print(email); %>" disabled><br/>
            
        </label><small  class="form-text text-muted">
  You cannot edit your email.
</small><br/><br/> 
        <label>Phone Number<span class="text-danger">*</span><br/> 
            <input type="text" class="textbox" pattern="^[9|8|7][0-9]{9}" title="Must Be A Ten Digit Indian Number" value="<%out.print(ph_no); %>" name="contact" id="ph" placeholder="eg. 9876543210" required><br/>
            
        </label><small  class="form-text text-muted">
  Your phone number must be a 10 digit Indian number.
</small><br/><br/> 
        <label>Date Of Birth<span class="text-danger">*</span><br/> 
            <input type="date" class="textbox" name="dob" value="<%out.print(dob); %>" id="dob" required><br/><br/> 
        </label><br/>
        <label>Address<span class="text-danger">*</span><br/> 
            <textarea type="textarea" class="textbox" name="address"id="add" placeholder="21, Rajani Sen Road, Kolkata-700029." required><%out.print(address); %> </textarea><br/><br/>
        </label><br/>
        <label>New Password<span class="text-danger">*</span><br/>
            <input type="password" class="textbox" name="password" id="pass" value="<%out.print(pass); %>" placeholde="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br/>
        </label>
        <small  class="form-text text-muted">Your password must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</small><br/>
        <br/>
        <label>Confirm Password<span class="text-danger">*</span><br/>
            <input type="password" class="textbox" name="cpass" value="<%out.print(pass); %>"  id="cpass"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Enter password again" required><br/>
        </label>
        <small  class="form-text text-muted">Your password must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</small>
        <br/>
        <br/>
        <div class="text-center" >
        <input type="submit" class="btn btn-block btn-success" value="Save">
        </form>
        </div>
        </div>
        <% }
            catch(Exception e){
            out.print(e);
            //response.sendRedirect(deks.jsp);
            }
        %>
    </body>
</html>
