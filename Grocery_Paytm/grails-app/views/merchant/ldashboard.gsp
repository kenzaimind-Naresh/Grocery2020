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

function packValidity(){

	var expDate = document.getElementById("expiryDate").value
	//alert(expDate);
	var currentDate = new Date();	
	var year = currentDate.getFullYear();
	var month = currentDate.getMonth()+1;
	var date = currentDate.getDate();
	var todayDate = year+"-"+month+"-"+date;
	//alert(todayDate);

	if(todayDate >= expDate){
		return true;
		
		}else{
			event.preventDefault();
			alert("You already have a subscription");
			location.href = "/Skeleton/merchant/ldashboard";
			return;
			}
}

function packValidity2(){

	var expDate = document.getElementById("expiryDate").value
	//alert(expDate);
	var currentDate = new Date();	
	var year = currentDate.getFullYear();
	var month = currentDate.getMonth()+1;
	var date = currentDate.getDate();
	var todayDate = year+"-"+month+"-"+date;
	//alert(todayDate);

	if(todayDate <= expDate){
		return true;
		
		}else{
			event.preventDefault();
			alert("Your package validity has been expired.");
			location.href = "/Skeleton/merchant/ldashboard";
			return;
			}
}


</script>


</head>

<body>

   <g:render template="merchantheader1"/>
   
   
	<!-- start banner Area -->
		<div class="container">
					<br><br><br><br><br><br>
						<div class="row" style="padding-left: 150px;">
							<div class="col-lg-3">
								<div class="banner-content">
									<h4 style="font-family: Calibri" ><a href="/Skeleton/grocery/create" class="active"  style="color: black;" >Create Grocery</a> </h4>
									</div>
							</div>
							
							<div class="col-lg-3">
								<div class="banner-content">
									<h4 style="font-family: Calibri"><a href="/Skeleton/grocery/list" class="active"  style="color: black;" >View List</a> </h4>
									</div>
							</div>
						
							<div class="col-lg-3">
								<div class="banner-content">
									<h4 style="font-family: Calibri"><a href="/Skeleton/orderStatus/orderstatuslist" class="active"  style="color: black;" >Order</a> </h4>
									
								</div>
							</div>
							
							<div class="col-lg-3">
								<div class="banner-content">
									<h4 style="font-family: Calibri"><a href="/Skeleton/grocery/outofstock" class="active"  style="color: black;" >Out of Stock Details</a> </h4>
									
								</div>
							</div>
					</div>
				</div>
	<!-- End banner Area -->
<div class="container">
	<br><br><br>
	<div class="order_box" style="padding-left: 180px;">
		<div class="col-lg-2"></div>
		<p style="color: black;font-size: 16px;">If need to view your total stock details, please make a payment on available packages</p>
		<div class="col-lg-6" style="padding-left: 180px;">
		<g:link type="button" class="genric-btn primary circle" controller="package" action="packview" style="font-size: 16px;" onclick="packValidity()">Proceed to Buy</g:link>
		</div><br>
		<p style="color: black;font-size: 16px;">If already have your subscription package,</p>
		<div class="col-lg-6" style="padding-left: 160px;">
		<g:link type="button" class="genric-btn primary circle" controller="package" action="groceriesView" style="font-size: 16px;" onclick="packValidity2()">Get your Stock Details</g:link>	
		</div>
	</div>
	<input type="hidden" name="expiryDate" id="expiryDate" value="${result.expiryCheck.expiryDate }">
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