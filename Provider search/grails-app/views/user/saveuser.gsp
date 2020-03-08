<html>
<head>
<title></title>
<style>
</style>
<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
        
  

 --%><meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Core CSS - Include with every page -->
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/plugins/bootstrap', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/font-awesome/css', file: 'font-awesome.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/plugins/pace', file: 'pace-theme-big-counter.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/css', file: 'main-style.css')}" type="text/css">
    
    <script src="${resource(dir: 'hospitalmgnt/assets/plugins', file: 'jquery-1.10.2.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/bootstrap', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/metisMenu', file: 'jquery.metisMenu.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/pace', file: 'pace.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/scripts', file: 'siminta.js')}"></script>
    

</head>
<body>
<html>
<head>
<title></title>
<style>
body{
background-color:lightgreen;
}

</style>
<script type="text/javascript">
$(document).ready(function(){
	$(".navbar-header").show();
    $(".navbar-header1").hide();
  
    if(${result.username == "sai"}){
        $(".navbar-header").show();
        $(".navbar-header1").hide();
        
    }else{
    	 $(".navbar-header").show();
         $(".navbar-header1").hide();
        }
});
   

</script>
</head>
<body>
 <div id="wrapper">
 <g:if test = "${result.username == 'sai'}">
  <!--  wrapper -->
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <a class="navbar-brand" href="/HospitalMgnt/user/adminDashboard">
                    <strong	style="color:white;font-size:20px;">HOSPITAL MANAGEMENT</strong>
                </a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->
                 <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-3x"></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                        <li><g:link controller="user" action="updateuser1" ><i class="fa fa-user fa-fw"></i>User Profile</g:link>
                        </li>
                        <li><g:link controller="user" action="changepass1" ><i class="fa fa-lock fa-fw"></i>Change Password</g:link>
                        </li>
                        <li class="divider"></li>
                        <li><g:link controller="user" action="logout" ><i class="fa fa-sign-out fa-fw"></i>Logout</g:link>
                        </li>
                    </ul>
                    <!-- end dropdown-user -->
                </li>
                <!-- end main dropdown -->
            </ul>
            <!-- end navbar-top-links -->

        </nav>

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                           
                            <div class="user-info">
                                <div style="color:white;font-size:25px;">${result.username }</div>
                                
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                 <li id=createdoctor><g:link controller="Doctor" action="createdoctor" class="active"><font face="Verdana" size="3">Doctor Registration</font><span class="sr-only">(current)</span></g:link></li>
     				<li id=display><g:link controller="inpatient" action="display" class="active"><font face="Verdana" size="3">Inpatient Data</font></g:link></li> 
                </ul>
               </div>
                <!-- end side-menu -->
            <!-- end sidebar-collapse -->
        </nav>
         <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header" style="color:black;font-size:20px">${result.message}</div>
                </div></div></div>
     </g:if>
  
  <g:elseif test = "${result.username == 'vinay'}">
  <!--  wrapper -->
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <a class="navbar-brand" href="/HospitalMgnt/user/userDashboard">
                    <strong	style="color:white;font-size:20px;">HOSPITAL MANAGEMENT</strong>
                </a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-3x"></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                        <li><g:link controller="user" action="updateuser" ><i class="fa fa-user fa-fw"></i>User Profile</g:link>
                        </li>
                        <li><g:link controller="user" action="changepass" ><i class="fa fa-lock fa-fw"></i>Change Password</g:link>
                        </li>
                        <li class="divider"></li>
                        <li><g:link controller="user" action="logout" ><i class="fa fa-sign-out fa-fw"></i>Logout</g:link>
                        </li>
                    </ul>
                    <!-- end dropdown-user -->
                </li>
                <!-- end main dropdown -->
            </ul>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                           
                            <div class="user-info">
                                <div style="color:white;font-size:25px;">${result.username }</div>
                                
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                   
                   
                    <li>
                        <a href="#"><i ></i><font face="Verdana" size="3">Registration</font><span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="availability" action="slots" >Out-Patient</g:link>
                            </li>
                            <li>
                                <g:link controller="inpatient" action="createinpatient"> In-Patient</g:link>
                            </li>
                        </ul>
                       
               
                    <li>
                        <a href="#"><i ></i><font face="Verdana" size="3">Drugs</font><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="drugs" action="createdrugs" >Add Drugs</g:link>
                            </li>
                            <li>
                                <g:link controller="drugs" action="updatedrugs" >Edit Drugs</g:link>
                            </li>
                            <li>
                                <g:link controller="pharmacy" action="createpharmacy" >Billing</g:link>
                            </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>
                    <li>
                        <a href="#"><i ></i><font face="Verdana" size="3">Diagnostic Test</font><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="diagnosticTest" action="createDiagnosticTest">Add DiagnosticTest</g:link>
                            </li>
                            <li>
                                <g:link controller="diagnosticTest" action="updateDiagnosticTest">Edit DiagnosticTest</g:link>
                            </li>
                            <li>
                            <g:link controller="testData" action="createTestData">Billing</g:link>
                            </li>
                           
                        </ul>
                        <!-- second-level-items -->
                    </li>
                    <li>
                        <a href="#"><i></i><font face="Verdana" size="3">Services</font><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="services" action="createServices"  class="active" >Add Service</g:link>
                            </li>
                            <li>
                                <g:link controller="services" action="updateServices" >Edit Service</g:link>
                            </li>
                             <li>
                                <g:link controller="dischargeSheet" action="createDischargeSheet" >Billing</g:link>
                            </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>
                <li><g:link controller="user" action="dischargeSheet" ><font face="Verdana" size="3">Discharge Sheet</font></g:link></li>
                <li><g:link controller="user" action="patientDetails" ><font face="Verdana" size="3">Search</font></g:link></li>
     
                </ul>
            </div></nav>
         <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header"  style="color:black;font-size:20px">${result.message}</div>
                </div></div></div>
 </g:elseif>
 
</div>
</body>
</html>



