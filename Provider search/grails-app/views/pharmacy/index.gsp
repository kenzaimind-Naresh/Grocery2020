<html>
	<head>
		<style>
		body
		{
		 background-image: url("../images/lite.jpg");
            background-size:cover;
            background-position:center;
		}
	ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
.active {
    background-color: #4CAF50;
}
.active {
    background-color: green;
}
 #header {
    background-color:pink;
    color:white;
    text-align:center;
    padding:25px;
}
	</style>
		<title>Persons</title>
	</head>

	<body>
	<div id="header">
	
    </div> 
	<br><br><br><br><br><br><br><br><br>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:link controller="pharmacy" action="createpharmacy" class="active"><input type="button" align="center" style="height:50px;width:260px;border-radius:5px;font-size:15pt;align:center;color:white;background-color:grey;margin: 4px 0;border: 1px solid #ccc;border:6px solid pink;padding:8px" value="Billing"></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <!--   <li><g:link controller="patient" action="updatepatient">Update</g:link></li>
       <li><g:link controller="pharmacy" action="deletepharmacy" class="active">Delete Registration</g:link></li>
       <li><g:link controller="pharmacy" action="display" class="active">View Registration</g:link></li>-->
       <g:link controller="drugs" action="createdrugs" class="active"><input type="button" align="center" style="height:50px;width:260px;border-radius:5px;font-size:15pt;align:center;color:white;background-color:grey;margin: 4px 0;border: 1px solid #ccc;border:6px solid pink;padding:8px" value="Drugs Entry"></g:link>
    
       
	</body>
</html>