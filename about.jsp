<%-- 
    Document   : about.jsp
    Created on : 02-Apr-2022, 8:12:46 am
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Page</title>
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
        <%session.setAttribute("prev_page","about.jsp");%>
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
        <li class=""><a href="index.jsp">Login</a></li>
        <li class="active"><a href="#">About</a></li>
        <li class=""><a href="#" onclick="loginAlert();">Book Ambulance</a></li>
        <li class=""><a href="#" onclick="loginAlert();">Blood Bank</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="registration.jsp"><span class="glyphicon glyphicon-user"></span> SignUp</a></li>
        <li class=""><a href="adminlogin.jsp"><span class="fa fa-solid fa-user-shield" style="color:#5cb85c"></span> Admin</a></li>
        </ul>
        </ul>
         </header>
        <!--Header ends Here-->
       <!--About Us-->
       <div id="about" class="container-fluid">
 
    
        <h2 class="greenify"><span class="glyphicon glyphicon-plus-sign" style="font-size: 80px;"></span>About Inas Hospital  </h2> <br>
      <h4>Our Hospital was established in 1982. It was founded by Nobel laureate Dr. Indrani Rana(Ph.D Neuroscience, University of Oxford, London, England. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

      </div>
       <ul class="nav  nav-pills">
    <li class="active"><a data-toggle="tab" href="#home">General Checkup</a></li>
    <li><a data-toggle="pill" class="" href="#neurology">Neurology</a></li>
    <li><a data-toggle="pill" href="#cardiology">Cardiology</a></li>
    <li><a data-toggle="pill" href="#pulmonology">Pulmonology</a></li>
    <li><a data-toggle="pill" href="#dentistry">Dentistry</a></li>
    <li><a data-toggle="pill" href="#orthopedic">Orthopedic</a></li>
    <li><a data-toggle="pill" href="#opthalmology">Opthalmology</a></li>
    <li><a data-toggle="pill" href="#obstetrics">Obstetrics</a></li>
    <li><a data-toggle="pill" href="#pediatrics">Pediatrics</a></li>
    <li><a data-toggle="pill" href="#gynocology">Gynocology</a></li>
    <li><a data-toggle="pill" href="#dermatology">Dermatology</a></li>
    <li><a data-toggle="pill" href="#ent">ENT</a></li>
    <li><a data-toggle="pill" href="#emg">Emergency</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/gc.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">General Checkup</h4>
                    <p class="card-text">At Inas Hospital get comprehensive and quality tests assessing the functionality of all body parts. Regular check-ups help in identifying possible health conditions at an early stage, and the adage that “Prevention is better than cure” has never been truer. Early detection gives one the best chance of fighting the disease off without any complication.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="neurology" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/Neuro.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Neurology</h4>
                    <p class="card-text">Our Department of Neurology consists of highly experienced neurologists and neurosurgeons who provide accurate diagnosis and care for patients. Our globally accredited hospitals feature a wide range diagnostic and treatment facilities that include Tesla MRI and CT scanners, ECG, & EEG. The facilities also have state-of-the-art Critical Care Units and rehabilitation centers to provide expert care and recovery for patients.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="cardiology" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/cardiology.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Cardiology</h4>
                    <p class="card-text">At Inas Hospital, we have a team of highly qualified and experienced cardiologists, interventional cardiologists, and cardiac surgeons who provide comprehensive care for a wide range of cardiac conditions for all ages.

Treatment for Cardiac conditions offered at Inas Hospital ranges from medication, treatment of underlying conditions, interventional procedures to both minimally invasive and open heart surgery.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="pulmonology" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/pulmonology.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Pulmonology</h4>
                    <p class="card-text">Our dedicated team of Pulmonologists help in the treatment of various Lung Disorders including Breathing Problems due to Allergy & Asthma, and conditions such as Chronic Obstructive Pulmonary Disorder and even snoring.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="dentistry" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/dent.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Dentistry</h4>
                    <p class="card-text">The Dentistry Department at Inas hospital is a highly sophisticated unit that caters from simple tooth ache to tooth implants, from simple to most complex oral and dental surgeries.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="orthopedic" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/ortho.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Orthopedic</h4>
                    <p class="card-text">In the case of a sports injury or accidental fall, bones require immediate attention, which can be best provided by some of the top orthopaedic doctors at Inas Hospital, Kolkata. And to get you back home easily and go about your daily tasks, our orthopaedic surgery specialists are committed to providing the highest standards of medical diagnosis and treatment.

At Inas Hospital, we have some of the best orthopaedic surgeons in Kolkata who push the boundaries of the medical world to put the patient back on his feet as soon as possible.</p>
                </div>

            </div>
        </div>
    </div>
   
    
    <div id="opthalmology" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/oph.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Opthalmology</h4>
                    <p class="card-text">Our Department of ophthalmology provides treatment for various conditions  such as Cataract, Cornea and refractive, Retina, Lasik and Smile, Orbit and Oculoplasty, Glaucoma, Uvea, Neuro Ophthalmology and Squint and Paediatric Ophthalmology are provided. The other services are Refractive error correction, glasses, Contact Lens, Advanced Lasik customized to individual eye’s. Hi-tech Cataract Surgery – Phaco, Glaucoma, Child eye care, Low Vision Aid, Ocular Oncology and Corneal disorder.</p>
                </div>

            </div>
        </div>
    </div>
   
    
    <div id="obstetrics" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/obs.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Obstetrics</h4>
                    <p class="card-text">Services offered by this department are

 Routine pregnancy care,
 High risk pregnancy care,
 Painless labor,
 advanced special care unit for premature babies. All types of infertility management procedures are performed. Special arrangement can be made for IVF ( Test Tube Baby ).

Facilities are also available to treat patients suffering from primary or secondary infertility for both male and female partners.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="pediatrics" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/pedia.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Pediatrics</h4>
                    <p class="card-text">The Department of Pediatrics includes a Neonatal Intensive Care Unit, Paediatric Ward, Paediatric Allergy Clinic, Paediatric Child Guidance Clinic, & Well Baby Clinic run by a team of well qualified specialists. These specialists render services which include general paediatrics, immunisation, neonatal surgery & specialized neonatal care.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="gynocology" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/gyno.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Gynecology</h4>
                    <p class="card-text">Our Department of Gynecology provides a full range of emergency and elective gynaecological services, which include management of menstrual disturbances, endometriosis and hormone related problems. Urogynaecology offers a comprehensive range of investigations and management options for the treatment of female urinary incontinence and pelvic organ prolapse.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="dermatology" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/derma.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Dermatology</h4>
                    <p class="card-text">The Dermatology department treats diseases of the skin & diverse cases like skin rashes due to infections, ring worms, scaly patches due to bacterial infections, fungal infections and sexually transmitted diseases.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="ent" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/ent.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">ENT</h4>
                    <p class="card-text">The department has an audiology and speech therapy center with latest diagnostic and therapeutic equipments. It is committed to expanding the frontiers of diagnosis , treatment and research in disorders of the ear , nose and throat. A team of highly trained specialists provide excellent service to patients from not only India but also from the neighboring countries. Several high end surgeries are performed routinely here besides routine surgeries of ear, nose, throat and head & neck region.</p>
                </div>

            </div>
        </div>
    </div>
   
    <div id="emg" class="tab-pane fade" style="margin:30px;">
      <div class="card">
            <div class="row">
                <div class="card-header col-sm-5">
                    <img class="card-img" src="assets/emer.jpg" alt="">
                </div>
                <div class="card-body col-sm-7 ">
                    <h4 class="card-title">Emergency</h4>
                    <p class="card-text">The Emergency Department has undergone a refit to transform itself into a very modern state of the art facility, in a fully equipped 19 bed Emergency Department with well trained Emergency Physicians.
                    We are one of the busiest Emergency Departments in Kolkata - setting high standards in patient care and are well-prepared to meet the demands of the emergency room. Our department is manned at all times by Emergency Physicians who have had specialist training in the field of Emergency Medicine.
</p>
                </div>

            </div>
        </div>
    </div>
   
    
  </div>
       
       <!-- Carousel Begins Here -->

     <h3 class="text-success text-center" >Testimonials</h3>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <h4>"The experience here was wonderful..The doctors and team of medical staff have been very cooperative. The care and support received here has helped our patient recover from the most critical condition."
            <br><span>Pranav Das, Lawyer</span></h4>
      </div>
      <div class="item">
        <h4>" I'm happy at their services. Staff and doctors were helpful. Hospital environment is really clean."
            <br><span>Muhin Uddin, Salesman</span></h4>
      </div>
      <div class="item">
        <h4>"Such a calm, quite and peaceful hospital in kolkata... really good experience"
            <br><span>Erica Fernandes, Actor, Kuch Rang Pyar Ke Aise Bhi</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


       <!--FOOTER-->
       <footer id="footer">  
<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center text-success">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
        <p class="text-success">Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Kolkata, India</p>
      <p><span class="fa fa-ambulance" style="color: #28A745;"></span> Call +91 1515151515  or <a style="color:green" onclick="loginAlert()">Book Ambulance Online</a></p>
      <p><span class="glyphicon glyphicon-phone-alt"></span> +91 9898989898</p>
      <p><span class="glyphicon glyphicon-envelope"></span> contact@inashospital.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-success pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>
       </footer>
       <script>function loginAlert(){
            alert("Please Login first!");
        }</script>
    </body>
</html>
