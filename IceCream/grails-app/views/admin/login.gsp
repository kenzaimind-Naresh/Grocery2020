<!DOCTYPE html>
<html lang="en">
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
      background-color: black;
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
  background-color: black;
  
  
  
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
a{
color:blue;

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

    <script  src="${resource(dir: 'js', file: 'login.js')}"></script>

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

</div>
<!-- /.navbar-header -->

<ul class="nav navbar-top-links navbar-left">
<li class="divider"></li>
<li><a href="/Icecreams/"><i class="fa fa-home fa-fw" style="font-size:40px;color:white;" ></i></a>
                        </li>

<!-- /.dropdown -->
</ul>
<!-- /.navbar-top-links -->

</nav>

</div>

<div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-4">
<div class="login-panel panel panel-default">
<div class="panel-heading">

<h3 class="panel-title">Admin Login</h3>
</div>
<div class="panel-body">
  <g:form controller="admin" name="myform" id="myform"  action="authenticate" >
<fieldset>
<div class="form-group" ${hasErrors(bean: adminInstance, field: 'userName', 'error')}>
<input class="form-control" placeholder="UserName" id="userName" name="userName"  value="${adminInstance?.userName}"type="text"  required>
</div>
<div class="form-group" ${hasErrors(bean: adminInstance, field: 'password', 'error')}>
<input class="form-control" placeholder="Password" id="password" name="password"  value="${adminInstance?.password}" type="password"  required >
</div>

<div class="checkbox">
<label>
<input name="remember" type="checkbox" value="Remember Me">Remember Me
</label>


<g:link controller="user" action="userlogin" type="submit" ><h4>User Login</h4>
</g:link> 

</div>
<!-- Change this to a button or input when using this as a form -->
<input type="submit" id="myform" name="myform"  class="btn btn-lg btn-success btn-block" value="Login" onclick="return validateForm()"  >
<!--  <a href="/SalesAndServicesApp/admin/create"><h5>RegisterHere</h5></a>-->
</fieldset>
  </g:form>
</div>
</div>
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