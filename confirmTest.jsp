<%-- 
    Document   : confirmTest
    Created on : 13-Jun-2022, 5:01:02 pm
    Author     : Nafisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Test</title>
        <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%> 
        <%@page import="java.time.*"%> 
        <%@page import="java.text.SimpleDateFormat"%> 
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
        <li class="active"><a href="#">Book Tests</a></li>
         <li class=""><a href="bloodBank.jsp">Blood Bank</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditUser.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="cancel.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
        </header>
         <!-- Header Ends here -->
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
                String fname= request.getParameter("fname");
                String lname=request.getParameter("lname");
                String gender= request.getParameter("sex");
                String age= request.getParameter("age");
                String ph_no= request.getParameter("ph_no");
                String address= request.getParameter("address");
                String choosetests="";
                String tests[]=request.getParameterValues("testname");
                for(int i=0;i< tests.length;i++){
                    choosetests+=tests[i]+", ";
                }
                LocalDate date = LocalDate.now().plusDays(1);
                int day=date.getDayOfMonth();
                String month=date.getMonth().toString();
                 %>
         <div class="text-center">
       <!--Animated Check-mark-->
       <i class="fa-solid fa-circle-check zoom-in"></i>
       <!--Animated Check mark ends here-->
       
       <strong>
           <h2 class="text-success">Booking Successful!</h2>
           <h3 class="text-success">
         <%
                out.print("Your Appointment is set on "+date.toString());
                String dayName = date.getDayOfWeek().toString();
                out.print(" ("+month+" "+day+", "+dayName+") at 10 a.m. Indian Standard Time");
                String insertQuery= "insert into test_details(fname,lname,gender,age,ph_no,address,tests,apt_date) values('"+fname+"','"+lname+"','"+gender+"','"+age+"','"+ph_no+"','"+address+"','"+choosetests+"','"+date+"')";
                st.execute(insertQuery);
            }
            catch(Exception e){
            out.print(e);
            }
        %>        </h3>
        <a href="cancelTest.jsp" class="btn btn-lg btn-danger"> Cancel </a>
       </strong></div>
    </body>
</html>
