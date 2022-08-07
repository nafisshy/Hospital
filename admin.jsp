<%-- 
    Document   : admin.jsp
    Created on : 07-Apr-2022, 11:33:01 am
    Author     : sadiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
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
                            <li class=""><a href="admin.jsp">Home</a></li>
                            <li class=""><a href="viewComplaints.jsp">Feedback</a></li>
                            <li class=""><a href="view_patient_admin.jsp">Patient</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditAdmin.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="canceladmin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>

                    </div> 
                    
                </div>
                        </header>
                        <!-- header ends here--->
                        <div class="container">
                            <div class="row" >
                                <div class="card col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                                    <div class="card-body bg-success text-center">
                                        <span class="fa fa-user-circle" style="font-size:200px;"></span> 
                                        <p> Admin</p>
                                        <a href="view_admin.jsp" class="btn btn-block btn-success">View Admin</a>

                                        <a href="admin_registration.jsp" class="btn btn-block btn-success">Add Admin</a>
                                        <a href="remove_admin.jsp" class="btn btn-block btn-success">Remove Admin</a>

                                    </div>
                                </div>
                                <div class="card col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                                    <div class="card-body bg-success text-center">
                                        <span class="fa fa-user-md" style="font-size:200px;"></span> 
                                        <p> Doctor</p>
                                        <a href="view_doc.jsp" class="btn btn-block btn-success">View Doctor</a>
                                        <a href="doc_registration.jsp" class="btn btn-block btn-success">Add Doctor</a>
                                        <a href="remove_doc.jsp" class="btn btn-block btn-success">Remove Doctor</a>
                                        <a href="edit_doc_admin.jsp" class="btn btn-block btn-success">Edit Doctor</a>

                                    </div>
                                </div>
                                <div class="card col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                                    <div class="card-body bg-success text-center">
                                        <span class="fa fa-user" style="font-size:200px;"></span> 
                                        <p>User</p>
                                        <a href="view_user.jsp" class="btn btn-block btn-success">View User</a>

                                        <a href="remove_user.jsp" class="btn btn-block btn-success">Remove User</a>


                                    </div>
                                </div>

                            </div>
                        </div>

                        </body>
                        </html>
