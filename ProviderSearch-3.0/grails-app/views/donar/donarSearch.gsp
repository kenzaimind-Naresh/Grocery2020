<!DOCTYPE html>
<html lang="en">
<!-- InstanceBegin template="/Templates/tourmedimasterpage.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
    
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Provider Search</title>
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/style.css">

     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/font-awesome.min.css">


<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5d1ef55e22d70e36c2a440b7/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->


 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
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
$(function() {
	
    $("#city1").autocomplete({
       source:[
               <g:each in="${result.solrresult.solrdata}">
               
               '${it}', 
           
        </g:each>]
    });

   
  });


jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});

</script>
 
 <style type="text/css">
 table tr {
    cursor: pointer;
}

 .ui-autocomplete { height: 200px; width: 200px;overflow-y: scroll; overflow-x: hidden;}
 </style>

    <script type="text/javascript">
       
    </script>

    <!-- InstanceEndEditable -->
    <!-- InstanceBeginEditable name="head" -->
    <!-- InstanceEndEditable -->
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
                            
                            <button type="button" onclick="myFunction()">Contact Us</button>

<script>
function myFunction() {
var elmnt = document.getElementById("content");
elmnt.scrollIntoView();
}
</script>
                            
                            
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
                            <li><a href="/ProviderSearch/website/aboutus.html"><span>About Us</span></a></li>
                            <li><a href="/ProviderSearch/website/services.html"><span>Services</span></a></li>
                            <li><a href="/ProviderSearch/user/doctorLogin1"><span>Doctor Login</span></a></li>
                            <li><a href="/ProviderSearch/user/pharmacyLogin1"><span>Pharmacy Login</span></a></li>
                            <li><a href="/ProviderSearch/user/login1"><span>Admin</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- body -->

    <div class="matterbg">
        <div class="container intro-header">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="intro-book">

                        <ul class="nav nav-tabs nav-justified" role="tablist">
                            <li ><a href="#home" role="tab" data-toggle="tab">FIND PROCEDURE COST</a></li>
                            <li><a href="/ProviderSearch/user/providerSearch" >FIND DOCTOR</a></li>
                            <!--<li><a href="#facility" role="tab" data-toggle="tab">FIND FACILITY</a></li>-->
                            <li ><a href="/ProviderSearch/pharmacy/drugSearch">FIND DRUG</a></li>
                            <li class="active">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">FIND BLOOD<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/ProviderSearch/donar/createdonar">Blood Donor Register</a></li>
                                     <!--<li><a href="postblood.html">Post for Blood</a></li>-->
                                    <li ><a href="/ProviderSearch/donar/donarSearch">Search for Donor</a></li>
                                </ul>
                            </li>
                            <!--<li><a href="#pharmacy" role="tab" data-toggle="tab">FIND PHARMACY</a></li>-->
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade in " id="home">
                                <form class="form-signin text-center" role="form">
                                    <input type="search" class="form-control" placeholder="Text"
                                        required="" autofocus="">
                                    <input type="search" class="form-control" placeholder="Zip code or Location" required="">
                                    <a href="#" class="btn btn-primary" type="submit">Search</a>
                                </form>
                            </div>
                            <div class="tab-pane fade in" id="doctor">
                                <g:form class="form-signin text-center" role="form" id="myform" name="myform" controller="user" action="providerSearchinfo">
                                   <input class="form-control" id="city" name="city" type="text" placeholder="Search by City"/>
                                    <input class="form-control" id="speciality" name="speciality" type="text" placeholder="Search by Speciality"/>
                                    <select  class="form-control" name="dGender" id="dGender"  >
						             <option value="" >--Select Gender--</option>
						             <option value="Male" >Male</option>
						             <option value="Female" >Female</option>
						             </select>
						             <input type="hidden" id="mode" name="mode" value="web">
                                     <button class="btn btn-primary " name="submit" type="submit">Submit</button>
                                </g:form>
                            </div>
                            <div class="tab-pane fade in" id="facility">
                                <form class="form-signin text-center" role="form">
                                    <input type="search" class="form-control" placeholder="Search by city" required="" autofocus="">
                                    <input type="search" class="form-control" placeholder="Search by Facility Name" required="">
                                    <a href="#" class="btn btn-primary" type="submit">Go</a>
                                </form>
                            </div>
                            <div class="tab-pane fade in" id="drug">
                              <g:form class="form-signin text-center" role="form" id="myform" name="myform" controller="pharmacy" action="drugSearchinfo">
                                   <input class="form-control" id="drugName" name="drugName" type="text" placeholder="Search by DrugName"/>
                                    <input class="form-control" id="locality" name="locality" type="text" placeholder="Search by Locality"/>
						             <input type="hidden" id="mode" name="mode" value="web">
                                     <button class="btn btn-primary " name="submit" type="submit">Submit</button>
                                </g:form>
                            </div>

                            <div class="tab-pane fade in active">
                                 <g:form class="form-signin text-center" role="form" id="myform" name="myform" controller="donar" action="donarSearchinfo">

                                            <select name="bloodgroup" id="bloodgroup" class="form-control">
                                                <option value="">--Select Bloodgroup--</option>
                                                <option value="A+">A+</option>
												 <option value="A-">A-</option>
                                
												 <option value="B+">B+</option>
												 <option value="B-">B-</option>
                                
												 <option value="AB+">AB+</option>
												 <option value="AB-">AB-</option>
                                
												 <option value="O+">O+</option>
												 <option value="O-">O-</option>
                                
												 <option value="A1+">A1+</option>
												 <option value="A1-">A1-</option>
                                
												 <option value="A2+">A2+</option>
												 <option value="A2-">A2-</option>
                                
												 <option value="A1B+">A1B+</option>
												 <option value="A1B-">A1B-</option>
                                
												 <option value="A2B+">A2B+</option>
												 <option value="A2B-">A2B-</option>
                                
												 <option value="BOMBAY">Bombay Blood Group</option>
                                            </select>
                                       
                                        <input class="form-control" id="city1" name="city1" type="text" placeholder="Search by Place"/>
						             <input type="hidden" id="mode" name="mode" value="web">
                                       <button type="submit" name="submit" class="btn btn-primary" >Submit</button>
                                </g:form>
                            </div>


                            <div class="tab-pane fade in" id="pharmacy">
                                <form class="form-signin text-center" role="form">
                                    <input type="search" class="form-control" placeholder="Search by City" required="" autofocus="">
                                    <input type="search" class="form-control" placeholder="Search by Pharmacy Name" required="">
                                    <a href="#" class="btn btn-primary" type="submit">Search</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <form class="form-inline pull-right fmaccept">
                        <div class="form-group">

                            <div class="checkbox">
                                <label class="checkbox">
                                    <input name="remember" type="checkbox" value="yes" />
                                    Accepting New patients
                                </label>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="checkbox">
                                <label class="checkbox">
                                    <input name="remember" type="checkbox" value="yes" />
                                    Primary Care Providers
                                </label>
                            </div>
                        </div>
                        <div class="form-group">

                            <button class="btn btn-primary " name="filters" type="reset">Reset Filters</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="contentbg" style="background-color: #333;">
        <div class="container">
            <div class="textbanner">
                <h3>Provider Search: Help Your Members Connect with the Right Care</h3>
            </div>
        </div>
    </div>

    <div class="container contentpd">
        <div class="row">

            <div class="col-xs-12 col-sm-12 col-md-12">

               <h3>Welcome Message</h3>

                <p>For nearly three decades, Hospital Management has provided high-quality, committed, and compassionate care to the community and 
				I am proud that we are the hospital of choice for generations of across Global families.
				We are committed to the best patient care possible and we treat each patient as we treat our families; they deserve nothing less. </p>
                <p>We hope this website becomes a valuable source of information for you in times of need. 
				We are here to help, whatever your medical situation may be. The site will help you to find out more about the hospital, access our services, and understand our goals and objectives.
				It will be regularly updated and improved, just as we constantly seek better ways to provide healthcare for our patients.</p>
				
				<p>We continually strive to be your healthcare partner for life,
				so we welcome your feedback on how Hospital Management is performing. 
				If you have any suggestions, please go to the website's "CONTACTUS" section and submit your comments.
				And if we are doing well, we'd like to know that too!
				</p>
                           </div>

        </div>
    </div>

    <div class="contentbg">
        <div class="container contentpd">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">

                    <h3>Products</h3>
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <div class="thumbnail">
                                <a href="#"
                                    target="_blank">
                                    <img src="/ProviderSearch/website/img/doctor2.jpg" />
                                    <div class="caption">
                                        <h2>Doctor</h2>
                                        <p>
                                           Doctors perform health assessments, 
										   run diagnostic tests, prescribe medication, create treatment plans and provide health and wellness advice to patients. 
										   Medical Doctors can specialize in specific areas of health, such as dermatology, neurology, gastroenterology or gynecology  and ETC..    
                                        </p>

                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <div class="thumbnail">
                                <a href="#"
                                    target="_blank">
                                    <img src="/ProviderSearch/website/img/Laboratory.jpg" />
                                    <div class="caption">
                                         <h2>Lab</h2>
                                        <p>
                                          A medical laboratory or clinical laboratory is a laboratory where clinical pathology
										  tests are carried out on clinical specimens to obtain information about the health of a patient
										  to aid in diagnosis, treatment, and prevention of disease.      
                                        </p>

                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <div class="thumbnail">
                                <a href="#"
                                    target="_blank">
                                    <img src="/ProviderSearch/website/img/pharmacy.jpg" />
                                    <div class="caption">
                                        <h2>Pharmacy</h2>
                                        <p>
                                          Prepares medications by reviewing and interpreting physician orders; detecting therapeutic incompatibilities.
										  Dispenses medications by compounding, packaging, and labeling pharmaceuticals. 
										  Controls medications by monitoring drug therapies; advising interventions.      
                                        </p>

                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

<div id="myDIV">
<div id="content">
<div class="container contentpd">
<h3>Contact Us</h3>
<div class="row">

<div class="col-md-6">
<iframe src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=kenzaimind%20Info%20Solutions+(Kenzaimind%20Info%20Solutions)&amp;ie=UTF8&amp;t=&amp;z=18&amp;iwloc=B&amp;output=embed" width="100%" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
</div>



<div class="col-md-6">
<g:form controller="contactus" class="form-horizontal" role="form" id="myform" name="myform" action="savecontact" nonvalidate="nonvalidate"> 

<div class="form-group">

<div class="col-md-12 inputGroupContainer">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
<input name="firstName" placeholder="First Name" id="firstName" class="form-control" type="text">
<span id="firstNameinfo"></span>
</div>
</div>
</div>


<div class="form-group">

<div class="col-md-12 inputGroupContainer">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
<input name="lastName" placeholder="Last Name" id="lastName" class="form-control" type="text">
<span id="lastNameinfo"></span>
</div>
</div>
</div>


<div class="form-group">

<div class="col-md-12 inputGroupContainer">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
<input name="email" placeholder="E-Mail Address" id="email" class="form-control" type="text">
<span id="emailinfo"></span>
</div>
</div>
</div>


<div class="form-group">

<div class="col-md-12 inputGroupContainer">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
<input name="mobileNumber" placeholder="(845)555-1212" id="mobileNumber" class="form-control" type="text">
<span id="mobileNumberinfo"></span>
</div>
</div>
</div>


<div class="form-group">

<div class="col-md-12 inputGroupContainer">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
<input name="address" placeholder="Address" id="address" class="form-control" type="text">
<span id="addressinfo"></span>
</div>
</div>
</div>

<!-- Text input-->

<div class="form-group">

<div class="col-md-12 inputGroupContainer">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
<input name="city" placeholder="city" id="city" class="form-control" type="text">
<span id="cityinfo"></span>
</div>
</div>
</div>

<!-- Select Basic -->

<div class="form-group">

<div class="col-md-12 selectContainer">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
<select name="state" id="state" class="form-control selectpicker">
<option value=" ">Please select your state</option>
<option>Andhra Pradesh</option>
<option>Arunachal Pradesh</option>
<option>Assam</option>
<option>Bihar</option>
<option>Chhattisgarh</option>
<option>Goa</option>
<option>Gujarath</option>
<option>Haryana</option>
<option>Himachal Pradesh</option>
<option>Jammu and Kashmir</option>
<option>Jharkand</option>
<option>Karnataka</option>
<option>Kerala</option>
<option>Madhya Pradesh</option>
<option>Maharashtra</option>
<option>Manipur</option>
<option>Meghalaya</option>
<option>Mizoram</option>
<option>Nagaland</option>
<option>Odisha</option>
<option>Punjab</option>
<option>Rajasthan</option>
<option>Sikkim</option>
<option>Tamilnadu</option>
<option>Telangana</option>
<option>Tripura</option>
<option>Uttarakhand</option>
<option>Uttar Pradesh</option>
<option>West Bengal</option>

</select>
</div>
</div>
</div>

<!-- Text input-->

<div class="form-group">

<div class="col-md-12 inputGroupContainer">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
<input name="zipCode" placeholder="Zip Code" id="zipCode" class="form-control" type="text">
<span id="zipCodeinfo"></span>
</div>
</div>
</div>

<input type="hidden" id="modifiedBy" name="modifiedBy" value="self">
<input type="hidden" id="myaction" name="myaction" value="save">
<input type="hidden" id="mode" name="mode" value="web">
<!-- Button -->
<div class="form-group">

<div class="col-md-12 text-center">
<button type="submit" class="btn btn-primary" onclick= "return validateForm()">
SEND MAIL</button>

</div>
</div>


</g:form>

</div>

</div>
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
</body>

</html>
