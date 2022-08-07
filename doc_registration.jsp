<%-- 
    Document   : doc_registration.jsp
    Created on : 07-Apr-2022, 9:05:44 pm
    Author     : sadiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Registration</title>

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
        <%@page import="java.util.*"%>
<%@page import="java.sql.*"%> 
       

    </head>

    <body>
         
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
                            <li class=""><a href="admin.jsp">Home</a></li>
                            <li class=""><a href="viewComplaints.jsp">Feedback</a></li>
                            <li class=""><a href="view_patient_admin.jsp">Patient</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
        
        <li class=""><a href="canceladmin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>

                    </div> 
                    
                </div>
                        </header>
        <!-- header ends here--->
                        <div class="container">
                            <h2><b> DOCTOR REGISTRATION</b></h2><br>
                            <form action="check_doc_registration.jsp" name="f1" >
                                <small class="text-danger">*required fields</small><br/>
                                <div class="row mb-3">
                                    <label for="name" class="col-sm-2 col-form-label">Name<span class="text-danger">*</span></label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="name" id="name" required placeholder="TANIA SINGH">
                                    </div>
                                </div>
                                <br>
                                 <div class="row mb-3">
                                    <label  for="ph_no" class="col-sm-2 col-form-label">Date Of Birth<span class="text-danger">*</span></label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="dob" type="date"  id="dob" required placeholder="year/month/date">

                                    </div>
                                </div>
                                <br>

                                <fieldset class="row mb-3">
                                    <label for="gender" class="col-form-label col-sm-2">Gender<span class="text-danger">*</span></label>
                                    <div class="col-sm-10">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="Male" >
                                            <label class="form-check-label" for="gridRadios1">
                                                Male
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="Female">
                                            <label class="form-check-label" for="gridRadios2">
                                                Female
                                            </label>
                                        </div>
                                        <div class="form-check disabled">
                                            <input class="form-check-input" type="radio" name="gender" id="gridRadios3" value="Others" >
                                            <label class="form-check-label" for="gridRadios3">
                                                Others
                                            </label>
                                        </div>
                                    </div>
                                </fieldset>
                                <br>
                                <div class="row mb-3">
                                    <label for="dept"  class="col-sm-2 col-form-label">Department<span class="text-danger">*</span></label>
                                

                                    <div class="col-sm-10 ">
                                        <select class="form-select" name="dept" id="dept" required="">
                                            <option selected>SELECT</option>
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
                    <label for="addr" class="col-sm-2 col-form-label">Qualification<span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                        <input class="form-control" type="text" name="qua" id="qua" placeholder="MBBS, MD,MS" required="">
                    </div><!-- comment -->
                                </div>
                                <br>
                                <div class="row mb-3">
                                    <label  for="ph_no" class="col-sm-2 col-form-label">Phone Number<span class="text-danger">*</span></label>
                                    <div class="col-sm-10">
            <input type="text" class="ph_no" id="ph_no" pattern="^[9|8|7][0-9]{9}" title="Must Be A Ten Digit Indian Number"  placeholder="9876543210" required>

                                    </div>
                                </div>
                                <br>
                                    <div class="row mb-3">
                                        <label for="email" class="col-sm-2 col-form-label"> Email<span class="text-danger">*</span></label>
                                        <div class="col-sm-10">
                        <input type="email" class="form-control" name="email" id="email" placeholder="abc01@gmail.com" required  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter a valid email">
                                        </div>
                                    </div>
                                <br>
                                    <div class="row mb-3">
                                        <label for="addr" class="col-sm-2 col-form-label">Address<span class="text-danger">*</span></label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" name="addr" id="addr" placeholder="1, ANDUL ROAD HOWRAH-711101" required>
                                        </div>
                                    </div>
                                <br>
                                <div class="row mb-3">
                                        <label for="addr" class="col-sm-2 col-form-label">Password<span class="text-danger">*</span></label>
                                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="pass" id="pass" placeholder="" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                                                              title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
         
                               </div>
                                    </div>
                                <br>
                               
                                <div class="row mb-3">
                                        <label for="addr" class="col-sm-2 col-form-label">Day<span class="text-danger">*</span></label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" name="day" id="day" required placeholder="SUN,MON,TUE,WED,THU,FRI,SAT">
                                        </div>
                                    </div>
                                <br>
                               
                               

                                    
                                    <div class="row mb-3">
                                        <label for="start_time" class="col-sm-2 col-form-label">Start Time<span class="text-danger">*</span></label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="time" name="start_time" id="start_time" placeholder="HOURS:MINUTES" required="">
                                        </div>
                                    </div>
                                <br>
                                    <div class="row mb-3">
                                        <label for="end_time" class="col-sm-2 col-form-label">End Time<span class="text-danger">*</span></label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="time" name="end_time" id="end_time" placeholder="HOURS:MINUTES" required="">
                                        </div>
                                    </div>
                                
                                

                                <br><br>
                              
                                  <div class="text-center">
                                <button type="submit" class="btn btn-block btn-success">SUBMIT</button>
                              
                              </div>
                                             
                    </form>
                        </div>
                        
                            


                       
                        </body>
                        </html>