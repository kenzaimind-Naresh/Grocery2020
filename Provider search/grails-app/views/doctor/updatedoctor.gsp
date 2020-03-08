<html>
<title>Doctor Profile</title>
	<head>
  <style>
 
   .ui-autocomplete { height: 200px; width: 200px;overflow-y: scroll; overflow-x: hidden;}
  </style>
	
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script  src="${resource(dir: 'js', file: 'createdoc.js')}"></script>

<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};

</script>
<script>
$(document).ready(function(){
	
var gender = '${result.doctor.dGender}';
document.getElementById("dGender").value = gender;

var qualification = '${result.doctor.qualifcation}';
document.getElementById("qualifcation").value = qualification;

var certification = '${result.doctor.certifications}';
document.getElementById("certifications").value = certification;

var blood_flag = '${result.doctor.blood_flag}';
document.getElementById("blood_flag").value = blood_flag;

});


$(window).bind("load",function(){
	var choice = '${result.doctor.choice}';
	if(choice != "0"){
		document.getElementById("choice1").checked = true;
		document.getElementById("choice").value = "1";
	}else{
		document.getElementById("choice1").checked = false;
		document.getElementById("choice").value = "0";
		}  
});

</script>

<script type="text/javascript">
function check() {
	if(document.getElementById("choice1").checked == true){
		document.getElementById("choice").value = "1";
	}else{
		document.getElementById("choice").value = "0";
		}
}
</script>
 </head>

  <body>
        <g:render template="/user/dDashboard"/>
		<div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Doctor Update</h3>
            </div>
            
<a href="#"><img src="${fieldValue(bean: doctorInstance, field: "image")}"/></a>  
          
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-refresh pull-right dashicon"></i>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">

                    <form action="/ProviderSearch/doctor/saveupdate" method="post" id="myform" name="myform" nonvalidate="nonvalidate" class="form-horizontal" role="form">
                        <div class="form-group">
                            <div class="col-md-4 col-sm-4">
                                <label>Registration Id:</label>
                                <input type="text" id="regId" name="regId" value="${result.doctor.regId }" class="form-control">
                                <span id="regIdinfo"></span>
                            </div>

                            <div class="col-md-4 col-sm-4">
                                <label>Clinic Name:</label>
                                <input type="text" id="clinicName" name="clinicName" value="${result.doctor.clinicName }" class="form-control">
                                <span id="clinicNameinfo"></span>
                            </div>
                             <div class="col-md-4 col-sm-4">
                                <label>Speciality:</label>
                                <input type="text" id="speciality" name="speciality" value="${result.doctor.speciality }" class="form-control">
                                <span id="specialityinfo"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-4 col-sm-4">
                                <label>Experience(Yrs):</label>
                                <input type="text" id="experience" name="experience" value="${result.doctor.experience }" class="form-control">
                                <span id="experienceinfo"></span>
                            </div>
							<div class="col-md-4 col-sm-4">
                                <label>First Name:</label>
                                <input type="text" id="dFirstname" name="dFirstname" value="${result.doctor.dFirstname }" class="form-control">
                                <span id="dFirstnameinfo"></span>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <label>Last Name:</label>
                                <input type="text" id="dLastname" name="dLastname" value="${result.doctor.dLastname }" class="form-control">
                                <span id="dLastnameinfo"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-4 col-sm-4">
                                <label>Age:</label>
                                <input type="text" id="dAge" name="dAge" value="${result.doctor.dAge }" class="form-control">
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
                                <input type="text" id="mobileNumber" name="mobileNumber" value="${result.doctor.mobileNumber }" class="form-control">
                                <span id="mobileNumberinfo"></span>
                            </div>
                        </div>
                        
                        <div class="form-group">
                           
                             <div class="col-md-4 col-sm-4">
                                <label>Address:</label>
                                <input type="text" id="address" name="address" value="${result.doctor.address }" class="form-control">
                                <span id="addressinfo"></span>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <label>Locality:</label>
                                <input type="text" id="locality" name="locality" value="${result.doctor.locality }" class="form-control">
                                <span id="localityinfo"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <label>City:</label>
                                <input type="text" id="city" name="city" value="${result.doctor.city }" class="form-control">
                                <span id="cityinfo"></span>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <label>Pin Code:</label>
                                <input type="text" id="pin" name="pin" value="${result.doctor.pin }" class="form-control">
                                <span id="pininfo"></span>
                            </div>
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
								 </select>Check me: <input id="choice1" type="checkbox" onclick="check()"/>
                                <span id="qualifcationinfo"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-4 col-sm-4">
                                <label>Fee:</label>
                                <input type="text" id="fee" name="fee" value="${result.doctor.fee }" class="form-control">
                                <span id="feeinfo"></span>
                            </div>
 							<div class="col-md-4 col-sm-4">
                                <label>Lattitude:</label>
                                <input type="text" id="lattitude" name="lattitude" value="${result.doctor.lattitude }" class="form-control">
                                <span id="lattitudeinfo"></span>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <label>Longitude:</label>
                                <input type="text" id="longitude" name="longitude" value="${result.doctor.longitude }" class="form-control">
                                <span id="longitudeinfo"></span>
                            </div>
                        </div>

                        <div class="form-group">
						<div class="col-md-4 col-sm-4">
                                <label>Blood Donation:</label>
                                 <select id="blood_flag" class="form-control" name="blood_flag">
							<option value="0">NA</option>
							<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
							 </select>
                                <span id="blood_flaginfo"></span>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <label>Certifications:</label>
                                <input type="text" id="certifications" name="certifications" value="${result.doctor.certifications }" class="form-control">
                                <span id="certificationsinfo"></span>
                            </div>
                        </div>

                        <input type="hidden" id="choice" name="choice" >
             <input type="hidden" id="v_flag" name="v_flag" value="${result.doctor.v_flag}">
               <input type="hidden" id="email" name="email" value="${result.doctor.email}">
             <input type="hidden" id="packName" name="packName" value="${result.doctor.packName}">
              <input type="hidden" id="status" name="status" value="${result.doctor.status}">
             <input type="hidden" id="locUrl" name="locUrl" value="${result.doctor.locUrl}">
             <input type="hidden" id="password" name="password" value="${result.doctor.password}">
            <input type="hidden" id="reference" name="reference" value="${result.doctor.reference}">
            <input type="hidden" id="modifiedBy" name="modifiedBy" value="${result.doctor.modifiedBy}">
            <input type="hidden" id="doctorId" name="doctorId" value="${result.doctor.doctorId}">
            <input type="hidden" id="mode" name="mode" value="web">

                        <div class="form-group">
                            <div class="col-sm-12 text-center">
                                <button type="submit" class="btn btn-primary" onclick="return validateForm()">
                                    Update</button>
                            </div>
                        </div>

                    </form>   

                </div>
            </div>
        </div>
    </div>
    
    

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


  </body>
</html>