<%-- 
    Document   : delete
    Created on : 23-Apr-2022, 11:55:03 am
    Author     : sadiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*,java.util.*"%>
        <%
        String id=request.getParameter("id");
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital", "admin", "RdsHospital1!");
        Statement st=conn.createStatement();
        int i=st.executeUpdate("DELETE FROM admin_registration WHERE ad_id='"+id+"'");
     
        response.sendRedirect("remove_admin.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);

        }
        %>
    </body>
</html>
