<%-- 
    Document   : delete_complaint.jsp
    Created on : 19-Jun-2022, 3:07:51 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Complaint</title>
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
        int i=st.executeUpdate("DELETE FROM feedback WHERE s_no='"+id+"'");
     
        response.sendRedirect("viewComplaints.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);

        }
        %>
    </body>
</html>
