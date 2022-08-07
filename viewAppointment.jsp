<%-- 
    Document   : viewAppointment
    Created on : 22-Jul-2022, 9:45:15 pm
    Author     : ADMIN
--%>

<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Appointment</title>
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
        <!--importing java  important packages-->
        <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%> 
        <%@page import="java.time.*"%> 
        <%@page import="java.time.temporal.TemporalAdjusters"%> 
        
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
         <h1 class="text-success">Your Appointments</h1>
         <%
            
            try{
                String url="jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital";
                String username="admin";
                String password="RdsHospital1!";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                System.out.println("Connected success");
                Statement st=con.createStatement();
                Statement st2=con.createStatement();
                System.out.println("Statement Created");
                String email=(String)session.getAttribute("email");
                String query1="select d_id from patient_rec where email='"+email+"'";
                String query2;
                ResultSet rs = st.executeQuery(query1);
                ResultSet rs2;
                /*ResultSet totalrows.
                out.println("Table contains "+totalrows.getInt("s_no")+" rows<br>");*/
                    while (rs.next()) {
                        String d_id=rs.getString("d_id");
                        query2="select dname,start_at,day from doc_registration where d_id='"+d_id+"'";
                        rs2 = st2.executeQuery(query2);
                         rs2.next();
                         String dname=rs2.getString("dname");
                         String start_at=rs2.getString("start_at").toString();
                         String day=rs2.getString("day");
                         day=day.substring(0,day.indexOf(','));
                        %><div class="card bg-success  "  style="width: 90vw; border: 5px solid green; border-radius:5px; margin: 10px;">
  <div class="card-body ">
      <h5 class="card-title"><strong>Doctor name: Dr. <%=(dname)%> On Day: <%=(day)%> at Time: <%=(start_at)%> </strong><a href="delete_apt.jsp?did=<%=d_id%>&email=<%=email%>" style="margin-left: 80vw;" class="btn btn-danger">CANCEL</a>
 </div>
                        </div>
            
        <%
                    }
            }
            catch(Exception e){
            out.print(e);
            //response.sendRedirect("index.jsp");
            }
        %>

    </body>
</html>
