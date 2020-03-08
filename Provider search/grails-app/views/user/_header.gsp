<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Core CSS - Include with every page -->
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/plugins/bootstrap', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/font-awesome/css', file: 'font-awesome.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/plugins/pace', file: 'pace-theme-big-counter.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/css', file: 'main-style.css')}" type="text/css">
    
</head>

<body>
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
               <a class="navbar-brand" href="/ProviderSearch/user/userDashboard">
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
                                <div style="color:white;font-size:25px;">${result.uname.username }</div>
                                
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
                                <g:link controller="drugs" action="createdrugs"  >Add Drugs</g:link>
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
                                <g:link controller="diagnosticTest" action="createDiagnosticTest"  >Add DiagnosticTest</g:link>
                            </li>
                            <li>
                                <g:link controller="diagnosticTest" action="updateDiagnosticTest"  >Edit DiagnosticTest</g:link>
                            </li>
                            <li>
                            <g:link controller="testData" action="createTestData" >Billing</g:link>
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
                
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <!-- end page-wrapper -->
    <!-- end wrapper -->
    <!-- Core Scripts - Include with every page -->
<%--<script src="${resource(dir: 'hospitalmgnt/assets/plugins', file: 'jquery-1.10.2.js')}"></script>
--%>

<script src="${resource(dir: 'hospitalmgnt/assets/plugins/bootstrap', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/metisMenu', file: 'jquery.metisMenu.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/pace', file: 'pace.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/scripts', file: 'siminta.js')}"></script>


</body>

</html>
