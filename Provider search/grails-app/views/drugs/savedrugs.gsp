<html>
<head>
<title></title>
<style>
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script><%--
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
--%></head>
<body>
<html>
<head>
<title></title>
<style>
body{
background-color:lightgreen;
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
<div id="wrapper">
 
  <g:render template="/user/header"/>  
  <div id="page-wrapper"><br><br><br>
            <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
 <div class="panel-body">
<div class="col"  style="color:black;font-size:20px">${result.message}</div>
</div></div></div></div></div></div>
<!--  &nbsp;&nbsp;<g:link controller="user" action="userDashboard" class="active"><input type="button" value="Home"></g:link>-->
</body>
</html>

        
</body>
</html>



