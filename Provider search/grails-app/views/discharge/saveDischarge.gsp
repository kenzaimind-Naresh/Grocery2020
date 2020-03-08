<html>
<head>
<title></title>
<style>

</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
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
</head>
<body>
 <div id="header" >
  <h3>HOSPITAL MANAGEMENT</h3><tab1> <div class="btn-group" >
  <button type="button" class="btn btn-danger dropdown-toggle btn-lg btn-circle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
     ${result.username}<span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><g:link controller="user" action="updateuser" class="active">Profile</g:link></li>
    <li><g:link controller="user" action="changepass" class="active">Change Password</g:link></li>
    <li role="separator" class="divider"></li>
    <li> <g:link controller="user" action="logout" class="active">Logout</g:link>
</li>
  </ul>
</div></tab1>
 </div>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <ul class="nav navbar-nav">
    <li>  <a class="navbar-brand" class="active"<g:link controller="availability" action="slots" class="active">New Patient</g:link>></a></li>
    <li>  <a class="navbar-brand" <g:link controller="inpatient" action="createinpatient" class="active">InPatient</g:link>></a></li>
    <li><a class="navbar-brand" <g:link controller="drugs" action="addEditdrug" >Drugs</g:link>></a></li>
     <li><a class="navbar-brand" <g:link controller="diagnosticTest" action="addEditdiag" >DiagnosticTest</g:link>></a></li>
     <li><a class="navbar-brand" <g:link controller="user" action="Bill" >Billing</g:link>></a></li> 
<li><a class="navbar-brand" <g:link controller="services" action="addEditservices" >Services</g:link>></a></li>
 <li><a class="navbar-brand" <g:link controller="dischargeSheet" action="createDischargeSheet" >Discharge</g:link>></a></li>
     <li > <a class="navbar-brand" <g:link controller="user" action="patientDetails" class="active">Search</g:link>></a></li>
      </ul>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a class="navbar-brand" <g:link controller="user" action="userDashboard" class="active"><span class="glyphicon glyphicon-home"></span> Home</g:link>></a></li>
      
    </ul>
   </div>
</nav>
<h1>Discharge saved successfully</h1>
<!--  &nbsp;&nbsp;<g:link controller="user" action="userDashboard" class="active"><input type="button" value="Home"></g:link>-->
</body>
</html>

        
</body>
</html>



