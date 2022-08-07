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
                String id=(String)session.getAttribute("id");

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                System.out.println("Connected success");
                Statement st=con.createStatement();
                System.out.println("Statement Created");
                
                
                
                String dep= request.getParameter("dept");
                String qua=request.getParameter("qua");
                String day= request.getParameter("day");
                String start_at= request.getParameter("start_at");
                String end_at= request.getParameter("end_at");
                String insertQuery= "update doc_registration set day= \'"+day+"\',start_at=\'"+start_at+"\',end_at=\'"+end_at+"\',qualification=\'"+qua+"\',dep_name=\'"+dep+"\' where d_id= \'"+id+"\'";
                st.execute(insertQuery);
                response.sendRedirect("view_doc.jsp");
            }
            catch(Exception e){
            out.print(e);
            
            }
        %>
    </body>
</html>
