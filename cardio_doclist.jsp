<%-- 
    Document   : cardio_doclist
    Created on : 20-Apr-2022, 11:54:17 am
    Author     : S DUTTA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cardiology Doctors</title>
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
 <style>tr:nth-child(even) {background-color: #F6EF98;}</style>
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
       
        <li class="active"><a href="#">Book Appointment</a></li>
        <li class=""><a href="bookambulance.jsp">Book Ambulance</a></li>
        <li class=""><a href="booktest.jsp">Book Test</a></li>
        <li class=""><a href="bloodBank.jsp">Blood Bank</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditUser.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="cancel.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
        </header>
         <!-- Header Ends here -->
    <h3>Cardiology Department Doctors</h3><br>
    <%
            String url="jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital";
            String username="admin";
            String password="RdsHospital1!";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1 = DriverManager.getConnection(url,username,password);
           System.out.println("Connected success");
           Statement st=con1.createStatement();
           System.out.println("Statement Created");
            ResultSet rs = st.executeQuery("select d_id,dname,gender,ph_no,day,start_at,end_at from doc_registration where dep_name='CARDIOLOGIST'");
    %>
    <table border='5' align="center" width="800">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Phone No.</th>
            <th>Day</th>
            <th>Start Time</th>
            <th>End Time</th>
            <th>Select Doctor</th>
        </tr><form action="patient_form.jsp">
        <% while(rs.next()){%>
        <tr>
            <td><%=rs.getInt(1)%></td>
            <td><center><%=rs.getString(2)%></center></td>
            <td><center><%=rs.getString(3)%></center></td>
            <td><center><%=rs.getString(4)%></center></td>
            <td><center><%=rs.getString(5)%></center></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><center><input type="radio" value="<%=rs.getInt(1)%>" name="did" required></center></td>
           
        </tr>
        <%}%>
        
    </table>
        <div class="text-center"> <input class="btn btn-success " style="margin:10px;" type="Submit" value="Book Now"></form></div>
    </body>
</html>

