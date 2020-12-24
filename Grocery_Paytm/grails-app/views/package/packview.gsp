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
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/merchantdashboard"><img src="/Skeleton/website/img/arvanlogo.jpg" style="height: 60px;width: 150px;" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="/Skeleton/merchant/merchantdashboard">Home</a></li>
							
							<li class="nav-item"><a class="nav-link" href="/Skeleton/merchant/contact1">Contact</a></li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.uname.firstName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="merchant" action="updateprofile" class="active"  style="color:	#DAA520;font-size:14px;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="merchant" action="changepass" class="active" style="color:	#DAA520;font-size:14px;"><i class="fa fa-key"></i> Change Password</g:link></li>
								<li><a href="/Skeleton/merchant/logout" style="color:	#DAA520;font-size:14px;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

								</ul>
							</li>
							
						</ul>
						
						
					</div>
				</div>
				
			</nav>
		</div>
		
		
		 </header>
		 <!-- End Header Area -->
   
   
	<!-- start banner Area -->
		<div class="container">
					<br><br><br><br><br><br>
					<div class="order_box">
					
						<p style="color: black;font-size: 16px;padding-left:200px; ">Dear ${result.uname.firstName },</p>
		
						<p style="color: black;font-size: 16px;padding-left:200px;">To view your total stock from start date to till,please do the subscription from below packages.</p>
			<hr>
			<g:form class="form-horizontal" role="form" controller="Package" Id="myform" name="myform" action="getSubscription"  nonvalidate="nonvalidate">		
        <div class="row" style="padding-left: 180px;">
            <div class="col-lg-12">
                <div class="panel panel-default">
                <div class="row">
 	<g:each in="${result.pack}" var="i" expr="true">
        <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                           <p style="color: black;font-size: 16px;"> ${i.packageName} Pack</p>
                        </div>
                        <div class="panel-body">
                        <g:if test = "${i.subAmount != "FREE"}">
                            <p style="color:black;"><b style="color:black;">Rs.${i.subAmount}/${i.duration }</b><br>Subscription</p>
                            </g:if>
                            <g:else>
                       <p style="color:black"><b>${i.subAmount}/${i.duration }</b><br>Subscription</p>
                        </g:else>
                        </div>
                        <div class="panel-footer">
                        <g:if test = "${i.subAmount != "FREE"}">
                        <g:link type="button" class="genric-btn primary circle" controller="package" action="getSubscription" style="font-size: 15px;" id="${i.packageName}">BUY</g:link>
                        </g:if>
                        <g:else>
                        <b style="font-size:25px;height:30px">FREE</b>
                        </g:else>
                        </div>
                    </div>
                </div>
                <input type="hidden" id="subAmount" name="subAmount" value="${i.subAmount}">
               </g:each>
               </div>
               </div>
               </div>
               </div>
     <input type="hidden" id="mode" name="mode" value="web">
     </g:form>
 </div><br><br><br><br><br>
 </div>
	<!-- End banner Area -->
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
 // color: white;
}
a:hover {
  //color: white;
}


</style>

<br><br>
<div class="footer ">
<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>  
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong>Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
</div>

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="/Skeleton/website/js/vendor/bootstrap.min.js"></script>
	<script src="/Skeleton/website/js/jquery.ajaxchimp.min.js"></script>
	<script src="/Skeleton/website/js/jquery.nice-select.min.js"></script>
	<script src="/Skeleton/website/js/jquery.sticky.js"></script>
	<script src="/Skeleton/website/js/nouislider.min.js"></script>
	<script src="/Skeleton/website/js/countdown.js"></script>
	<script src="/Skeleton/web-app/website/js/jquery.magnific-popup.min.js"></script>
	<script src="/Skeleton/website/js/owl.carousel.min.js"></script>
	           

</body>

</html>