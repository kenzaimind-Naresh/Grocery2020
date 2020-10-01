<%@ page import="skeleton.OrderStatus" %>
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
	<title>Add cart</title>

 <link rel="stylesheet" href="/Skeleton/website/css/linearicons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/themify-icons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">
	
	<link rel="stylesheet" href="/Skeleton/website/css/nice-select.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nouislider.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/magnific-popup.css">
	<link rel="stylesheet" href="/Skeleton/website/css/main.css">


   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">     




<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type='text/javascript' src="js/jquery.mycart/jquery.mycart.js"></script>


  
  
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
			<a class="navbar-brand logo_h" href="/Skeleton/merchant/dashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 		aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse offset" >
				<ul class="nav navbar-nav menu_nav ml-auto" style="padding-top:30px">
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  					<li class="nav-item active"><a class="nav-link" href="/Skeleton/merchant/dashboard"  style="color:black">Home</a></li>
					<li class="nav-item submenu dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
					</li>
					<li class="nav-item submenu dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
					<li class="fa fa-shopping-cart" style="font-size:18px; padding-top:10px" data-toggle="modal" data-target="#cart">(<span class="total-count"></span>)</li>
				</ul>
			</div>
		</div>
	</nav>
</div>
</header>
<!-- End Header Area -->
	

<div id="show-orderStatus" class="content scaffold-show" role="main">
			
			<ol class="property-list orderStatus">
			
				<g:if test="${orderStatusInstance?.orderId}">
				<li class="fieldcontain">
					<span id="orderId-label" class="property-label"><g:message code="orderStatus.orderId.label" default="Order Id" /></span>
					
						<span class="property-value" aria-labelledby="orderId-label"><g:fieldValue bean="${orderStatusInstance}" field="orderId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderStatusInstance?.groceryName}">
				<li class="fieldcontain">
					<span id="groceryName-label" class="property-label"><g:message code="orderStatus.groceryName.label" default="Grocery Name" /></span>
					
						<span class="property-value" aria-labelledby="groceryName-label"><g:fieldValue bean="${orderStatusInstance}" field="groceryName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderStatusInstance?.groceryPrice}">
				<li class="fieldcontain">
					<span id="groceryPrice-label" class="property-label"><g:message code="orderStatus.groceryPrice.label" default="Grocery Price" /></span>
					
						<span class="property-value" aria-labelledby="groceryPrice-label"><g:fieldValue bean="${orderStatusInstance}" field="groceryPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderStatusInstance?.totalQuantity}">
				<li class="fieldcontain">
					<span id="totalQuantity-label" class="property-label"><g:message code="orderStatus.totalQuantity.label" default="Total Quantity" /></span>
					
						<span class="property-value" aria-labelledby="totalQuantity-label"><g:fieldValue bean="${orderStatusInstance}" field="totalQuantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderStatusInstance?.totalAmount}">
				<li class="fieldcontain">
					<span id="totalAmount-label" class="property-label"><g:message code="orderStatus.totalAmount.label" default="Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="totalAmount-label"><g:fieldValue bean="${orderStatusInstance}" field="totalAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderStatusInstance?.usercartId}">
				<li class="fieldcontain">
					<span id="usercartId-label" class="property-label"><g:message code="orderStatus.usercartId.label" default="Usercart Id" /></span>
					
						<span class="property-value" aria-labelledby="usercartId-label"><g:fieldValue bean="${orderStatusInstance}" field="usercartId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderStatusInstance?.merchantId}">
				<li class="fieldcontain">
					<span id="merchantId-label" class="property-label"><g:message code="orderStatus.merchantId.label" default="Merchant Id" /></span>
					
						<span class="property-value" aria-labelledby="merchantId-label"><g:fieldValue bean="${orderStatusInstance}" field="merchantId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderStatusInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="orderStatus.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${orderStatusInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderStatusInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="orderStatus.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:fieldValue bean="${orderStatusInstance}" field="modifiedBy"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:orderStatusInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${orderStatusInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>

	<!-- start footer Area -->
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

<div class="footer ">
<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>  
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a>All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong>Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
</div>
 
	<!-- End footer Area -->


	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>
			

	</body>
</html>
