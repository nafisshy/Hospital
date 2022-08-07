<%-- 
    Document   : Doctor
    Created on : 23-May-2022, 10:27:52 pm
    Author     : Sadique Eqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%@page import="java.util.*"%>
<%@page import="java.sql.*"%> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Page</title>
        <!-- Importing bootstrap -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Bootstrap import finished -->
  <!--Linking vanilla css-->
 <link rel="stylesheet" href="style.css"/>
 <!--Importing font awesome -->
 <script src="https://kit.fontawesome.com/ddbd31c09a.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <!-- Font awesome imported -->
 <style>
     #b1{
         
         background: url(assets/ddd.jpg);
         background-repeat: no-repeat;
         background-size: 100% auto;
     }
 </style>
    </head>
    <body id='b1'>
        
       
         <!--Header Unauthorized Begins Here -->
        <header>
        <nav class="navbar navbar-default">
  <div class="container-fluid">
       
    <div class="navbar-header">
      
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp&nbsp&nbsp Inas Hospital</a>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
                                    <li class="active"><a href="Doctor.jsp">Home</a></li>

        
         <li class=""><a href="view_patient.jsp">Patient</a></li>

      </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class=""><a href="getEditdoc.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="canceldoc.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                </ul>
        
    </div></div></nav>
         </header>
        <!--Header ends Here-->
        <div class="container" id='f1'>
        <div>
              <%
            try{
             String email=(String)session.getAttribute("email1");
                                   
            String url="jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital";
            String username="admin";
            String password="RdsHospital1!";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
           System.out.println("Connected success");
           Statement st=con.createStatement();
           System.out.println("Statement Created");
           
           String query = "select d_id,dname,dob,gender,qualification,dep_name,ph_no,address,start_at,end_at,day from doc_registration where email=\""+email+"\"";
           ResultSet r= st.executeQuery(query);
           r.next();
           String d_id=r.getString("d_id");
           String dname=r.getString("dname");
           String gender=r.getString("gender");
           String ph_no=r.getString("ph_no");
           String address=r.getString("address");
           
           String qua = r.getString("qualification");
            String dep_name= r.getString("dep_name");
             String start_at = r.getString("start_at");
              String end_at = r.getString("end_at");
              String day = r.getString("day");
                           session.setAttribute("id", d_id);

               
                                   
           
          
        %>
        <div col-sm-7>
        <ul class="list-group col-sm-5">
            <li class="list-group-item list-group-item-primary "><b>DOCTOR ID:  </b><%out.print(d_id);%></li>
            <li class="list-group-item list-group-item-primary "><b>NAME:  </b><%out.print(dname);%></li>
            <li class="list-group-item list-group-item-primary "><b>GENDER:  </b><%out.print(gender);%></li>
            <li class="list-group-item list-group-item-primary "><b>EMAIL:  </b><%out.print(email);%></li>
            <li class="list-group-item list-group-item-primary "><b>PHONE NUMBER:  </b><%out.print(ph_no);%></li>   
            <li class="list-group-item list-group-item-primary "><b>ADDRESS:  </b><%out.print(address);%></li>
            <li class="list-group-item list-group-item-primary "><b>QUALIFICATION:  </b><%out.print(qua);%></li>
            <li class="list-group-item list-group-item-primary "><b>DEPARTMENT NAME:  </b><%out.print(dep_name);%></li>
            <li class="list-group-item list-group-item-primary "><b>STARTING SCHEDULE:  </b><%out.print(start_at);%></li>
            <li class="list-group-item list-group-item-primary "><b>ENDING SCHEDULE:  </b><%out.print(end_at);%></li>
            <li class="list-group-item list-group-item-primary "><b>WORKING DAYS:  </b><%out.print(day);%></li>
        </ul>
        </div>
           <%  }
           catch(Exception e){
                   out.print(e);
                   }
           %>  
        </div>
        </div>
    </body>
</html>
