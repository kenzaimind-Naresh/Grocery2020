<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
    <title>Provider Search</title>
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/style.css">

     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/font-awesome.min.css">

 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>-->
    <script  src="${resource(dir: 'js', file: 'createdoc.js')}"></script>

    <script type="text/javascript"> 
<!--
    (function () {
        if ("-ms-user-select" in document.documentElement.style && navigator.userAgent.match(/IEMobile\/10\.0/)) {
            var msViewportStyle = document.createElement("style");
            msViewportStyle.appendChild(
    document.createTextNode("@-ms-viewport{width:auto!important}")
);
            document.getElementsByTagName("head")[0].appendChild(msViewportStyle);
        }
    })();
    //--> 
    </script>

    <script type="text/javascript">
       
    </script>
</head>

<body>


    <div class="header">
        <div class="topbar">
            <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
                <div class="container">
                    <div class="pull-right">
                        <ul class="loginbar pull-right">
                            <li><a href="/ProviderSearch">Home</a></li>
                            <li class="topbar-devider"></li>
                            <li><a href="contactus.html">Contact Us</a></li>
                            <li class="topbar-devider"></li>
                            <li class="call">Call US: <span>+ 91 00000 00000</span></li>
                            
                        </ul>

                    </div>
                </div>
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/ProviderSearch/user/providerSearch.gsp">
                            <img src="/ProviderSearch/website/img/provider-logo.png" class="tm-logo" /></a>
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span> <i class="fa fa-bars"></i></button>
                    </div>
                    <div class="navbar-collapse collapse navbar-right">
                        <ul class="nav navbar-nav">

                            <li><a href="/ProviderSearch"><span>Home</span></a></li>
                            <li><a href="/ProviderSearch/user/doctorLogin1"><span>Login</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- body -->


    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
                <h3>Registration</h3>

                <g:form class="form-horizontal" role="form" controller="doctor" Id="myform" name="myform" action="savedoctor"  nonvalidate="nonvalidate">
                    <div class="form-group">
                        <div class="col-md-4 col-sm-4">
                            <label>Registration Id:</label>
                            <input type="text" id="regId" name="regId" class="form-control">
                            <span id="regIdinfo"></span>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <label>Clinic Name:</label>
                            <input type="text" id="clinicName" name="clinicName" class="form-control">
                            <span id="clinicNameinfo"></span>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <label>Speciality:</label>
                            <select name="speciality" id="speciality" class="form-control">
                                <option value="">--select--</option>
                                <option value="Allergist">Allergist</option>
                                <option value="Anaesthesiologist">Anaesthesiologist</option>
                                <option value="Andrologist">Andrologist</option>
                                <option value="Cardiologist">Cardiologist</option>
                                <option value="Cardiac Electrophysiologist">Cardiac Electrophysiologist</option>
                                <option value="Dermatologist">Dermatologist</option>
                                <option value="Emergency Room (ER) Doctors">Emergency Room (ER) Doctors</option>
                                <option value="Endocrinologist">Endocrinologist</option>
                                <option value="Epidemiologist">Epidemiologist</option>
                                <option value="Family Medicine Physician">Family Medicine Physician</option>
                                <option value="Gastroenterologist">Gastroenterologist</option>
                                <option value="Geriatrician">Geriatrician</option>
                                <option value="Hyperbaric Physician">Hyperbaric Physician</option>
                                <option value="Hematologist">Hematologist</option>
                                <option value=" Hepatologist"> Hepatologist</option>
                                <option value="Immunologist">Immunologist</option>
                                <option value="Infectious Disease Specialist">Infectious Disease Specialist</option>
                                <option value="Intensivist">Intensivist</option>
                                <option value="Internal Medicine Specialist">Internal Medicine Specialist</option>
                                <option value="Maxillofacial Surgeon / Oral Surgeon">Maxillofacial Surgeon / Oral Surgeon</option>
                                <option value="Medical Examiner">Medical Examiner</option>
                                <option value="Medical Geneticist">Medical Geneticist</option>
                                <option value="Neonatologist">Neonatologist</option>
                                <option value="Nephrologist">Nephrologist</option>
                                <option value="Neurologist">Neurologist</option>
                                <option value="Neurosurgeon">Neurosurgeon</option>
                                <option value="Nuclear Medicine Specialist">Nuclear Medicine Specialist</option>
                                <option value="Obstetrician/Gynecologist (OB/GYN)">Obstetrician/Gynecologist (OB/GYN)</option>
                                <option value="Occupational Medicine Specialist">Occupational Medicine Specialist</option>
                                <option value="Oncologist">Oncologist</option>
                                <option value="Ophthalmologist">Ophthalmologist</option>
                                <option value="Orthopedic Surgeon / Orthopedist">Orthopedic Surgeon / Orthopedist</option>
                                <option value="Otolaryngologist (also ENT Specialist)">Otolaryngologist (also ENT Specialist)</option>
                                <option value="Parasitologist">Parasitologist</option>
                                <option value="Pathologist">Pathologist</option>
                                <option value="Perinatologist">Perinatologist</option>
                                <option value="Periodontist">Periodontist</option>
                                <option value="Pediatrician">Pediatrician</option>
                                <option value="Physiatrist">Physiatrist</option>
                                <option value="Plastic Surgeon">Plastic Surgeon</option>
                                <option value="Psychiatrist">Psychiatrist</option>
                                <option value="Pulmonologist">Pulmonologist</option>
                                <option value="Radiologist">Radiologist</option>
                                <option value="Rheumatologist">Rheumatologist</option>
                                <option value="Sleep Doctor / Sleep Disorders Specialist">Sleep Doctor / Sleep Disorders Specialist</option>
                                <option value="Spinal Cord Injury Specialist">Spinal Cord Injury Specialist</option>
                                <option value="Sports Medicine Specialist">Sports Medicine Specialist</option>
                                <option value="Surgeon">Surgeon</option>
                                <option value="Thoracic Surgeon">Thoracic Surgeon</option>
                                <option value="Urologist">Urologist</option>
                                <option value="Vascular Surgeon">Vascular Surgeon</option>
                                <option value="Veterinarian">Veterinarian</option>
                                <option value="Acupuncturist">Acupuncturist</option>
                                <option value="Audiologist">Audiologist</option>
                                <option value="Ayurvedic Practioner">Ayurvedic Practioner</option>
                                <option value="Chiropractor">Chiropractor</option>
                                <option value="Diagnostician">Diagnostician</option>
                                <option value="Homeopathic Doctor">Homeopathic Doctor</option>
                                <option value="Microbiologist">Microbiologist</option>
                                <option value="Naturopathic Doctor">Naturopathic Doctor</option>
                                <option value="Palliative care specialist">Palliative care specialist</option>
                                <option value="Pharmacist">Pharmacist</option>
                                <option value="Physiotherapist">Physiotherapist</option>
                                <option value=" Podiatrist / Chiropodist"> Podiatrist / Chiropodist</option>
                                <option value="Registered Massage Therapist">Registered Massage Therapist</option>
                                
                            
                            
                            </select>
                            <span id=""></span>
                        </div>
                        
                    </div>

                    <div class="form-group">
                        <div class="col-md-4 col-sm-4">
                            <label>Experience(Yrs):</label>
                            <input type="text" id="experience" name="experience" class="form-control">
                            <span id="experienceinfo"></span>
                        </div>
					<div class="col-md-4 col-sm-4">
                            <label>First Name:</label>
                            <input type="text" id="dFirstname" name="dFirstname" class="form-control">
                            <span id="dFirstnameinfo"></span>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <label>Last Name:</label>
                            <input type="text" id="dLastname" name="dLastname" class="form-control">
                            <span id="dLastnameinfo"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-4 col-sm-4">
                            <label>Age:</label>
                            <input type="text" id="dAge" name="dAge" class="form-control">
                            <span id="dAgeinfo"></span>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <label>Gender:</label>
                            <select name="dGender" id="dGender" class="form-control">
                                <option value="">--select--</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                            <span id="dGenderinfo"></span>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <label>Mobile Number: </label>
                            <input type="text" id="mobileNumber" name="mobileNumber" class="form-control">
                            <span id="mobileNumberinfo"></span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                                                 <div class="col-md-4 col-sm-4">
                            <label>Email:</label>
                            <input type="text" id="email" name="email" class="form-control">
                            <span id="emailinfo"></span>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <label>Password:</label>
                            <input type="password" id="password" name="password" title="Password must be 6 characters including 1 uppercase letter, 1 lowercase letter and numeric characters" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" class="form-control">
                            
                        </div>
                        
                        <div class="col-md-4 col-sm-4">
                            <label>Address:</label>
                            <input type="text" id="address" name="address" class="form-control">
                            <span id="addressinfo"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        
                         <div class="col-md-4 col-sm-4">
                            <label>Locality:</label>
                            <input type="text" id="locality" name="locality" class="form-control">
                            <span id="localityinfo"></span>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <label>City:</label>
                            <input type="text" id="city" name="city" class="form-control">
                            <span id="cityinfo"></span>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <label>Pin Code:</label>
                            <input type="text" id="pin" name="pin" class="form-control">
                            <span id="pininfo"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-4 col-sm-4">
                            <label>Qualification:</label>
                            <select name="qualifcation" id="qualifcation" class="form-control">
                                <option value="">--select--</option>
                                <option value="MD">Doctor of Medicine (MD)</option>
                                <option value="Dr.MuD">Doctor of Medicine (Dr.MuD)</option>
                                <option value="Dr.Med">Doctor of Medicine (Dr.Med)</option>
                                <option value="MBBS">Bachelor of Medicine, Bachelor of Surgery (MBBS)</option>
                                <option value="BMBS">Bachelor of Medicine, Bachelor of Surgery (BMBS)</option>
                                <option value="MBChB">Bachelor of Medicine, Bachelor of Surgery (MBChB)</option>
                                <option value="MBBCh">Bachelor of Medicine, Bachelor of Surgery (MBBCh)</option>
                            </select>
                            <span id="qualifcationinfo"></span>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <label>Fee:</label>
                            <input type="text" id="fee" name="fee" class="form-control">
                            <span id="feeinfo"></span>
                        </div>
  						<div class="col-md-4 col-sm-4">
                            <label>Certifications:</label>
                            <input type="text" id="certifications" name="certifications" class="form-control">
                            <span id="certificationsinfo"></span>
                        </div>
						
						
						 <div class="col-md-4 col-sm-4">
						<label>Image:</label>
			
					 <input type="file" id="image" name="image" class="form-control"  accept="image/*" required>
                            <span id="imageinfo"></span>
  	
				</div>
				
				<div class="col-md-4 col-sm-4">
                            <label>Expire Date:</label>
                            <input type="text" id="demo" name="expiredDate" readonly class="form-control">
                            <span id="expiredDateinfo"></span>
                        </div>
				
                    </div>

                    <input type="hidden" id="blood_flag" name="blood_flag" value="0">
                    <input type="hidden" id="v_flag" name="v_flag" value="0">
                    <input type="hidden" id="lattitude" name="lattitude" value="NA">
                    <input type="hidden" id="longitude" name="longitude" value="NA">
                    <input type="hidden" id="choice" name="choice" value="0">

                    <input type="hidden" id="locUrl" name="locUrl" value="NA">
                    <input type="hidden" id="reference" name="reference" value="NA">
                    <input type="hidden" id="packName" name="packName" value="Basic">
                    <input type="hidden" id="status" name="status" value="1">
                    <input type="hidden" id="modifiedBy" name="modifiedBy" value="self">
                    <input type="hidden" id="myaction" name="myaction" value="save">
                    <input type="hidden" id="mode" name="mode" value="web">

                    <div class="form-group">
                        <div class="col-sm-12 text-center">
                            <button type="submit" class="btn btn-primary" onclick="return validateForm()">
                                Register</button>
                        </div>
                    </div>

                </g:form>
            </div>
        </div>
    </div>
   
    <!-- footer -->
    <div class="footer site-footer">
        <div class="container copy-foot">
            <div class="row">
                <div class="col-xs-12 col-md-6">
                    <ul>

                        <li><a href="#">Terms and Conditions</a></li>
                        <li class="foot-vert-line">|</li>
                        <li><a href="#">Privacy Policy</a></li>

                    </ul>
                </div>
            
                <div class="col-xs-12 col-md-6">
                    <p>Copyright © 2017. Provider Search. All right reserved.</p>
                </div>
            </div>


        </div>
    </div>
    <a href="#top" class="go-top"><i class="fa fa-chevron-up fa-1x"></i></a>
    <script src="/ProviderSearch/website/js/bootstrap.min.js"></script>
    <script src="/ProviderSearch/website/js/tm-script.js"></script>
    
    <script type="text/javascript">

   var date = new Date();
   date.setDate(date.getDate() + 90); // Set current date + 30 days as the new date
   
    document.getElementById("demo").value = (date.getMonth() + 1) + '/' + date.getDate() + '/' + date.getFullYear();
    
    
    </script>
    
</body>

</html>
