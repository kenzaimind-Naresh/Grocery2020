<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Doctor Login</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/provider/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/provider/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/provider/css/style.css">
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/provider/css/map.css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    
    <link rel="stylesheet" href="css/reset.css">

    
        <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      * {
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  background: #333;
  font: 100%/1 "Helvetica Neue", Arial, sans-serif;
}

.login {
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -10rem 0 0 -10rem;
  width: 20rem;
  height: 15rem;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  overflow: hidden;
}
.login:hover > .login-header, .login.focused > .login-header {
  width: 2rem;
}
.login:hover > .login-header > .text, .login.focused > .login-header > .text {
  font-size: 1rem;
  transform: rotate(-90deg);
}
.login.loading > .login-header {
  width: 20rem;
}
.login.loading > .login-header > .text {
  display: none;
}
.login.loading > .login-header > .loader {
  display: block;
}

.login-header {
  position: absolute;
  left: 0;
  top: 0;
  z-index: 1;
  width: 20rem;
  height: 20rem;
  background: #008080;
  transition: width 0.5s ease-in-out;
}
.login-header > .text {
  display: block;
  width: 100%;
  height: 100%;
  font-size: 5rem;
  text-align: center;
  line-height: 20rem;
  color: #fff;
  transition: all 0.5s ease-in-out;
}
.login-header > .loader {
  display: none;
  position: absolute;
  left: 5rem;
  top: 5rem;
  width: 10rem;
  height: 10rem;
  border: 2px solid #fff;
  border-radius: 50%;
  animation: loading 2s linear infinite;
}
.login-header > .loader:after {
  content: "";
  position: absolute;
  left: 4.5rem;
  top: -0.5rem;
  width: 1rem;
  height: 1rem;
  background: #fff;
  border-radius: 50%;
  border-right: 2px solid green;
}
.login-header > .loader:before {
  content: "";
  position: absolute;
  left: 4rem;
  top: -0.5rem;
  width: 0;
  height: 0;
  border-right: 1rem solid #fff;
  border-top: 0.5rem solid transparent;
  border-bottom: 0.5rem solid transparent;
}

@keyframes loading {
  50% {
    opacity: 0.5;
  }
  100% {
    transform: rotate(360deg);
  }
}
.login-form {
  margin: 0 0 0 2rem;
  padding: 0.5rem;
}

.login-input {
  display: block;
  width: 100%;
  font-size: 1rem;
  padding: 0.5rem 1rem;
  box-shadow: none;
  border-color: #ccc;
  border-width: 0 0 2px 0;
}
.login-input + .login-input {
  margin: 5px 0 0;
}
.login-input:focus {
  outline: none;
  border-bottom-color: green;
}

.login-btn {
  position: absolute;
  right: 1rem;
  bottom: 1rem;
  width: 5rem;
  height: 5rem;
  border: none;
  background: #008080;
  border-radius: 50%;
  font-size: 0;
  border: 0.6rem solid transparent;
  transition: all 0.3s ease-in-out;
}
.login-btn:after {
  content: "";
  position: absolute;
  left: 1rem;
  top: 0.8rem;
  width: 0;
  height: 0;
  border-left: 2.4rem solid #fff;
  border-top: 1.2rem solid transparent;
  border-bottom: 1.2rem solid transparent;
  transition: border 0.3s ease-in-out 0s;
}
.login-btn:hover, .login-btn:focus, .login-btn:active {
  background: #fff;
  border-color: #008080;
  outline: none;
}
.login-btn:hover:after, .login-btn:focus:after, .login-btn:active:after {
  border-left-color: green;
}
 h1 {
        font-weight: bold;
        color: green;
        font-size: 80px;
       }

    </style>

    
        <script src="js/prefixfree.min.js"></script>

<SCRIPT type="text/javascript">    
  history.pushState({ page: 1 }, "Title 1", "#no-back");
  window.onhashchange = function (event) {
    window.location.hash = "no-back";
  };

        </SCRIPT>
         
      <!-- Core Scripts - Include with every page -->
</head>

    
  

  <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
 	<!--banner-->
	<section class="banner">
		<div class="bg-color1" >
			<nav class="navbar navbar-default">
			  <div class="container">
			  	<div class="col-md-12">
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				       <a class="navbar" href="/ProviderSearch/user/ProviderSearch"><img src="/ProviderSearch/provider/img/logo.png" class="img-responsive" style="height:90px;width: 180px;margin-top: -20px;
				      margin-bottom: -20px;"></a>
				    </div>
				    <div class="collapse navbar-collapse navbar-right " id="myNavbar">
				      <ul class="nav navbar-nav ">
				        <li class=""><a href="#home">HOME</a></li>
				        <li class=""><a href="#procedure_cost">FIND PROCEDURE COST</a></li>
				        <li class=""><a href="/ProviderSearch/user/providerSearch">FIND DOCTOR</a></li>
				        <li class=""><a href="#find_facility">FIND FACILITY</a></li>
				        <li class=""><a href="#find_drug">FIND DRUG</a></li>
				        <li class="active"><a href="/ProviderSearch/user/doctorLogin1">DOCTOR LOGIN</a></li>
				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
		
			</div>
	</section>
	<!--/ banner--><br><br><br>
  <h2 face="Rio Grande" style="color:#008080" align="center">DOCTOR LOGIN</h2>
<g:form action="doctorvalidation" method="post" >
    
<div class="login" style="height:200px;width:250px">
  <form class="login-form" controller="user" action="doctorvalidation">
    <input type="text" placeholder="Username"  id="email" name="email" class="login-input" style="font-size:15px"/>
    <input type="password" placeholder="Password" id="password" name="password" class="login-input" style="font-size:15px"/>
    <button type="submit" class="login-btn">login</button><br><br><br><br><br><br><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <g:link controller="doctor" action="createdoctor" style="text-decoration:none;font-size:15px">SignUp</g:link>
  </form>
</div>
</g:form>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    <script type="text/javascript">

    $('.login-input').on('focus', function() {
    	  $('.login').addClass('focused');
    	});

    	$('.login').on('submit', function(e) {
    	  e.preventDefault();
    	  $('.login').removeClass('focused').addClass('loading');
    	});

    </script>
    
    
  </body>
</html>
