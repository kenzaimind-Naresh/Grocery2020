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
    <title>Provider Search</title>
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/style.css">

     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/font-awesome.min.css">
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
<%--<script>
$(function() {
	var x='${result.listId}'
	 document.getElementById(x).className = "activated";
});
</script>
  <style>
.activated {
    background-color: rgba(12, 184, 182, 0.21);
}
</style>
--%></head>
<body>
    <div class="header">
        <div class="topbar">
            <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
                <div class="container">
                    <div class="pull-right">
                        <ul class="loginbar pull-right">
                            <li><a href="/ProviderSearch/user/doctorDashboard">Home</a></li>
                            <li class="topbar-devider"></li>
                            <li><a href="/ProviderSearch/user/doctorDashboard">Dashboard</a></li>

                        </ul>

                    </div>
                </div>
                <div class="container">
                    <div class="navbar-header dash">
                        <a class="navbar-brand" href="/ProviderSearch/user/doctorDashboard">
                            <img src="/ProviderSearch/website/img/provider-logo.png" class="tm-logo" /></a>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown pull-right">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false"><span class="username-md">${result.uname.dFirstname }</span> <i class="fa fa-user"></i>
                                </a>

                                <ul class="dropdown-menu dropdown-user">
                                    <li><span class="username-sm">${result.uname.dFirstname }</span></li>
                                    <li class="divider"></li>
                                    <li><a href="/ProviderSearch/doctor/updatedoctor"><i class="fa fa-user fa-fw"></i>User Profile</a></li>
                                    <li><a href="/ProviderSearch/doctor/changePass2"><i class="fa fa-lock fa-fw"></i>Change Password</a></li>
                                    <li class="divider"></li>
                                    <li><a href="/ProviderSearch/user/dlogout"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>

                    </div>
                    <!--<div class="navbar-collapse collapse navbar-right">-->

                    <!-- </div>-->
                </div>
            </div>
        </div>
    </div>
    <!-- body -->


    <div class="container signin-pdtop">

        <div class="row">
            <div class="col-md-12">
                <ul class="linkbar nav-justified">
                   <li><g:link controller="doctor" action="appointmentSchedule" >Appointment Schedule</g:link></li>
				        <li ><g:link controller="doctor" action="list" params="[mode:'web']" >Booked Appointments</g:link></li>
                 		<li ><g:link controller="package" action="activationPage" params="[mode:'web']" >Activation</g:link></li>
                <li ><g:link controller="DBPhoto" action="create" params="[mode:'web']" >Advertistment</g:link></li>
						
                
                </ul>
            </div>
        </div>
     
    </div>

     <script src="/ProviderSearch/website/js/bootstrap.min.js"></script>
    <script src="/ProviderSearch/website/js/tm-script.js"></script>

</body>
</html>
