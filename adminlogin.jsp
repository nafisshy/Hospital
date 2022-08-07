<%-- 
    Document   : adminlogin.jsp
    Created on : 07-Apr-2022, 12:06:52 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">



        <title>Admin login</title>
        

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

                            <li class=""><a href="index.jsp">User Login </a></li>
                            <li class=""><a href="about.jsp">About</a></li>
                        </ul>

                        </header>
        <br>
                            <div class="container">
                                <div class="col-md-12 ms-md-auto">
                                    

                                        <div class="card-body text-center">
                                            <h2 class="card-title">Admin Login</h2>
                                            <span class="fa fa-user-circle" style="font-size:200px;"></span>
                                            <form action="checkadminlogin.jsp">
                                                <div class="row mb-3">
                                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Email:</label>
                                                    <div class="col-sm-10">
                                                        <input type="email" class="form-control" id="inputEmail3" name="email">
                                                    </div>
                                                </div>
                                                
                                                <br>
                                                <div class="row mb-3">
                                                    <label for="inputPassword3" class="col-sm-2 col-form-label">Password:</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" class="form-control" id="inputPassword3" name="pass">
                                                    </div>
                                                </div>
                                                <br> 


                                                 <input type="submit" value="Login" name="" class="btn btn-success btn-block">
                                            </form>

                                        </div>

                                    
                                </div>
                            </div>
                            



                            </body>
                            </html>