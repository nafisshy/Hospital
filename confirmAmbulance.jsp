<%-- 
    Document   : confirmAmbulance
    Created on : 09-Apr-2022, 7:18:51 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@page import="java.util.*"%>
<%@page import="java.sql.*"%> 
 <%@page import="java.time.*"%> 
<%@page import="java.text.SimpleDateFormat"%> 

    </head>
    <body>
        <h1>Hello World!</h1>
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
                String pickup_time= request.getParameter("time");
                /*when User Books for Emergency the current date and time is stored instead of null */
                if(pickup_time==null){
                    pickup_time=LocalDateTime.now().toString();
                }
                
                String address= request.getParameter("address");
                String landmark= request.getParameter("landmark");
                String patientfname= request.getParameter("patientfname");
                String patientlname= request.getParameter("patientlname");
                String bookerfname= request.getParameter("bookerfname");
                String bookerlname= request.getParameter("bookerlname");
                String booker_phone= request.getParameter("booker_phone");
                String insertQuery= "insert into ambulance(pickup_time,address,landmark,patientfname,patientlname,bookerfname,bookerlname,booker_phone) values('"+pickup_time+"','"+address+"','"+landmark+"','"+patientfname+"','"+patientlname+"','"+bookerfname+"','"+bookerlname+"','"+booker_phone+"');";
                st.execute(insertQuery);
                response.sendRedirect("ambulanceBookingSuccessful.jsp");
            }
            catch(Exception e){
            out.print(e);
            //response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
