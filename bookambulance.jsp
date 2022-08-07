<%-- 
    Document   : bookambulance
    Created on : 05-Apr-2022, 3:50:57 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Ambulance Page</title>
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
           <!--Authorized Header Begins Here -->
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
        <li class=""><a href="home.jsp">Home</a></li>
       
        <li class=""><a href="bookappointment.jsp">Book Appointment</a></li>
        <li class="active"><a href="bookambulance.jsp">Book Ambulance</a></li>
        <li class=""><a href="booktest.jsp">Book Test</a></li>
        <li class=""><a href="bloodBank.jsp">Blood Bank</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditUser.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="cancel.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
        </header>
         <!-- Header Ends here -->
         
         <div class="container">
            <form action="confirmAmbulance.jsp">
                <h3 class="text-success">Ambulance Booking Form</h3>
                  <ul class="nav nav-pills">
                      <li class="active" id="emergency"><a data-toggle="tab" href="#form">Emergency</a></li>
                    <li id="bookforlater"><a  href="#form">Book For Later</a></li>
                  </ul>
                    <div  class=" panel panel-default">
                     <div class="panel-heading" >PickUp Details </div>
                            <div class="panel-body">
                                
                                <div class="form-group">
                                    <div id="pickupTime">
                                    
                                    </div>
                                    <label>Pickup Address<span class="text-danger">*</span><br/> 
                                        <textarea type="textarea" class="textbox" style="width:65em;"  name="address" id="add" placeholder="21, Rajani Sen Road, Kolkata-700029." required></textarea>
                                        <br/><br/>
                                    </label><br/>
                                    <label>Landmark<br/> 
                                        <textarea type="textarea" class="textbox" style="width:65em;"  name="landmark" id="add" placeholder="Near Avani Mall"></textarea>
                                        <br/><br/>
                                    </label><br/>
                                </div>
                               
                            </div>
                    </div>
                    <div  class=" panel panel-default">
                     <div class="panel-heading" >Patient Details </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label>First Name<span class="text-danger">*</span><br/> 
                                        <input type="text" class="textbox" style="width:65em;"  name="patientfname" placeholder="Enter First Name" required/>
                                        <br/><br/>
                                    </label><br/>
                                    <label>Last Name<span class="text-danger">*</span><br/> 
                                        <input type="text" class="textbox" style="width:65em;"  name="patientlname" placeholder="Enter Last Name" required/>
                                        <br/><br/>
                                    </label><br/>
                                </div>
                            </div>
                    </div>
                    <div  class=" panel panel-default">
                        <div class="panel-heading" >Your Details <span class="text-muted">(Booker's Details)</span> </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label>First Name<span class="text-danger">*</span><br/> 
                                        <input type="text" class="textbox" style="width:65em;"  name="bookerfname" placeholder="Enter First Name" required/>
                                        <br/><br/>
                                    </label><br/>
                                    <label>Last Name<span class="text-danger">*</span><br/> 
                                        <input type="text" class="textbox" style="width:65em;"  name="bookerlname" placeholder="Enter Last Name" required/>
                                        <br/><br/>
                                    </label><br/>
                                    <label>Phone Number<span class="text-danger">*</span><br/> 
                                        <input type="text" class="textbox" style="width:65em;" title="Must Be A Ten Digit Indian Number" name="booker_phone" pattern="^[9|8|7][0-9]{9}" placeholder="eg. 9876543210" required/>
                                        <br/>
                                        <small  class="form-text text-muted">
  Your phone number must be a 10 digit Indian number.
</small>
                                        <br/>
                                    </label><br/>
                                </div>
                            </div>
                    </div>
                      <input type="submit" class="btn btn-lg btn-success " value="Submit"/>
                  
            </form>
         </div>
         
         <script>
             const btnBookForLater=document.getElementById('bookforlater');
             const btnEmergency=document.getElementById('emergency');
             const pickup=document.getElementById('pickupTime');
             btnBookForLater.addEventListener('click',()=>{
                 btnBookForLater.classList.toggle("active");
                 btnEmergency.classList.toggle("active");
                 pickup.innerHTML=`<label  class="">Pickup Date and Time<span class="text-danger">*</span><br/> 
                                        <input type="datetime-local" class="textbox" style="width:65em;"  name="time" id="time" required/>
                                        <br/><br/>
                                    </label><br/>`;
             });
             btnEmergency.addEventListener('click',()=>{
                 btnBookForLater.classList.toggle("active");
                 btnEmergency.classList.toggle("active");
                 pickup.innerHTML=``;
             });
         </script>
    </body>
</html>
