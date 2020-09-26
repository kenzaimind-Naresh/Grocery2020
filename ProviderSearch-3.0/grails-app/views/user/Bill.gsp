<html>
  <head>
    
    <title>Login</title>  
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
  <style type="text/css">

body {
  
		    background-image: url("../images/lite.jpg");
            background-size:cover;
            background-position:center;
		     
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
.nav a{
font-size: 1em
}

  </style>
  
  <script type="text/javascript">
  history.pushState({ page: 1 }, "Title 1", "#no-back");
  window.onhashchange = function (event) {
    window.location.hash = "no-back";
  };
  </script>
  
  
  </head>
  <script>

 
$(function() {
 var x='${result.listId}'
  document.getElementById(x).className = "active";
});
</script>

<style>

.active a{
    color: white !important;
}

</style>
  
  <body>
  
 <g:render template="/user/header"/><br><br><br><br><br><br>
	<center><g:link controller="pharmacy" action="createpharmacy"  class="active"><button type="button" align="center" class="btn btn-success btn-lg">Pharmacy</button></g:link></center><br>
	<center><g:link controller="testData" action="createTestData" align="center" class="active"><button type="button" align="center" class="btn btn-success btn-lg">Diagnostic</button></g:link></center><br>
    <center><g:link controller="dischargeSheet" action="createDischargeSheet" align="center" class="active"><button type="button" align="center" class="btn btn-success btn-lg">Discharge</button></g:link></center>
    
  
   <%--<br><br><br><br><br><br><br><br><br>
     
  <g:form align="center">
 <g:link controller="availability" action="slots" class="active"><input align="center" type="button" style="font-size:15pt;height:50px;width:260px;border-radius: 5px;color:white;background-color:black;margin: 4px 0;border: 1px solid #ccc;border:6px solid green;padding:5px" value="New Patient"></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <g:link controller="inpatient" action="createinpatient" class="active"><input align="center" type="button" style="font-size:15pt;height:50px;width:260px;border-radius: 5px;color:white;background-color:black;margin: 4px 0;border: 1px solid #ccc;border:6px solid green;padding:5px" value="Inpatient"></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <g:link controller="pharmacy" action="createpharmacy" class="active"><input align="center" type="button" style="font-size:15pt;height:50px;width:260px;border-radius: 5px;color:white;background-color:black;margin: 4px 0;border: 1px solid #ccc;border:6px solid green;padding:5px" value="Pharmacy"></g:link>
   
   
   </g:form>
   --%>
  </body>
</html>