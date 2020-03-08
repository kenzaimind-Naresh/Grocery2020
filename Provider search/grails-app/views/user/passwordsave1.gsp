<html>
  <head>
    
    <title>Login</title>  
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script><%--
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
  --%><style type="text/css">
  
  @import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
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
  
  <body>
  <div id="header" >
  <h3>HOSPITAL MANAGEMENT</h3>
  <tab1> <div class="btn-group" >
  <button type="button" class="btn btn-danger dropdown-toggle btn-lg btn-circle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" > ${user.username }<span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><g:link controller="user" action="updateuser1" class="active">Profile</g:link></li>
    <li><g:link controller="user" action="changepass1" class="active">Change Password</g:link></li>
    <li role="separator" class="divider"></li>
    <li> <g:link controller="user" action="logout" class="active">Logout</g:link></li>
  </ul>
</div></tab1>
 </div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" class="active"<g:link controller="Doctor" action="createdoctor" class="active">Doctor Registration<span class="sr-only">(current)</span></g:link>></a>
      <a class="navbar-brand" <g:link controller="inpatient" action="display" class="active">Inpatient Data</g:link>></a>
     </div>
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a class="navbar-brand" <g:link controller="user" action="adminDashboard" class="active"><span class="glyphicon glyphicon-home" style="color:red"></span> Home</g:link>></a></li>   
    </ul>
   </div>   
</nav>
	
 <h1>Password Changed Successfully</h1>
  
  </body>
</html>