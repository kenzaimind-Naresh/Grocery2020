<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <title>Amul Icecreams</title>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
 <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
    
<!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'font-awesome.min.css')}" type="text/css">
<!-- Ionicons -->
	<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'ionicons.min.css')}" type="text/css">  
    
<style>
body {
    font-family: Verdana;
    background-color: black;
}


 td {    
    border: 1px solid #ddd;
    text-align: left;
}
 th {    
    border: 1px solid #ddd;
    text-align: center;
}

table {
    border-collapse: collapse;
    width: 50%;
    background-color: #fff;
    text-align: center;
}

th, td {
    padding: 20px;
}
button {
    background-color: #555555; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.site-footer{
clear: both;
height: 50px;
width: 100%;
text-align: center;
margin: 0px 0px 0px 0px;
font-family: arial, helvetica;
color:white;
font-size: 15px;
 background-color:#696969

}

a {
text-decoration: none;
display: inline-block;
padding: 8px 16px;
}

a:hover {
background-color: #ddd;
color: black;
}

.previous {
background-color: dodgerblue;
color: white;
}

.next {
background-color: #4CAF50;
color: white;
}
.pagination {
     font-size: 20px;
     font-weight: bold;
 }

     .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:#696969;
   color: white;
   text-align: center;
}
input[type="radio"]{
  width: 20px; /*Desired width*/
  height: 20px; /*Desired height*/
  margin-right: 5px; 
}
#wrapper {
  width: 100%;
  
}
#page-wrapper {
  padding: 0px 15px;
  min-height: 568px;
  background-color: white;
  
  
  
}

@media (min-width: 768px) {
  #page-wrapper {
    position: inherit;
    margin: 0 0 0 250px;
    padding: 0 30px;
    border-left: 1px solid #e7e7e7;
  }
}
.navbar-top-links {
  margin-right: 0;
}
.navbar-top-links li {
  display: inline-block;
}
.navbar-top-links li:last-child {
  margin-right: 15px;
}
.navbar-top-links li a {
  padding: 15px;
  min-height: 50px;
}
.navbar-top-links .dropdown-menu li {
  display: block;
}
.navbar-top-links .dropdown-menu li:last-child {
  margin-right: 0;
}
.navbar-top-links .dropdown-menu li a {
  padding: 3px 20px;
  min-height: 0;
}
.navbar-top-links .dropdown-menu li a div {
  white-space: normal;
}
.navbar-top-links .dropdown-messages,
.navbar-top-links .dropdown-tasks,
.navbar-top-links .dropdown-alerts {
  width: 310px;
  min-width: 0;
}
.navbar-top-links .dropdown-messages {
  margin-left: 5px;
}
.navbar-top-links .dropdown-tasks {
  margin-left: -59px;
}
.navbar-top-links .dropdown-alerts {
  margin-left: -123px;
}
.navbar-top-links .dropdown-user {
  right: 0;
  left: auto;
}
.sidebar .sidebar-nav.navbar-collapse {
  padding-left: 0;
  padding-right: 0;
}
.sidebar .sidebar-search {
  padding: 15px;
}
.sidebar ul li {
  border-bottom: 1px solid #e7e7e7;
}
.sidebar ul li a.active {
  background-color: #eeeeee;
}
.sidebar .arrow {
  float: right;
}
.sidebar .fa.arrow:before {
  content: "\f104";
}
.sidebar .active > a > .fa.arrow:before {
  content: "\f107";
}
.sidebar .nav-second-level li,
.sidebar .nav-third-level li {
  border-bottom: none !important;
}
.sidebar .nav-second-level li a {
  padding-left: 37px;
}
.sidebar .nav-third-level li a {
  padding-left: 52px;
}
@media (min-width: 768px) {
  .sidebar {
    z-index: 1;
    position: absolute;
    width: 250px;
    margin-top: 51px;
  }
  .navbar-top-links .dropdown-messages,
  .navbar-top-links .dropdown-tasks,
  .navbar-top-links .dropdown-alerts {
    margin-left: auto;
  }
}

.select{
box-sizing: content-box;
font-size: 15px;
padding: 9px;

}

input[type=search] {
    -webkit-appearance: textfield;
    box-sizing: content-box;
}
._2RyUw4qK3q5GZmpjwMkcje {
    font-size: 20px;
    color: #202020;
    border: 0;
    outline: 0;
    width: 300px;
    margin-left: 10px;
    transition: all .2s ease-in-out;
    z-index: 2;
}
input[type="search" i] {
    padding: 20px;
}


.center {
    margin-right: 50px;
    margin-left: 50px;
}
.collapse.in {
    display: block;
}
.nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
.collapse {
    display: none;
}
element.style {
    height: 0px;
}
.nav>li>a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
.nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
</style>

</head>
<body>

  <script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>
  
<script>
function validateForm() {
var x = document.forms["myForm"]["userName"].value;
if (x == "") {
alert("UserName must be filled out");
return false;
}
}
</script>
<script>
function validateForm() {
var x = document.forms["myForm"]["password"].value;
if (x == "") {
alert("Password must be filled out");
return false;
}
}
</script>

<section class="content-header" align="center">
<h2>
<b style="color:Black">Login</b>
</h2>
</section>
<div class="col-md-4 col-md-offset-4">
<div class="login-panel panel panel-default">
<div class="panel-heading">

<h3 class="panel-title"> Login</h3>
</div>
<div class="panel-body">
<g:form controller="user" name="myForm" id="myForm" action="login" >
<fieldset>
<div class="form-group" ${hasErrors(bean: userInstance, field: 'userName', 'error')}>
<input class="form-control" placeholder="UserName" id="userName" name="userName" onclick="myForm"type="text" required>
</div>
<div class="form-group" ${hasErrors(bean: userInstance, field: 'password', 'error')}>
<input class="form-control" placeholder="Password" id="password" name="password" onclick="myForm" type="password" required>
</div>
<div class="checkbox">
<label>
<input name="remember" type="checkbox" value="Remember Me">Remember Me
</label>



</div>

<input type="submit" id="myform" name="myform"  class="btn btn-lg btn-success btn-block" value="Login" onclick="return validateForm()"  >

<br>

<div class="alert alert-danger" ">
    <strong>Account Expired!</strong>  please contact Kenzaimind Admin.
  </div>
</fieldset>
</g:form>
</div>
</div>
</div>
 

<div class="modal fade" id="myModal" style="Top:100px">
<div class="modal-dialog modal-lg">
<div class="modal-content">

</div>
</div>
</div>



<!-- /#wrapper -->

<!-- jQuery -->
<script src="../vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../vendor/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../vendor/raphael/raphael.min.js"></script>
<script src="../vendor/morrisjs/morris.min.js"></script>
<script src="../data/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>

<script src="/SalesAndServicesApp/website/js/bootstrap.min.js"></script>
<script src="/SalesAndServicesApp/website/js/tm-script.js" type="text/javascript"></script>
</body>

</html>