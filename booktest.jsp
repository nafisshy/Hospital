
<%-- 
    Document   : booktest
    Created on : 17-May-2022, 4:02:38 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Test</title>
        <!-- Importing bootstrap -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Bootstrap import finished -->
  <!--Importing font awesome -->
 <script src="https://kit.fontawesome.com/ddbd31c09a.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <!-- Font awesome imported -->
   <!--Linking vanilla css-->
 <link rel="stylesheet" href="style.css"/>
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
        <li class=""><a href="bookambulance.jsp">Book Ambulance</a></li>
        <li class="active"><a href="booktest.jsp">Book Test</a></li>
        <li class=""><a href="bloodBank.jsp">Blood Bank</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditUser.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="cancel.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
        </header>
         <!-- Header Ends here -->
         <!-- BODY CONTENT BEGINS HERE -->
         <div class="container">
             <form action="confirmTest.jsp" onsubmit="return validate();">
                 <h3 class="text-success">Test Booking Form</h3>
                 <div  class=" panel panel-default">
                     <div class="panel-body">
                         <div class="form-group">
                                    <label>First Name<span class="text-danger">*</span><br/> 
                                        <input type="text" class="textbox" style="width:65em;"  name="fname" placeholder="Enter First Name" required/>
                                        <br/><br/>
                                    </label><br/>
                                    <label>Last Name<span class="text-danger">*</span><br/> 
                                        <input type="text" class="textbox" style="width:65em;"  name="lname" placeholder="Enter Last Name" required/>
                                        <br/><br/>
                                    </label><br/>
                                    
                                    <%--Experiment--%>
                                      <fieldset class="form-group row" style="margin-left: 0px;">
                                          <label class="col-form-legend ">Sex<span class="text-danger">*</span></label><br>
      
                                            <div class="form-check">
                                              <label class="form-check-label">
                                                <input class="form-check-input radio-inline" type="radio" name="sex"  value="female" checked>
                                                Female</label>
                                                <label class="form-check-label">
                                                <input class="form-check-input radio-inline" type="radio" name="sex" value="male">
                                                Male</label>
                                                <label class="form-check-label">
                                                <input class="form-check-input" type="radio" name="sex" value="other">
                                                Other</label>
                                            </div>  
                                        </fieldset>
                                      <label>Age<span class="text-danger">*</span><br/> 
                                        <input type="number" class="" max="110" min="0" title="Age must be between 0 and 110"  name="age" placeholder="42" required/>
                                        <br/><br/>
                                    </label><br/>
                                    <label>Phone Number<span class="text-danger">*</span><br/> 
                                        <input type="text" class="textbox" style="width:65em;" title="Must Be A Ten Digit Indian Number" name="ph_no" pattern="^[9|8|7][0-9]{9}" placeholder="eg. 9876543210" required/>
                                        <br/>
                                        <small  class="form-text text-muted">
  Your phone number must be a 10 digit Indian number.
                                        </small></label>
                                    <label>Address<span class="text-danger">*</span><br/> 
                                        <textarea type="textarea" class="textbox" name="address" id="add" placeholder="21, Rajani Sen Road, Kolkata-700029." style="width:65em;"  required></textarea><br/>
                                        </label>
                                    <div class="row" style="margin-left: 0px;">
                                        Select the tests you want to book:<span class="text-danger">*</span><br/>
                                        <input type="checkbox" id="bloodgroup" name="testname" value="Blood Group">
                                        <label for="bloodgroup"> Blood group typing</label>
                                        <input type="checkbox" id="fullbodycheckup" name="testname" value="Full body checkup">
                                        <label for="fullbodycheckup"> Full body regular checkup</label>
                                        <input type="checkbox" id="covid" name="testname" value="covid">
                                        <label for="covid"> Covid test</label>
                                        <input type="checkbox" id="cbc" name="testname" value="cbc">
                                        <label for="cbc"> CBC</label>
                                        <input type="checkbox" id="urianalysis" name="testname" value="urianalysis">
                                        <label for="urianalysis"> Urianalysis</label>
                                        <input type="checkbox" id="tsh" name="testname" value="TSH">
                                        <label for="tsh"> TSH</label>
                                        <input type="checkbox" id="glucose" name="testname" value="glucose">
                                        <label for="glucose"> Glucose</label>
                                        <input type="checkbox" id="bloodanalysis" name="testname" value="blood analysis">
                                        <label for="bloodanalysis"> Blood Analysis</label>
                                        <input type="checkbox" id="xray" name="testname" value="X-ray">
                                        <label for="xray"> X-RAY</label>
                                        <input type="checkbox" id="ctscan" name="testname" value="CTscan">
                                        <label for="ctscan"> CT SCAN</label>
                                        <input type="checkbox" id="mri" name="testname" value="MRI">
                                        <label for="mri"> MRI</label>
                                        <input type="checkbox" id="ultrasound" name="testname" value="ultrasound">
                                        <label for="ultrasound"> Ultrasound</label>
                                        <input type="checkbox" id="pap" name="testname" value="pap smear">
                                        <label for="pap"> Pap Smear</label>
                                        <input type="checkbox" id="colon" name="testname" value="colonoscopy">
                                        <label for="colon"> Colonoscopy</label>
                                        <input type="checkbox" id="pet" name="testname" value="PET scan">
                                        <label for="pet"> PET Scan</label>
                                    </div>
                                    <br/>
                                    <input class="btn btn-success" id="submit" type="submit" />
                                </div>
                     </div>
                 </div>
             </form>
         </div>
    </body>
    <script>
        
        function validate(){
            var checkboxes = document.querySelectorAll('input[type="checkbox"]');
            var checkedOne = Array.prototype.slice.call(checkboxes).some(x => x.checked);
            if(!checkedOne){
                alert("Please select atleast one test");
                return false;
            }
        return true;
        }
    </script>
</html>
