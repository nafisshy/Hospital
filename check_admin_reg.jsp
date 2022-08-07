<%-- 
    Document   : check_admin_reg.jsp
    Created on : 15-Apr-2022, 3:39:06 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <%
            
            try{
                String url="jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital";
                String username="admin";
                String password="RdsHospital1!";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                System.out.println("Connected success");
                Statement st=con.createStatement();
                System.out.println("Statement Created");
                String fname= request.getParameter("fname");
                String lname= request.getParameter("lname");
                String email= request.getParameter("email");
                
                String pass= request.getParameter("pass");
                String insertQuery= "insert into admin_registration(first_name,last_name,email,pass) values('"+fname+"','"+lname+"','"+email+"','"+pass+"');";
                st.execute(insertQuery);
                response.sendRedirect("admin.jsp");
            }
            catch(Exception e){
            out.print(e);
            out.print("can't connect ");
            //response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
