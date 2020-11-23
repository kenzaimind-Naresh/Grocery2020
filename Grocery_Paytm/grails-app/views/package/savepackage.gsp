<!DOCTYPE html>
<html>
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
		
		
		
	</head>
	<body>
	
<g:render template="/admin/adminhearder1"/>

 <br><br><br><br><br><br>
	<div class="container">
            <div class="row">
			<div class="col-lg-3">
				<div class="banner-content">
                  <g:link controller="admin" action="merchantlist"><h4 style=" font-family: Calibri">Merchants List</h4></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
            <div class="col-lg-3">
				<div class="banner-content">
                  <g:link controller="admin" action="userlist"><h4 style=" font-family: Calibri">Users List</h4></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </div>
             </div>
             <div class="col-lg-3">
				<div class="banner-content">
					 <g:link controller="category" action="create"><h4  style=" font-family: Calibri">Create Category</h4></g:link>
                </div>
             </div>
             <div class="col-lg-3">
				<div class="banner-content">
                  <g:link controller="admin" action="packlist"><h4 style=" font-family: Calibri">Package</h4></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
            </div>
            <br>
		</div>
<div class="container signin">
      
       <div class="row">
                <div class="col-lg-12 text-center">
                    <!-- Form Elements -->
                    <div class="page-header"  style="color:black;font-size:20px">${result.message}</div>
                </div>
                </div>
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
