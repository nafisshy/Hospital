<%-- 
    Document   : saveUser
    Created on : 20-Apr-2022, 4:33:09 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save User</title>
        <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%> 
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
                String fname= request.getParameter("fname");
                String lname= request.getParameter("lname");
                String email= (String)session.getAttribute("email");
                String contact= request.getParameter("contact");
                String dob= request.getParameter("dob");
                String add= request.getParameter("address");
                String pass= request.getParameter("password");
                String insertQuery= "update registration set fname = \'"+fname+"\', lname= \'"+lname+"\', ph_no= \'"+contact+"\', dob= \'"+dob+"\', address= \'"+add+"\',pass= \'"+pass+"\' where email= \'"+email+"\'";
                st.execute(insertQuery);
                response.sendRedirect("home.jsp");
            }
            catch(Exception e){
            out.print(e);
            
            }
        %>
    </body>
</html>
