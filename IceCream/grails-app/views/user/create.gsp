<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Medical Care</title>
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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> 

<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
<!-- Font Awesome -->
<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'font-awesome.min.css')}" type="text/css">
<!-- Ionicons -->
<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'ionicons.min.css')}" type="text/css"> 

<style>
body {
    font-family: Verdana;
}

table, td, th { 
border: 1px solid #ddd;
text-align: left;
}

table {
border-collapse: collapse;
width: 100%;
}

th, td {
padding: 13px;
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
.btn-outline {
color: inherit;
background-color: transparent;
transition: all .5s;
}
.btn-primary.btn-outline {
color: #428bca;
}
.btn-success.btn-outline {
color: #5cb85c;
}
.btn-info.btn-outline {
color: #5bc0de;
}
.btn-warning.btn-outline {
color: #f0ad4e;
}
.btn-danger.btn-outline {
color: #d9534f;
}
.btn-primary.btn-outline:hover,
.btn-success.btn-outline:hover,
.btn-info.btn-outline:hover,
.btn-warning.btn-outline:hover,
.btn-danger.btn-outline:hover {
color: white;
}
.chat {
margin: 0;
padding: 0;
list-style: none;
}
.chat li {
margin-bottom: 10px;
padding-bottom: 5px;
border-bottom: 1px dotted #999999;
}
.chat li.left .chat-body {
margin-left: 60px;
}
.chat li.right .chat-body {
margin-right: 60px;
}
.chat li .chat-body p {
margin: 0;
}
.panel .slidedown .glyphicon,
.chat .glyphicon {
margin-right: 5px;
}
.chat-panel .panel-body {
height: 350px;
overflow-y: scroll;
}
.login-panel {
margin-top: 25%;
}
.flot-chart {
display: block;
height: 400px;
}
.flot-chart-content {
width: 100%;
height: 100%;
}
table.dataTable thead .sorting,
table.dataTable thead .sorting_asc,
table.dataTable thead .sorting_desc,
table.dataTable thead .sorting_asc_disabled,
table.dataTable thead .sorting_desc_disabled {
background: transparent;
}
table.dataTable thead .sorting_asc:after {
content: "\f0de";
float: right;
font-family: fontawesome;
}
table.dataTable thead .sorting_desc:after {
content: "\f0dd";
float: right;
font-family: fontawesome;
}
table.dataTable thead .sorting:after {
content: "\f0dc";
float: right;
font-family: fontawesome;
color: rgba(50, 50, 50, 0.5);
}
.btn-circle {
width: 30px;
height: 30px;
padding: 6px 0;
border-radius: 15px;
text-align: center;
font-size: 12px;
line-height: 1.428571429;
}
.btn-circle.btn-lg {
width: 50px;
height: 50px;
padding: 10px 16px;
border-radius: 25px;
font-size: 18px;
line-height: 1.33;
}
.btn-circle.btn-xl {
width: 70px;
height: 70px;
padding: 10px 16px;
border-radius: 35px;
font-size: 24px;
line-height: 1.33;
}
.show-grid [class^="col-"] {
padding-top: 10px;
padding-bottom: 10px;
border: 1px solid #ddd;
background-color: #eee !important;
}
.show-grid {
margin: 15px 0;
}
.huge {
font-size: 40px;
}
.panel-green {
border-color: #5cb85c;
}
.panel-green > .panel-heading {
border-color: #5cb85c;
color: white;
background-color: #5cb85c;
}
.panel-green > a {
color: #5cb85c;
}
.panel-green > a:hover {
color: #3d8b3d;
}
.panel-red {
border-color: #d9534f;
}
.panel-red > .panel-heading {
border-color: #d9534f;
color: white;
background-color: #d9534f;
}
.panel-red > a {
color: #d9534f;
}
.panel-red > a:hover {
color: #b52b27;
}
.panel-yellow {
border-color: #f0ad4e;
}
.panel-yellow > .panel-heading {
border-color: #f0ad4e;
color: white;
background-color: #f0ad4e;
}
.panel-yellow > a {
color: #f0ad4e;
}
.panel-yellow > a:hover {
color: #df8a13;
}
.timeline {
position: relative;
padding: 20px 0 20px;
list-style: none;
}
.timeline:before {
content: " ";
position: absolute;
top: 0;
bottom: 0;
left: 50%;
width: 3px;
margin-left: -1.5px;
background-color: #eeeeee;
}
.timeline > li {
position: relative;
margin-bottom: 20px;
}
.timeline > li:before,
.timeline > li:after {
content: " ";
display: table;
}
.timeline > li:after {
clear: both;
}
.timeline > li:before,
.timeline > li:after {
content: " ";
display: table;
}
.timeline > li:after {
clear: both;
}
.timeline > li > .timeline-panel {
float: left;
position: relative;
width: 46%;
padding: 20px;
border: 1px solid #d4d4d4;
border-radius: 2px;
-webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
}
.timeline > li > .timeline-panel:before {
content: " ";
display: inline-block;
position: absolute;
top: 26px;
right: -15px;
border-top: 15px solid transparent;
border-right: 0 solid #ccc;
border-bottom: 15px solid transparent;
border-left: 15px solid #ccc;
}
.timeline > li > .timeline-panel:after {
content: " ";
display: inline-block;
position: absolute;
top: 27px;
right: -14px;
border-top: 14px solid transparent;
border-right: 0 solid #fff;
border-bottom: 14px solid transparent;
border-left: 14px solid #fff;
}
.timeline > li > .timeline-badge {
z-index: 100;
position: absolute;
top: 16px;
left: 50%;
width: 50px;
height: 50px;
margin-left: -25px;
border-radius: 50% 50% 50% 50%;
text-align: center;
font-size: 1.4em;
line-height: 50px;
color: #fff;
background-color: #999999;
}
.timeline > li.timeline-inverted > .timeline-panel {
float: right;
}
.timeline > li.timeline-inverted > .timeline-panel:before {
right: auto;
left: -15px;
border-right-width: 15px;
border-left-width: 0;
}
.timeline > li.timeline-inverted > .timeline-panel:after {
right: auto;
left: -14px;
border-right-width: 14px;
border-left-width: 0;
}
.centered {
position: absolute;
top: 15%;
left: 50%;
transform: translate(-50%, -50%);

}
.timeline-badge.primary {
background-color: #2e6da4 !important;
}
.timeline-badge.success {
background-color: #3f903f !important;
}
.timeline-badge.warning {
background-color: #f0ad4e !important;
}
.timeline-badge.danger {
background-color: #d9534f !important;
}
.timeline-badge.info {
background-color: #5bc0de !important;
}
.timeline-title {
margin-top: 0;
color: inherit;
}
.timeline-body > p,
.timeline-body > ul {
margin-bottom: 0;
}
.timeline-body > p + p {
margin-top: 5px;
}
@media (max-width: 767px) {
ul.timeline:before {
left: 40px;
}
ul.timeline > li > .timeline-panel {
width: calc(10%);
width: -moz-calc(10%);
width: -webkit-calc(10%);
}
ul.timeline > li > .timeline-badge {
top: 16px;
left: 15px;
margin-left: 0;
}
ul.timeline > li > .timeline-panel {
float: right;
}
ul.timeline > li > .timeline-panel:before {
right: auto;
left: -15px;
border-right-width: 15px;
border-left-width: 0;
}
ul.timeline > li > .timeline-panel:after {
right: auto;
left: -14px;
border-right-width: 14px;
border-left-width: 0;
}
}

.collapse {
display: none;
}
.sidebar .arrow {
float: right;
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

* {
box-sizing: border-box;
}

form.example input[type=text] {
padding: 7px;
font-size: 15px;
border: 1px solid grey;
float: left;
width: 80%;
background: white;
}

form.example 
 {
float: left;
width: 20%;
padding: 10px;
background: #2196F3;
color: white;
font-size: 10px;
border: 1px solid grey;
border-left: none;
cursor: pointer;

}

form.example button:hover {
background: #0b7dda;
}

form.example::after {
content: "";
clear: both;
display: table;
}

.example {
position: absolute;
top: 15%;
left: 64%;
transform: translate(-50%, -50%);

}
.panel-primary{
align-content: center;

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
</style>

</head>
<body>
<script>
     if (sessionStorage.getItem("Page2Visited")) {
          sessionStorage.removeItem("Page2Visited");
          window.location.reload(true); // force refresh page1
     }
</script>

  <script  src="${resource(dir: 'js', file: 'userregistration.js')}"></script>
<!-- Navigation -->
<div class="d-flex flex-row-reverse">

<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a href="/SalesAndServicesApp/">

<!-- /.navbar-header -->

<ul class="nav navbar-top-links navbar-right">
<li class="divider"></li>
<li><a href="/SalesAndServicesApp/user/userlogin"><i class="fa fa-home fa-fw" style="font-size:20px;color:blue;" ></i></a>
</li>
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">
<i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
</a>

<ul class="dropdown-menu dropdown-messages">
<li>
<a href="#">
<div>
<strong>John Smith</strong>
<span class="pull-right text-muted">
<em>Yesterday</em>
</span>
</div>
<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
</a>
</li>
<li class="divider"></li>
<li>
<a href="#">
<div>
<strong>John Smith</strong>
<span class="pull-right text-muted">
<em>Yesterday</em>
</span>
</div>
<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
</a>
</li>
<li class="divider"></li>
<li>
<a href="#">
<div>
<strong>John Smith</strong>
<span class="pull-right text-muted">
<em>Yesterday</em>
</span>
</div>
<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
</a>
</li>
<li class="divider"></li>
<li>
<a class="text-center" href="#">
<strong>Read All Messages</strong>
<i class="fa fa-angle-right"></i>
</a>
</li>
</ul>
<!-- /.dropdown-messages -->
</li>

<!-- /.dropdown -->
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">
<i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
</a>
<ul class="dropdown-menu dropdown-tasks">
<li>
<a href="#">
<div>
<p>
<strong>Task 1</strong>
<span class="pull-right text-muted">40% Complete</span>
</p>
<div class="progress progress-striped active">
<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
<span class="sr-only">40% Complete (success)</span>
</div>
</div>
</div>
</a>
</li>
<li class="divider"></li>
<li>
<a href="#">
<div>
<p>
<strong>Task 2</strong>
<span class="pull-right text-muted">20% Complete</span>
</p>
<div class="progress progress-striped active">
<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
<span class="sr-only">20% Complete</span>
</div>
</div>
</div>
</a>
</li>
<li class="divider"></li>
<li>
<a href="#">
<div>
<p>
<strong>Task 3</strong>
<span class="pull-right text-muted">60% Complete</span>
</p>
<div class="progress progress-striped active">
<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
<span class="sr-only">60% Complete (warning)</span>
</div>
</div>
</div>
</a>
</li>
<li class="divider"></li>
<li>
<a href="#">
<div>
<p>
<strong>Task 4</strong>
<span class="pull-right text-muted">80% Complete</span>
</p>
<div class="progress progress-striped active">
<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
<span class="sr-only">80% Complete (danger)</span>
</div>
</div>
</div>
</a>
</li>
<li class="divider"></li>
<li>
<a class="text-center" href="#">
<strong>See All Tasks</strong>
<i class="fa fa-angle-right"></i>
</a>
</li>
</ul>
<!-- /.dropdown-tasks -->
</li>
<!-- /.dropdown -->
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">
<i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
</a>
<ul class="dropdown-menu dropdown-alerts">
<li>
<a href="#">
<div>
<i class="fa fa-comment fa-fw"></i> New Comment
<span class="pull-right text-muted small">4 minutes ago</span>
</div>
</a>
</li>
<li class="divider"></li>
<li>
<a href="#">
<div>
<i class="fa fa-twitter fa-fw"></i> 3 New Followers
<span class="pull-right text-muted small">12 minutes ago</span>
</div>
</a>
</li>
<li class="divider"></li>
<li>
<a href="#">
<div>
<i class="fa fa-envelope fa-fw"></i> Message Sent
<span class="pull-right text-muted small">4 minutes ago</span>
</div>
</a>
</li>
<li class="divider"></li>
<li>
<a href="#">
<div>
<i class="fa fa-tasks fa-fw"></i> New Task
<span class="pull-right text-muted small">4 minutes ago</span>
</div>
</a>
</li>
<li class="divider"></li>
<li>
<a href="#">
<div>
<i class="fa fa-upload fa-fw"></i> Server Rebooted
<span class="pull-right text-muted small">4 minutes ago</span>
</div>
</a>
</li>
<li class="divider"></li>
<li>
<a class="text-center" href="#">
<strong>See All Alerts</strong>
<i class="fa fa-angle-right"></i>
</a>
</li>
</ul>
<!-- /.dropdown-alerts -->
</li>
<!-- /.dropdown -->
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">
<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
</a>
<ul class="dropdown-menu dropdown-user">
<li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
</li>
<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
</li>
<li class="divider"></li>
<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
</li>


<li class="divider"></li>
<li><a href="/SalesAndServicesApp/admin/login">Admin</a>
</li>
</ul>
<!-- /.dropdown-user -->

</ul>

</nav>
</div>

<!-- Content Header (Page header) -->
<section class="content-header" align="center">
<h1>
<b style="color:Black">Admin Registration</b>
</h1>
</section>
                            
	<div class="container">
<div class="row">
<div class=" col-sm-6 col-md-8 col-md-offset-2 signin-pdtop">
<br><br>
<g:form class="form-horizontal" role="form" controller="admin" Id="myform" name="myform" action="saveadmin"  nonvalidate="nonvalidate">
<div class="form-group">
<div class="col-md-4 col-sm-4">

<label for="userName">User Name :</label>
<input type="text" id="userName" name="userName" value="${adminInstance?.userName}" class="form-control" required/>
 <span id="userNameinfo" style="color:red"></span>
 </div>



<div class="col-md-4 col-sm-4">

<label for="password">Password :</label>
<input type="password" id="password" name="password" value="${adminInstance?.password}" class="form-control" required/>
 <span id="passwordinfo" style="color:red"></span>
</div>



<div class="col-md-4 col-sm-4">

<label for="fullName">FullName :</label>
<input type="text" id="fullName" name="fullName" value="${adminInstance?.fullName}" class="form-control" required />
 <span id="fullNameinfo" style="color:red"></span>
</div></div>

<div class="form-group">
<div class="col-md-4 col-sm-4">

<label for="email">Email :</label>
<input type="text" id="email" name="email" value="${adminInstance?.email}" class="form-control" required/>
 <span id="emailinfo" style="color:red"></span>
</div></div>
<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="mode" name="mode" value="web"/>
<input type="hidden" id="myaction" name="myaction" value="save"/>
 <div class="form-group">
                        <div class="col-sm-12 text-center">
                            <button type="submit" class="btn btn-primary" id="myform" name="myform" onclick="return validateForm()">
                                Create</button>
                        </div>
                        
                    </div>
                    </g:form>
                    
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

<div class="footer">
<p>copy rights @ 2018 We Fix</p>
<br>

</div>
<script src="/SalesAndServicesApp/website/js/bootstrap.min.js"></script>
<script src="/SalesAndServicesApp/website/js/tm-script.js" type="text/javascript"></script>
<script src="/SalesAndServicesApp/website/js/bootstrap.min.js"></script>
<script src="/SalesAndServicesApp/website/js/tm-script.js" type="text/javascript"></script>


</body>
</html>