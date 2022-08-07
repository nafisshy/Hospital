<%-- 
    Document   : login
    Created on : 29-Mar-2022, 10:26:11 am
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
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
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
           System.out.println("Connected success");
           Statement st=con.createStatement();
           System.out.println("Statement Created");
           String email= request.getParameter("email");
           String pass= request.getParameter("pass");
          String sql="select * from registration where email='"+email+"' and pass='"+pass+"';";
           ResultSet r= st.executeQuery(sql);
           if(r.next()){
             session.setAttribute("email", email);
             response.sendRedirect("home.jsp");
            }
            out.print("<h3>Wrong email or password!    <a href=\"index.jsp\"> Try again</a></h3>");
             
            }
            catch(Exception e){
            out.print(e);
            
            
        
           
            }
        %>
        
    </body>
</html>
