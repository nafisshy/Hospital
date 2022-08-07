<%-- 
    Document   : feedback
    Created on : 22-Apr-2022, 9:00:18 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Page</title>
        <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%> 
        <%@page import="java.time.*"%> 
        
        <!--Bootstrap 5-->
        
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
                String name= request.getParameter("name");
                String email= request.getParameter("email");
                String comments= request.getParameter("comments");
                //handling escape sequence error of mysql
                comments=comments.replaceAll("'", "''");
                //Access the curren date and time using java
               
                String date_time=LocalDateTime.now().toString();
                String insertQuery= "insert into feedback(date_time,name,email,comments) values('"+date_time+"','"+name+"','"+email+"','"+comments+"');";
                st.execute(insertQuery);
                %>
               <div class="text-center">
       <!--Animated Check-mark-->
       <i class="fa-solid fa-envelope-circle-check zoom-in"></i>
       <!--Animated Check mark ends here-->
       
       <strong>
           <h2 class="text-success">Feedback Sent!</h2>
           <h3 class="text-success">We will get back to you within 24 hours.</h3>
           <a class="btn btn-success btn-lg" href="<%=(session.getAttribute("prev_page"))%>"> Okay </a>
       </strong></div>
               
                <%     
            }
            catch(Exception e){
            out.print(e);
            }
        %>
    </body>
</html>
