
<%@ page import="skeleton.Category" %>
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

 <br><br><br><br><br>
	
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="index" style="padding-left:450px;font-family: Calibri;font-size:20px;"><b>Category List</b></g:link></li>
			</ul>
		</div><br>
		<div id="show-category" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status" style="padding-left:450px;font-family: Calibri">${flash.message}</div>
			</g:if>
			<br>
			<div style="padding-left:450px;font-family: Calibri">
			<ol class="property-list category">
			
				<g:if test="${categoryInstance?.categoryName}">
				<li class="fieldcontain">
					<span id="categoryName-label" class="property-label"><g:message code="category.categoryName.label" default="Category Name" /></span> :
					&nbsp;&nbsp;&nbsp;
						<span class="property-value" aria-labelledby="categoryName-label"><g:fieldValue bean="${categoryInstance}" field="categoryName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			</div></div>


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
