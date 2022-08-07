<%-- 
    Document   : confirm_patient
    Created on : 21-Apr-2022, 11:30:47 am
    Author     : S DUTTA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Registration</title>
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
                String email=(String) session.getAttribute("email");
                String contact= request.getParameter("contact");
                String age= request.getParameter("age");
                String gender= request.getParameter("gender");
                String add= request.getParameter("address");
                String mhist=request.getParameter("mhist");
                int did=Integer.parseInt(request.getParameter("did"));
                String insertQuery= "insert into patient_rec(fname,lname,email,ph_no,age,gender,address,d_id,m_history) values('"+fname+"','"+lname+"','"+email+"','"+contact+"','"+age+"','"+gender+"','"+add+"','"+did+"','"+mhist+"');";
                st.execute(insertQuery);
                response.sendRedirect("bookappointment.jsp");
            }
            catch(Exception e){
            out.print(e);
            }
        %>
    </body>
</html>

