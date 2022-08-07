<%-- 
    Document   : delete_patient
    Created on : 16-Jun-2022, 11:31:34 pm
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
        <%@page import="java.sql.*,java.util.*"%>
        <%
        String id=request.getParameter("id");
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital", "admin", "RdsHospital1!");
        Statement st=conn.createStatement();
        int i=st.executeUpdate("DELETE FROM patient_rec WHERE p_id='"+id+"'");
     
        response.sendRedirect("view_patient_admin.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);

        }
        %>
    </body>
</html>
