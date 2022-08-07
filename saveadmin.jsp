<%-- 
    Document   : saveadmin
    Created on : 28-May-2022, 4:07:22 pm
    Author     : Sadique Eqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                String pass= request.getParameter("pass");
              
                String insertQuery= "update admin_registration set first_name = \'"+fname+"\', last_name= \'"+lname+"\', pass= \'"+pass+"\' where email= \'"+email+"\'";
                st.execute(insertQuery);
                response.sendRedirect("admin.jsp");
            }
            catch(Exception e){
            out.print(e);
            
            }
        %>
           </body>
</html>
