


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
	<title>skeleton</title>
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
      


<script type="text/javascript">
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
					<a class="navbar-brand logo_h" href="/Skeleton/registration/ldashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/Skeleton/registration/ldashboard">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
								<!-- <ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
									<li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
									<li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
								</ul> -->
							</li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
								<!-- <ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
								</ul> -->
							</li>
														
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Pages</a>
								<!-- <ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="tracking.html">Tracking</a></li>
									<li class="nav-item"><a class="nav-link" href="elements.html">Elements</a></li>
								</ul> -->
							</li>
							
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.uname.firstName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="registration" action="updateprofile" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="registration" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/registration/dashboard" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

								</ul>
							</li>
							
						</ul>
						
					
			  <ul class="nav navbar-nav navbar-right">
										
							<li class="nav-item">
								<button class="search" data-toggle="search-form"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
						
						
						
					</div>
				</div>
				
			</nav>
		</div>
		
		
		 
		 
		 
<div class="search-form-wrapper">
   <form class="search-form" id="" action="">
      <div class="input-group">
         <input type="text" name="search" class="search form-control" placeholder="Search" >
        <!--  <span class="input-group-addon" id="basic-addon2"><i class="fa fa-search" aria-hidden="true"></i>
         </span> -->
         <!-- <span class="input-group-addon search-close" id="basic-addon2"><i class="fa fa-window-close" aria-hidden="true"></i>
         </span> -->
      </div>
   </form>
</div>
		 
		 
		 
	</header>
	<!-- End Header Area -->
	
    
    <br><br><br><br>
    

<div align="center">
<p style="color:black;font-Size: 20px">${flash.message}</p>
<br>
    </div>

    
					<div class="content-heading" style="padding-left:50px;">
						<h3 style="padding-left:380px">Edit Profile </h3>
						
    <br>
    			<g:form class="form-horizontal" role="form" controller="Registration" Id="myform" name="myform" action="saveupdate"  nonvalidate="nonvalidate">
    
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             <div class="form-group">
             <div class="row">
<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
	
<label for="regId" style="color:black">Reg ID :</label>
	<input type="text" class="form-control" id="regId" name="regId" value="${result.uname.regId}" placeholder="Registration Id" >
								                            <span id="regIdinfo" style="color:red;"></span>
								
							
</div>


</div>

<div class="fieldcontain">
	<label for="shopName" style="color:black">Shop Name :</label>
			<input type="text" class="form-control" id="shopName" name="shopName" value="${result.data.shopName}" placeholder="Shop Name"  >
	 <span id="shopNameinfo" style="color:red;"></span>
							
						
</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain">
	
<label for="firstName" style="color:black">First Name :</label>
<input type="text" class="form-control" id="firstName" name="firstName" value="${result.data.firstName}" placeholder="First Name" >
	   <span id="firstNameinfo" style="color:red;"></span>
							
</div>
</div></div></div>
 <div class="form-group">
  <div class="row">
<div class="col-md-4 col-sm-4">


<div class="fieldcontain">	
<label for="lastName" style="color:black">Last Name :</label>
<input type="text" class="form-control" id="lastName" name="lastName" value="${result.data.lastName}" placeholder="Last Name" >
	   <span id="lastNameinfo" style="color:red;"></span>
							
</div>

</div>

<div class="fieldcontain">
<label for="email" style="color:black">Email ID :</label>
<input type="text" class="form-control" id="email" name="email" value="${result.data.email}" placeholder="Email ID" read only >
															                            <span id="emailinfo" style="color:red;"></span>
		
	
</div>
  
<div class="col-md-4 col-sm-4">


<div class="fieldcontain">	


<label for="mobileNumber" style="color:black">Mobile Number :</label>
<input type="text" class="form-control" id="mobileNumber" name="mobileNumber" value="${result.data.mobileNumber}"  placeholder="Mobile Number" >
		    <span id="mobileNumberinfo" style="color:red;"></span>
							
</div>

</div>

</div>
</div>


 <div class="form-group">
  <div class="row">
  
<div class="col-md-4 col-sm-4">


<div class="fieldcontain">

<label for="address" style="color:black">Address :</label>
<input type="text" class="form-control" id="address" name="address" value="${result.data.address}" placeholder="Address" >
	  <span id="addressinfo" style="color:red;"></span>
							
	
</div>

</div>

<div class="fieldcontain">
<label for="city" style="color:black">City :</label>
<input type="text" class="form-control" id="city" name="city" value="${result.data.city}" placeholder="City" >
		<span id="cityinfo" style="color:red;"></span>


</div>

<div class="col-md-4 col-sm-4">


<div class="fieldcontain">	


<label for="zipCode" style="color:black">ZipCode :</label>
<input type="text" class="form-control" id="zipCode" name="zipCode" value="${result.data.zipCode}" pattern="[0-9]{6}" title="six digit zip code" placeholder="Zip Code">
		 <span id="zipCodeinfo" style="color:red;"></span>
							
										
</div>

</div>
</div>
</div>












</div>
</div>
</div>
    
    
							
							<input type="hidden" id="modifiedBy" name="modifiedBy" value="self">
							<input type="hidden" id="myaction" name="myaction" value="save">
						<input type="hidden" id="mode" name="mode" value="web">

    
    
    

<div class="form-group" style="padding-left:300px">

<div class="col-md-6 text-center">
<br>
                            <button type="submit" class="btn btn-primary" onclick="return validateForm()">Update</button>

</div>
</div>
    
    					</g:form>
    
					</div>
			
    

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


<div class="footer">
<div align="center">
<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>
 		

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
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
</body>

</html>