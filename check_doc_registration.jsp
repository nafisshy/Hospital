<%-- 
    Document   : check_doc_registration
    Created on : 15-Apr-2022, 1:42:34 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%> 
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
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                System.out.println("Connected success");
                Statement st=con.createStatement();
                System.out.println("Statement Created");
                String name= request.getParameter("name");
                String gender= request.getParameter("gender");
                String dept= request.getParameter("dept");
                String ph_no= request.getParameter("ph_no");
                String dob= request.getParameter("dob");
                String email= request.getParameter("email");
                String addr= request.getParameter("addr");
                String day= request.getParameter("day");
                String start_time= request.getParameter("start_time");
                String end_time= request.getParameter("end_time");
                String pass= request.getParameter("pass");
                String qua= request.getParameter("qua");
                String insertQuery= "insert into doc_registration(dname,dob,gender,qualification,dep_name,ph_no,email,address,start_at,end_at,day,pass) values('"+name+"','"+dob+"','"+gender+"','"+qua+"','"+dept+"','"+ph_no+"','"+email+"','"+addr+"','"+start_time+"','"+end_time+"','"+day+"','"+pass+"');";
                st.execute(insertQuery);
                response.sendRedirect("admin.jsp");
            }
            catch(Exception e){
            out.print(e);
            out.print("can't connect ");
            //response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
