<html>
	<head>
		<style>
		body
		{
		background-color: lightgreen;
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
	</style>
		<title>Persons</title>
	</head>

	<body>
	<ul>
	<li><g:link controller="availability" action="slots">GetSlot</g:link></li>
       <li><g:link controller="availability" action="createavailability" class="active">Registration</g:link></li>
      <!--   <li><g:link controller="patient" action="updatepatient">Update</g:link></li>-->
       <li><g:link controller="availability" action="deleteavailability" class="active">Delete Registration</g:link></li>
       <li><g:link controller="availability" action="display" class="active">View Registration</g:link></li>
    </ul>
       
	</body>
</html>