<html>
<head>
<title></title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
<style>

body{
 background-image: url("../images/lite.jpg");
            background-size:cover;
            background-position:center;
		     
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}
table#t01 {
    width: 100%;    
    background-color: #f1f1c1;
    }
    tr {
    background-color: #f2f2c2;
    }
    th {
    background-color: #4CAF50;
    color: white;
}
#header {
    background-color:green;
    color:white;
    text-align:center;
    padding:1px;
}
tab1 { padding-left: 79em; }
.btn-circle.btn-lg {
  	box-shadow: 2px 4px 0 2px rgba(0,0,0,0.1);
	border: .3em solid brown;
	font-size: 1em;
	line-height: 1.1em;
	color: white;
	background-color: green;
	margin: auto;
	border-radius: 50%;
	height: 5em;
	width: 6em;
	position: relative;
}
.btn-circle.btn-lg:hover {
	color:green;
    background-color: orange;
	text-decoration: none;
	border-color: orange;
	
}
.btn-circle.btn-lg:visited {
	color:#ffffff;
    background-color: #e84d0e;
	text-decoration: none;
	
}

</style>
</head>

 
 <div id="header" >
  <h3>HOSPITAL MANAGEMENT</h3><tab1> <div class="btn-group" >
  <button type="button" class="btn btn-danger dropdown-toggle btn-lg btn-circle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
     ${responseData.user.username }<span class="caret"></span>
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
    <div id="top-menu" class="navbar-header">
    <ul class="nav navbar-nav">
     <li><a class="navbar-brand" <g:link controller="availability" action="slots" >New Patient</g:link>></a></li>
     <li><a class="navbar-brand" <g:link controller="inpatient" action="createinpatient" >InPatient</g:link>></a></li>
     <li><a class="navbar-brand" <g:link controller="drugs" action="createdrugs" >Drugs</g:link>></a></li>
     <li class="active"><a class="navbar-brand" <g:link controller="diagnosticTest" action="addEditdiag" >DiagnosticTest</g:link>></a></li>
     <li><a class="navbar-brand" <g:link controller="user" action="Bill" >Billing</g:link>></a></li> 
     <li><a class="navbar-brand" <g:link controller="user" action="patientDetails" >Search</g:link>></a></li>
     
     
     
     
    </ul>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a class="navbar-brand" <g:link controller="user" action="userDashboard" ><span class="glyphicon glyphicon-home" style="color:red"></span> Home</g:link>></a></li>
      
    </ul>
   </div>
</nav>
	

<body>


      <table align="center">
      <thead>
      <tr>
      <th>TestId</th>
      <th>TestName</th>
      <th>Rate</th>
      <th>ModifiedBy</th>
     
     
      
      </tr>
      </thead>
      
      <g:findAll in="${responseData.diag}" expr="true">
     <tbody>
      <tr>
      <td>${it.testId}</td>
      <td><g:link controller="diagnosticTest" action="updateDiagnosticTest" id="${it.testName}">${it.testName}</g:link></td>
      <td>${it.rate}</td>
      <td>${it.modifiedBy}</td>
     
      </tr>
      </tbody>
         
      </g:findAll>
      </table>
       
</body>
</html>

