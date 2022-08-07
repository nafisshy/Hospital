<%-- 
    Document   : viewComplaints
    Created on : 14-Jun-2022, 3:21:10 pm
    Author     : ADMIN
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
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://kit.fontawesome.com/ddbd31c09a.js" crossorigin="anonymous"></script>
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
                            <li class="active"><a href="#">Feedback</a></li>
                            <li class=""><a href="view_patient_admin.jsp">Patient</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditAdmin.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="canceladmin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>

                    </div> 
                    
                </div>
                        </header>
                        <!-- header ends here--->
        <h1>Customer Feedback</h1>
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
                String query="select * from feedback;";
                ResultSet rs = st.executeQuery(query);
                /*ResultSet totalrows.
                out.println("Table contains "+totalrows.getInt("s_no")+" rows<br>");*/
                    while (rs.next()) {
                        String s_no=rs.getString("s_no");
                        String datetime = rs.getString("date_time");
                        String name = rs.getString("name");
                        String email = rs.getString("email");
                        String comments = rs.getString("comments");
                        %><div class="card col-sm-6"  style="width: 18rem; border: 5px solid green; border-radius:5px; margin: 10px;">
  <div class="card-body">
      <h5 class="card-title"><%=(name)%> <small class="text-muted"><%=email%><br><%=datetime%></small></h5>
    <small class="card-subtitle mb-2 text-muted text-small"><br></small><p class="card-text"><%=(comments)%></p> <a href="delete_complaint.jsp?id=<%=rs.getString("s_no") %>">
        <i class="fa fa-solid fa-square-xmark text-danger text-right" style="font-size: 30px; margin-left: 12rem;"></i></a>
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
