<%-- 
    Document   : bookappointment
    Created on : 03-Apr-2022, 7:28:17 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Appointment</title>
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
       
        <li class="active"><a href="#">Book Appointment</a></li>
        <li class=""><a href="bookambulance.jsp">Book Ambulance</a></li>
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
        <a href="viewAppointment.jsp" class="btn btn-success text-center"> View Appointments</a>
        <h3 class="text-success">Select the type of doctor you want to meet.. </h3> 
         <div class="row" >
             <div class="card col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <span class="fa fa-stethoscope text-success " style="font-size:100px;"></span> 
                  <details>
                    <summary>GENERAL CHECKUP</summary>
                    <p>Routinely evaluating your risk factors for various medical conditions, screening for cancer and other diseases, and assessing your lifestyle habits helps you stay healthy while reducing your risk of chronic or life threatening diseases.</p>
                  </details>
                  <a href="general_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
             <div class="card  col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <i class=" fa fa-solid fa-brain text-success " style="font-size:100px;"></i> 
                  <details>
                    <summary>NEUROLOGIST</summary>
                    <p>Neurologists are doctors who diagnose and treat problems with the brain and nervous system. </p>
                  </details>
                  <a href="neuro_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
             <div class="card  col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <span class="fa fa-solid fa-heart-pulse text-success " style="font-size:100px;"></span> 
                  <details>
                    <summary>CARDIOLOGIST</summary>
                    <p>A cardiologist is a doctor who specializes in treating diseases of the cardiovascular system — mainly the heart and blood vessels.</p>
                  </details>
                  <a href="cardio_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
         </div>
         <div class="row">
             <div class="card col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <span class="fa fa-lungs text-success " style="font-size:100px;"></span> 
                  <details>
                    <summary>PULMONOLOGIST</summary>
                    <p>A pulmonologist is a doctor who diagnoses and treats diseases of the respiratory system -- the lungs and other organs that help you breathe.</p>
                  </details>
                  <a href="pulmo_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
             <div class="card  col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <i class=" fa fa-tooth text-success " style="font-size:100px;"></i> 
                  <details>
                      <summary>DENTIST</summary>
                    <p>Dentists are doctors who specialize in oral health-- teeth, gums and mouth in general.</p>
                  </details>
                  <a href="dental_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
             <div class="card  col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <span class="fa fa-solid fa-bone text-success " style="font-size:100px;"></span> 
                  <details>
                    <summary>ORTHOPEDIST</summary>
                    <p>Orthopedists are medical doctors who specialize in musculoskeletal system-- bones, joints and muscles.</p>
                  </details>
                  <a href="ortho_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
         </div> 
         <div class="row">
             <div class="card col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <span class="glyphicon glyphicon-eye-open" style="font-size:96px;color:#105F25;"></span> 
                  <details>
                    <summary>OPHTHALMOLOGIST</summary>
                    <p> Ophthalmologists are medical doctors who specialize in treating eye and vision problems.</p>
                  </details>
                  <a href="opthalmo_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
             <div class="card  col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <i class=" fa fa-solid fa-person-breastfeeding text-success " style="font-size:100px;"></i> 
                  <details>
                      <summary>OBSTETRICIAN</summary>
                    <p>An obstetrician is a doctor who specializes in pregnancy, childbirth, and a woman's reproductive system.</p>
                  </details>
                  <a href="obs_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
             <div class="card  col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <span class="fa fa-solid fa-child-reaching text-success " style="font-size:100px;"></span> 
                  <details>
                    <summary>PEDIATRICIAN</summary>
                    <p>A pediatrician is a medical doctor who specializes in providing care for children from birth through childhood.</p>
                  </details>
                  <a href="pedia_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
         </div>
         <div class="row">
             <div class="card col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <span class="glyphicon fa fa-venus" style="font-size:100px;color:#105F25;"></span> 
                  <details>
                    <summary>GYNECOLOGIST</summary>
                    <p>Gynecologists give reproductive and sexual health services. They diagnose and treat reproductive system disorders such as endometriosis, infertility, ovarian cysts, and pelvic pain</p>
                  </details>
                  <a href="gyne_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
             <div class="card  col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <i class=" fa fa-solid fa-hand-dots text-success " style="font-size:100px;"></i> 
                  <details>
                      <summary>DERMATOLOGIST</summary>
                    <p>A dermatologist is a doctor who specializes in diagnosing and treating a broad array of conditions that affect your skin, hair, and nails.</p>
                  </details>
                  <a href="derma_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
             <div class="card  col-sm-4" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card-body bg-success text-center">
                  <span class="fa fa-duotone fa-deaf text-success " style="font-size:100px;"></span> 
                  <details>
                    <summary>ENT SPECIALIST</summary>
                    <p>ENTs are medical doctors who specialize in conditions with the ears, nose, and throat.</p>
                  </details>
                  <a href="ent_doclist.jsp" class="btn btn-block btn-success">Select</a>
                </div>
             </div>
         </div>
    </div>     
            
        
    
    </body>
</html>
