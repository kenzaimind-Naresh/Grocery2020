<!DOCTYPE html>
<html lang="zxx" class="no-js">

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

	<style type="text/css">

    .search-form-wrapper {
    display: none;
    position: absolute;
    width: 100%;
    left: 0;
    right: 0;
    padding-left: 470px;
    padding-right:470px;
	}
	.search-form-wrapper.open {
    display: block;
	}
	
	</style>	

 	<style>
	
	.footer {
   	position: fixed;
   	left: 0;
   	bottom: 0;
   	width: 100%;
   	background-color:black;
   	color: white;
   	text-align: center;
	}

	a {
  	color: white;
	}
	a:hover {
  	color: white;
	}

	</style>

 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
      
    
    <script type="text/javascript">
    $( document ).ready(function() {
    	$('[data-toggle=search-form]').click(function() {
    	    $('.search-form-wrapper').toggleClass('open');
    	    $('.search-form-wrapper .search').focus();
    	    $('html').toggleClass('search-form-open');
    	  });
    	  $('[data-toggle=search-form-close]').click(function() {
    	    $('.search-form-wrapper').removeClass('open');
    	    $('html').removeClass('search-form-open');
    	  });
    	$('.search-form-wrapper .search').keypress(function( event ) {
    	  if($(this).val() == "Search") $(this).val("");
    	});

    	$('.search-close').click(function(event) {
    	  $('.search-form-wrapper').removeClass('open');
    	  $('html').removeClass('search-form-open');
    	});
    	});

    </script>  
    
    <script>
		history.pushState({ page: 1 }, "Title 1", "#no-back");
		window.onhashchange = function (event) {
  		window.location.hash = "no-back";
		};
	</script>

</head>

<body>

<!-- Start Header Area -->
<header class="header_area sticky-header">
	<div class="main_menu">
		<nav class="navbar navbar-expand-lg navbar-light main_box">
			<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
				<a class="navbar-brand logo_h" href="/Skeleton/user/userdashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
					<ul class="nav navbar-nav menu_nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="/Skeleton/user/userdashboard">Home</a></li>
						
						<li class="nav-item"><a class="nav-link" href="/Skeleton/user/contact2">Contact</a></li>
						<li class="nav-item submenu dropdown">
	<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span><i class="fa fa-user" style="font-size:20px;"></i></a>
							<ul class="dropdown-menu">
								<li><g:link controller="user" action="updateuser" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/user/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div> 
</header>

<!-- End Header Area -->

    
 <br><br><br><br><br>
<div class="container"><h4>Super Markets List</h4><br>
<div class="row">
     		<g:each in="${result.merchant}" var="i" expr="true">
    			<tr>
      				<div class="single-product">
						<div class="product-details">
							<div class="row" style="padding-left:50px">
								<button type="button" class="primary-btn"><a href="/Skeleton/user/marketcontactdetails?shopName=${i.shopName }" style="color: black">${i.shopName}</a></button>
							</div> 
						</div>
					</div>
				</tr>
    		</g:each>
		</div>
	</div>
</div>
</div>

<!--Start Footer Area --> 
   
<div class="footer">
	<div align="center">
		<p>Copyright<a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>
 		

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
	<script src="/Skeleton/website/js/vendor/bootstrap.min.js"></script>
	<script src="/Skeleton/website/js/jquery.ajaxchimp.min.js"></script>
	<script src="/Skeleton/website/js/jquery.nice-select.min.js"></script>
	<script src="/Skeleton/website/js/jquery.sticky.js"></script>
	<script src="/Skeleton/website/js/nouislider.min.js"></script>
	<script src="/Skeleton/website/js/countdown.js"></script>
	<script src="/Skeleton/web-app/website/js/jquery.magnific-popup.min.js"></script>
	<script src="/Skeleton/website/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/Skeleton/website/js/gmaps.min.js"></script>
	<script src="/Skeleton/website/js/main.js"></script>
	
 <!--End Footer Area --> 
 
</body>

</html>