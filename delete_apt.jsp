<%-- 
    Document   : delete_apt
    Created on : 22-Jul-2022, 11:16:45 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!no</h1>
         <%@page import="java.sql.*,java.util.*"%>
        <%
            
        String d_id=request.getParameter("did");
        String email=(String)session.getAttribute("email");
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital", "admin", "RdsHospital1!");
        
        String query="delete from patient_rec where d_id=? and email=?";
        PreparedStatement st = conn.prepareStatement(query);
        st.setString(1,d_id);
        st.setString(2,email);
       int row=st.executeUpdate();
        response.sendRedirect("viewAppointment.jsp");
        out.print(row);
        }
        catch(Exception e)
        {
        System.out.print(e);

        }
        %>
        
    </body>
</html>
