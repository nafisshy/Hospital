<%-- 
    Document   : checkadminlogin.jsp
    Created on : 09-Apr-2022, 9:32:29 pm
    Author     : Admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1 style="color:#4CAF50;"><B> <center>Sorry! Incorrect username or password. <a href="adminlogin.jsp">Try Again?</a></center></b> </h1>

        <%
            try{
         
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital","admin","RdsHospital1!");
           System.out.println("Connected success");
          Statement st=con.createStatement();
           System.out.println("Statement Created");
         String email= request.getParameter("email");
           String pass= request.getParameter("pass");
          String sql="select * from admin_registration where email='"+email+"' and pass='"+pass+"';";
           ResultSet r= st.executeQuery(sql);
           if(r.next()){
             session.setAttribute("email", email);
             response.sendRedirect("admin.jsp");
            }
            }
            catch(Exception e){
           
            //response.sendRedirect(deks.jsp);
            }
        %>
    </body>
</html>
