<%-- 
    Document   : savedoc
    Created on : 16-Jun-2022, 8:27:42 pm
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
                
                
                
                String dname= request.getParameter("name");
                String dob=request.getParameter("dob");
                String gender= request.getParameter("gender");
                String ph_no= request.getParameter("ph_no");
                String email= request.getParameter("email");
                String address= request.getParameter("addr");
                 String pass= request.getParameter("pass");
                String insertQuery= "update doc_registration set dname= \'"+dname+"\',dob=\'"+dob+"\',gender=\'"+gender+"\',ph_no=\'"+ph_no+"\',email=\'"+email+"\',address=\'"+address+"\',pass=\'"+pass+"\' where d_id= \'"+id+"\'";
                st.execute(insertQuery);
                response.sendRedirect("Doctor.jsp");
            }
            catch(Exception e){
            out.print(e);
            
            }
        %>
    </body>
</html>
