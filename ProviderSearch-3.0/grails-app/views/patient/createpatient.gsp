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


 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script  src="${resource(dir: 'js', file: 'createpat.js')}"></script>
  
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

jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});

$(document).ready(function () {
	 $("#date").datepicker({
       minDate: 0,autoclose: true,
       onSelect:function (){
			$("#dateinfo").text("");
	    }
   });
   });

function getdata() {
	 var date= document.getElementById("date1").value
	 var doctorId = document.getElementById("doctorId").value
	 var path = "/ProviderSearch/Appointment/getdata";
	 $.ajax({
	  url : path,
	  type : "get",
	  data :{
	   date : date,
	   doctorId:doctorId
	  },
	  success : function(res) {
		  alert(res.split("#")[1])
	  },
	  error : function() {
	  }
	 })
	}
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

        <div class="container intro-header">
            <div class="row">
                <div class="col-xs-6 col-sm-12 col-md-12  ">
                  
<div class="row">
            <div class="col-xs-8 col-sm-12 col-md-12">
                <h3>Appointment Booking</h3>
            </div>
           
        </div>
        <div class="row">
            <div class="col-lg-12 col-sm-offset-2">
           <g:form class="form-horizontal" controller="patient" Id="myform" name="myform"
			action="savepatient" nonvalidate="nonvalidate">
			 
            
            <div class="form-group">
                            <div class="col-md-3 col-sm-3">
					<p style="font-size:20px;color:black">Doctor: <b>${result.Dname.dFirstname}</b></p>
						</div>
                            <div class="col-md-3 col-sm-3">
						<p style="font-size:20px;color:black">Date: <b>${result.date }</b></p></div>
						<div class="col-md-3 col-sm-3">
						 <p style="font-size:20px;color:black">Time:<b>${result.time }</b></p>
						</div>
						</div>
						
						
				 
				 
           <div class="form-group">
                            <div class="col-md-4 col-sm-4">
					<label for="pFirstname" style="color: black;">First Name:
					</label>
					<input type="text" id="pFirstname" class="form-control"
						name="pFirstname">
						<span id=pFirstnameinfo></span></div>
						
                            <div class="col-md-4 col-sm-4">
					<label for="pLastname" style="color: black;">Last Name: </label>
					<input type="text" id="pLastname" class="form-control"
						name="pLastname">
						<span id=pLastnameinfo></span></div></div>
				


				 <div class="form-group">
                            <div class="col-md-4 col-sm-4">
					<label for="pAge" style="color: black;">Age: </label>
					<input type="text" id="pAge" name="pAge" class="form-control">
						<span id=pAgeinfo></span></div>
                            <div class="col-md-4 col-sm-4">
					<label for="pGender" style="color: black;">Gender: </label>
					<!-- <td id="test3"><input type="text" id="pGender" name="pGender" style="height:27px;width:260px;border-radius:5px"><br>-->
					<select name="pGender" id="pGender" class="form-control">
							<option value="">--select--</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
					</select> <span id=pGenderinfo></span></div></div>
				

				 <div class="form-group">
                            <div class="col-md-4 col-sm-4">
					<label for="mobileNumber" style="color: black;">Mobile Number: </label>
					<input type="text" id="mobileNumber"
						name="mobileNumber" class="form-control">
						<span id=mobileNumberinfo></span></div>
                            <div class="col-md-4 col-sm-4">
					<label for="email" style="color: black;">Email: </label>
					<input type="text" id="email" name="email" class="form-control">
						<span id=emailinfo></span>
						</div></div>
					<input type="hidden" id="alternateMobile"
						name="alternateMobile" value="1234567890">
						
				

					 <div class="form-group">
                            <div class="col-md-4 col-sm-4">
					<label for="address" style="color: black;">Address: </label>
					<input type="text" id="address" name="address" class="form-control">
						<span id=addressinfo></span></div>
                            <div class="col-md-4 col-sm-4">
					<label for="pin" style="color: black;">Pin Code: </label>
					<input type="text" id="pin" name="pin" class="form-control">
						<span id=pininfo></span>
						</div></div>
				

				 <div class="form-group">
                            <div class="col-md-4 col-sm-4">
					<label for="fee" style="color: black;">Fee: </label>
					<input type="text" id="fee1" name="fee1" class="form-control" disabled value="${result.Dname.fee}">
						<span id="feeinfo"></span></div>
                            <div class="col-md-4 col-sm-4">
					<label for="reason" style="color: black;">Reason: </label>
					<textarea  id="reason" name="reason" class="form-control"></textarea>
						<span id="reasoninfo"></span>
						</div></div>

				<input type="hidden" id="myaction" name="myaction" value="save">
				<input type="hidden" id="mode" name="mode" value="web">
					<input type="hidden" id="DocId" name="DocId" value='${result.DocId}'>
					
				 <div class="form-group">
                            <div class="col-sm-8 text-center">
				<input type="submit" ID="btnsave" value="Save"
						onclick="return validateForm()" class="btn btn-primary" />
				</div>
					<input type="hidden" id="dName" name="dName" value="${result.Dname.dFirstname}"/>
					<input type="hidden" id="status" name="status" value="1">
					<input type="hidden" id="modifiedBy" name="modifiedBy" value="self">
					<input type="hidden" id="reference" name="reference"
						value="${result.Dname.doctorId}">
					<input type="hidden" id="fee" name="fee"
						value="${result.Dname.fee}">
					<input type="hidden" id="appointmentDate" name="appointmentDate"
						width="120px" value="${result.date}">
					<input type="hidden" id="appointmentTime" name="appointmentTime"
						value="${result.time}">
    </div></g:form></div></div></div></div></div>
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
