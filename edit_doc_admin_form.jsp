<%-- 
    Document   : edit_doc_admin_form
    Created on : 28-May-2022, 5:16:01 pm
    Author     : Sadique Eqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Details</title>
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
    </head>
    <body>
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
                            <li class="active"><a href="admin.jsp">Home</a></li>
                            <li class=""><a href="about.jsp">About</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
       
        <li class=""><a href="canceladmin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>

                    </div> 
                    
                </div>
                        </header>
                        <!-- header ends here--->
                               <%
            try{
             String id=request.getParameter("id");
                                   
            String url="jdbc:mysql://rds-hospital.cvw50pendbuo.us-west-2.rds.amazonaws.com/hospital";
            String username="admin";
            String password="RdsHospital1!";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
           System.out.println("Connected success");
           Statement st=con.createStatement();
           System.out.println("Statement Created");
           
           String query = "select qualification,dep_name,start_at,end_at,day from doc_registration where d_id=\""+id+"\"";
           ResultSet r= st.executeQuery(query);
           r.next();
           
           String qua = r.getString("qualification");
            String dep_name= r.getString("dep_name");
             String start_at = r.getString("start_at");
              String end_at = r.getString("end_at");
              String day = r.getString("day");
              
               session.setAttribute("id", id);
                                   
           
          
        %>
           <div class="container">
                            <h2><b> DOCTOR REGISTRATION</b></h2><br>
                            <form action="edit_doc_admin_confirm.jsp" name="f1" >
                               
                           
                               

                                                              <div class="row mb-3">
                                    <label for="dept"  class="col-sm-2 col-form-label">Department</label>
                                

                                    <div class="col-sm-10 ">
                                        <select class="form-select" name="dept" id="dept" >
                                            <option selected value="<%out.print(dep_name);%>"><%out.print(dep_name);%></option>
                                            <option value="GENERAL CHECKUP">GENERAL CHECKUP</option>
                                            <option value="NEUROLOGIST">NEUROLOGY</option>
                                            <option value="CARDIOLOGIST">CARDIOLOGY</option>
                                            <option value="PULMONOLOGIST">PULMONOLOGY</option>
                                            <option value="DENTIST">DENTAL</option>
                                            <option value="ORTHOPEDIST">ORTHOPEDIC</option>
                                            <option value="OPHTHALMOLOGIST">OPHTHALMOLOGY</option>
                                            <option value="OBSTETRICIAN">OBSTETRICS</option>
                                            <option value="PEDIATRICIAN">PEDIATRIC</option>
                                            <option value="GYNOCOLOGIST">GYNECOLOGY</option>
                                            <option value="DERMATOLOGIST">DERMATOLOGY</option>
                                            <option value="ENT SPECIALIST">ENT SPECIALIST</option>
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <div class="row mb-3">
                                        <label for="addr" class="col-sm-2 col-form-label">Qualification</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" name="qua" id="qua" value="<%out.print(qua);%>" required="">
                                        </div>
                                    </div>
                                <br>

                               
                                
                                  
                               
                                <div class="row mb-3">
                                        <label for="addr" class="col-sm-2 col-form-label">Day</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" name="day" id="day" value="<%out.print(day);%>" required="">
                                        </div>
                                    </div>
                                <br>
                               
                               

                                    
                                    <div class="row mb-3">
                                        <label for="start_time" class="col-sm-2 col-form-label">Start Time</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="time" name="start_at" id="start_at" value="<%out.print(start_at);%>"  required="">
                                        </div>
                                    </div>
                                <br>
                                    <div class="row mb-3">
                                        <label for="end_time" class="col-sm-2 col-form-label">End Time</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="time" name="end_at" id="end_time" value="<%out.print(end_at);%>" required="">
                                        </div>
                                    </div>
                                
                                

                                <br><br>
                              
                                  <div class="text-center">
                                <button type="submit" class="btn-btn-block btn-success" onclick="">SUBMIT</button>
                              
                              </div>
                                             
                    </form>
                        </div>
           <%  }
           catch(Exception e){
                   out.print(e);
                   }
           %>
    </body>
</html>
