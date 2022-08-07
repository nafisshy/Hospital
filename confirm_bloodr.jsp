<%-- 
    Document   : confirm_bloodr
    Created on : 20-May-2022, 10:04:18 pm
    Author     : S DUTTA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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
                String email= request.getParameter("email");
                String contact= request.getParameter("contact");
                String bgroup= request.getParameter("bgroup");
                String amt= request.getParameter("amount");
                String add= request.getParameter("address");
                String insertQuery= "insert into blood_req(fname,lname,email,ph_no,blood_group,blood_amount,address) values('"+fname+"','"+lname+"','"+email+"','"+contact+"','"+bgroup+"','"+amt+"','"+add+"');";
                st.execute(insertQuery);
                response.sendRedirect("bloodBank.jsp");
            }
            catch(Exception e){
            out.print(e);
            }
        %>
    </body>
</html>
