<!DOCTYPE html>
<html lang="en">
<head>


<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Skeleton</title>
	<!--
		CSS
		============================================= -->
    <link rel="stylesheet" href="/Skeleton/website/css/linearicons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/themify-icons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">
	<link rel="stylesheet" href="/Skeleton/website/css/owl.carousel.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nice-select.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nouislider.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/magnific-popup.css">
	<link rel="stylesheet" href="/Skeleton/website/css/main.css">



<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

</head>

<body>

  <script  src="${resource(dir: 'js', file: 'usermerchant.js')}"></script>

<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/location1"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" style="padding-top:30px; padding-bottom:30px;" href="/Skeleton/user/marketdata">Home</a></li>
							
							<li class="nav-item"><a class="nav-link" style="padding-top:30px; padding-bottom:30px;" href="/Skeleton/user/marketdata">Shop</a></li>
													
							<li class="nav-item"><a class="nav-link" style="padding-top:30px; padding-bottom:30px;" href="/Skeleton/user/contact2">Contact</a></li>
							
							<li class="nav-item submenu dropdown">
								
								<ul class="dropdown-menu">
								<li><g:link controller="user" action="updateuser" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="myorders" class="active"  style="color:	#DAA520;"><i class='fa fa-cart-arrow-down'></i> My Orders </g:link></li>
								<li><a href="/Skeleton/user/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>

								</ul>
							</li>
								
						</ul>
						
					</div>
				</div>
			</nav>
		</div>
	
	</header>
	<!-- End Header Area -->
	
     <br><br><br>

<div align="center">
<p style="color:black;font-Size: 20px">${flash.message}</p>
<br>
    </div>

<script>
     if (sessionStorage.getItem("Page2Visited")) {
          sessionStorage.removeItem("Page2Visited");
          window.location.reload(true); // force refresh page1
     }
</script>
<script>
history.pushState(null, null, location.href);
window.onpopstate = function () {
history.go(1);
};
</script>
   
    </head>

	<div class="container signin" style="padding-left: 350px">
       <div class="row">
            <div class="col-xs-12 col-sm-9 col-md-6">
                <h3>Forgot Your Password?</h3>
            </div>
        </div>
   <br>
   <h6>Enter your registered User Name for verification...</h6><br>
    <div class="row">
            <div class="col-lg-8">
         <g:form class="form-horizontal" controller="user" ID="myform" action="forgotpass"  nonvalidate="nonvalidate"> 
	<input type="hidden" name="pass" Id="pass"/>
            <div class="form-group">
                 <div class="col-sm-9">
            <label style="color: black;">User Name:</label>
           <input type="text" id="username" name="username" class="form-control" value="">
            <span id=usernameinfo style="color:red"></span>
            </div>
            </div>
            
            <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
             <div class="form-group ic-no-mgbottom">
                            <div class="col-sm-9 text-center">
           <input type="submit" ID="btnsave" value="Next" onclick="return validateForm()" class="btn btn-primary" />
            </div>
            </div></g:form>
            </div></div></div>

            </body>
            </html>