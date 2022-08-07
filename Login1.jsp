<%-- 
    Document   : Login1
    Created on : 23-May-2022, 10:12:16 pm
    Author     : Sadique Eqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.util.*"%>
<%@page import="java.sql.*"%> 
<h1 style="color:#4CAF50;"><B> <center>Sorry! Incorrect username or password. <a href="index.jsp">Try Again?</a></center></b> </h1>
        
         <%
            try{
           
            Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital","admin","RdsHospital1!");
           System.out.println("Connected success");
           Statement st=con.createStatement();
           System.out.println("Statement Created");
           String email= request.getParameter("email1");
           String pass= request.getParameter("pass1");
          String sql="select * from doc_registration where email='"+email+"' and pass='"+pass+"';";
           ResultSet r= st.executeQuery(sql);
           if(r.next()){
             session.setAttribute("email1", email);
             response.sendRedirect("Doctor.jsp");
            }
            }
            catch(Exception e){
            out.print(e);
            //response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
