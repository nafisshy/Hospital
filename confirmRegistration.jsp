<%-- 
    Document   : confirmRegistration
    Created on : 29-Mar-2022, 11:27:42 am
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Registration</title>
    </head>
    <body>
        <h1>Hello World!</h1>
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
                String lname= request.getParameter("lname");
                String email= request.getParameter("email");
                String contact= request.getParameter("contact");
                String dob= request.getParameter("dob");
                String add= request.getParameter("address");
                String pass= request.getParameter("password");
                String insertQuery= "insert into registration(fname,lname,email,ph_no,dob,pass,address) values('"+fname+"','"+lname+"','"+email+"','"+contact+"','"+dob+"','"+pass+"','"+add+"');";
                st.execute(insertQuery);
                response.sendRedirect("index.jsp");
            }
            catch(Exception e){
            out.print(e);
            response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
