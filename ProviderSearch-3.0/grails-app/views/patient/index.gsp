<html>
	<head>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<style>
		body
		{
		 background-image: url("../images/lite.jpg");
         background-size:cover;
         background-position:center;
		}

.jumbotron {
      background-color: #f4511e;
      color: #fff;
  }
   .bg-1 { 
      background-color: #1abc9c; /* Green */
      color: #ffffff;
  }
   button[type=button] {
                  width: 25%;
                  background-color:pink;
                  color: grey;
                  padding: 6px 10px;
                  margin: 6px 0;
                  border: none;
                  border-radius: 6px;
                  cursor: pointer;
           }
	</style>
		<title>Persons</title>
	</head>

	<body><br><br><br><br><br><br><br><br><br><br><br><br>
	<div class="cream text-center">
	<form class="form-inline">
	<ul>
       <g:link controller="availability" action="slots" class="active"><button type="button" width="200%" class="btn btn-danger btn-lg" border="6px solid pink">Registration</button></g:link><br>
      <!--   <li><g:link controller="patient" action="updatepatient">Update</g:link></li>-->
       <g:link controller="patient" action="deletepatient" class="active"><button type="button" width="200%" class="btn btn-danger btn-lg">Delete Registration</button></g:link><br>
       <g:link controller="patient" action="display" class="active"><button type="button" width="200%" class="btn btn-danger btn-lg">View Registration</button></g:link>
      
    </ul>
       </form>
       </div>
	</body>
</html>