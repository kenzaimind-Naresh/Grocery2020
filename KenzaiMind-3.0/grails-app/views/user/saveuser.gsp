<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
		
  		

<title>We Fix</title>

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


<style type="text/css">
/*!
* Start Bootstrap - SB Admin 2 v3.3.7+1 (http://startbootstrap.com/template-overviews/sb-admin-2)
* Copyright 2013-2016 Start Bootstrap
* Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap/blob/gh-pages/LICENSE)
*/
body {
background-color: white;
font-family: verdana;
}

#wrapper {
width: 100%;
background-color: black;

}
.wrapper {

background-color: black;

}
#page-wrapper {
padding: 0px 15px;
min-height: 568px;
background-color: white;

}
.nav{
background-color: black;
}

@media (min-width: 768px){
#page-wrapper {
position: inherit;
margin: 0 0 0 250px;
margin-top: 0px;
margin-right: 0px;
margin-bottom: 0px;
margin-left: 250px;
padding: 0 30px;
padding-top: 0px;
padding-right: 30px;
padding-bottom: 0px;
padding-left: 30px;
border-left: 1px solid black;
border-left-width: 1px;
border-left-style: solid;
border-left-color: rgb(231, 231, 231);
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

.navbar-top-links .dropdown-messages,
.navbar-top-links .dropdown-tasks,
.navbar-top-links .dropdown-alerts {
margin-left: auto;
}
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




button{
padding:8px 15px;
border:none;
text-align:center;
text-decoration:none;
display:inline-block;
font-size:14px;
margin:3px 3px;
background-color:skyblue;


}

#mydiv {
position:fixed;
top: 30%;
left: 20%;
width:80em;
height:18em;
margin-top: -9em; /*set to a negative number 1/2 of your height*/
margin-left: -15em; /*set to a negative number 1/2 of your width*/

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
a{
color:white;
}


</style>

</head>
<body>
<div id="wrapper" align="center">

<!-- Navigation -->
<nav class="navbar navbar-expand navbar-dark bg-dark static-top" role="navigation" style="margin-bottom: 0">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a href="/SalesAndServicesApp/">
<img src="/SalesAndServicesApp/images/wefix1.PNG" class="tm-logo" style="padding-left:1px ; height: 50px; width: 250px;"/></a>
</div>
<!-- /.navbar-header -->

<ul class="nav navbar-top-links navbar-right">
<li class="divider"></li>
<li><a href="/SalesAndServicesApp/"><i class="fa fa-home fa-fw" style="font-size:23px;color:white;" ></i></a>
                        </li>
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">
<i class="fa fa-envelope fa-fw" style="font-size:17px;color:white;"></i> <i class="fa fa-caret-down" style="font-size:17px;color:white;"></i>
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
<i class="fa fa-tasks fa-fw" style="font-size:17px;color:white;"></i> <i class="fa fa-caret-down" style="font-size:17px;color:white;"></i>
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
<i class="fa fa-angle-right" style="font-size:17px;color:white;"></i>
</a>
</li>
</ul>
<!-- /.dropdown-tasks -->
</li>
<!-- /.dropdown -->
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">
<i class="fa fa-bell fa-fw" style="font-size:17px;color:white;"></i> <i class="fa fa-caret-down" style="font-size:17px;color:white;"></i>
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
<i class="fa fa-user fa-fw" style="font-size:17px;color:white;"></i> <i class="fa fa-caret-down" style="font-size:17px;color:white;"></i>
</a>
<ul class="dropdown-menu dropdown-user">
<li><a href="/SalesAndServicesApp/user/edit"><i class="fa fa-user fa-fw"></i> User Profile</a>
 </li>
<li><a href="/SalesAndServicesApp/user/changepass"><i class="fa fa-gear fa-fw"></i>Change Password</a>
</li>
<li class="divider"></li>
<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
</li>
</ul>
<!-- /.dropdown-user -->
</li>
<!-- /.dropdown -->
</ul>
<!-- /.navbar-top-links -->

</nav>

</div>
 
 
<br><br><br><br><br><br><br><br><br><br><div align="center">
<p style="color:black;font-Size: 30px">${result.message }</p>
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
<p>copy rights @ 2018 Sales And Services</p>
<br>

</div>
<script src="/SalesAndServicesApp/website/js/bootstrap.min.js"></script>
<script src="/SalesAndServicesApp/website/js/tm-script.js" type="text/javascript"></script>

  </body>
</html>