<%-- 
    Document   : view_user
    Created on : 23-Apr-2022, 1:12:07 pm
    Author     : sadiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                            <li class=""><a href="admin.jsp">Home</a></li>
                            <li class=""><a href="viewComplaints.jsp">Feedback</a></li>
                            <li class=""><a href="view_patient_admin.jsp">Patient</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditAdmin.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="canceladmin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>

                    </div> 
                    
                </div>
                        </header>
         <%
            String url="jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital";
            String username="admin";
            String password="RdsHospital1!";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1 = DriverManager.getConnection(url,username,password);
           System.out.println("Connected success");
           Statement st=con1.createStatement();
           System.out.println("Statement Created");
            ResultSet rs = st.executeQuery("select reg_id,fname,lname,email,ph_no,dob,address from registration;");
    %>
    <table border='5' align="center" width="1000">
        <tr>
            <th>Id</th>
            <th> First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>DOB</th>
            <th>Address</th> 
            
        </tr>
        <% while(rs.next()){%>
        <tr>
            <td><%=rs.getInt("reg_id")%></td>
            <td><center><%=rs.getString("fname")%></center></td>
            <td><center><%=rs.getString("lname")%></center></td>
            <td><center><%=rs.getString("email")%></center></td>
            <td><center><%=rs.getString("ph_no")%></center></td>
            <td><center><%=rs.getString("dob")%></center></td>
            <td><center><%=rs.getString("address")%></center></td>
            
        </tr>
        <%}%>
    </table>
    </body>
</html>
