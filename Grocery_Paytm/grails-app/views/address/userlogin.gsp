<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <title>Skeleton</title>
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
    background-color: #eee;
}


</style>

</head>
<body>

  
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

<h3 class="panel-title">Please Sign In</h3>
</div>
<div class="panel-body">
<g:form controller="address" name="myForm" id="myForm" action="authenticate" >
<fieldset>
<div class="form-group" ${hasErrors(bean: userInstance, field: 'userName', 'error')}>
<input class="form-control" placeholder="UserName" id="userName" name="userName" onclick="myForm" value="${userInstance?.userName}"type="text" required>
</div>
<div class="form-group" ${hasErrors(bean: userInstance, field: 'password', 'error')}>
<input class="form-control" placeholder="Password" id="password" name="password" onclick="myForm" value="${userInstance?.password}" type="password" required>
</div>
<div class="checkbox">
<label>
<input name="remember" type="checkbox" value="Remember Me">Remember Me
</label>
</div>
<input type="submit" id="myform" name="myform"  class="btn btn-lg btn-success btn-block" value="Login" onclick="return validateForm()"  >

<a href="/Skeleton/user/createuser"><h5>RegisterHere</h5></a>

</fieldset>
</g:form>
</div>
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