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
    <link href="/ProviderSearch/website/css/bootstrap.min.css" rel="stylesheet">
    <link href="/ProviderSearch/website/css/style.css" rel="stylesheet">
    <link href="/ProviderSearch/website/css/font-awesome.min.css" rel="stylesheet">
    <link href="/ProviderSearch/website/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="/ProviderSearch/website/js/jquery-1.10.2.min.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    


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
 </style>
 

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

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          $("#date").datepicker({
         minDate: 0,autoclose: true,
         onSelect:function (){
				$("#dateinfo").text("");
		    }
     });
      });
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
 </style>
 
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


    <div class="container signin-pdtop">

       
        <div class="row">
            <div class="col-xs-12 col-sm-12	 col-md-4">
                <h3>Schedule your Appointment </h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-calendar pull-right dashicon"></i>
            </div>


        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
				<div class="row">

                        <div class="col-md-4">
                            <div class="fieldgroup">
                                
								
								     <g:if test="${appointment.dData.dLastname != "NA"}"><h4>
					 	Dr. ${appointment.dData.dFirstname } ${appointment.dData.dLastname }</h4></g:if>
					 	<g:elseif test="${appointment.dData.dLastname == "NA"}"><h4>
					 	Dr. ${appointment.dData.dFirstname }</h4></g:elseif>
								
                               
                            </div>
                        </div>
                    </div>
					<br>
					<g:form id="myform" controller="appointment" action="slotsearch">
                    <div class="row">

                        <div class="col-md-4">
                            <div class="fieldgroup">
                                <input type="text" id="date" name="date" class="form-control" placeholder="Select Date">
                                <span id="dateinfo"></span>
                                <br>
                            </div>
                            <!--<p>Date: <input type="text" id="datepicker"></p>-->
                        </div>
                    </div>

                 <input type="hidden" id="doctorId" name="doctorId" value="${appointment.dData.doctorId}" >    
                    
                    <input type="hidden" id="mode" name="mode" value="web">
                    <div class="row">
                        <!-- Page Header -->
                        <div class="col-md-4">
                            <div class="fieldgroup text-center">
                                <input type="submit" id="btnsave" value="Search" class="btn btn-primary" onclick="return validateForm()">
                            </div>
                        </div>
                    </div>
					</g:form>
                    <br>
                    <br>
                </div>

                

                <style>
                    .btn-secondary {
                        color: #fff;
                        background-color: #44A081;
                        border-color: #868e96;
                        border-radius: 5px!important;
                        margin:5px;
                    }

                        .btn-secondary:not([disabled]):not(.disabled).active, .btn-secondary:not([disabled]):not(.disabled):active, .show > .btn-secondary.dropdown-toggle {
                            color: #fff;
                            background-color: #6c757d;
                            border-color: #666e76;
                            box-shadow: 0 0 0 0.2rem rgba(134,142,150,.5);
                            border-radius: 5px!important;
                        }
                </style>
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

    <script src="/ProviderSearch/website/js/bootstrap.min.js"></script>
    <script src="/ProviderSearch/website/js/tm-script.js" type="text/javascript"></script>

</body>
</html>
