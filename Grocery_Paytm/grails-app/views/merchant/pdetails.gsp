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
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
							<li class="nav-item active"><a class="nav-link" href="/Skeleton/merchant/dashboard"  style="color:black">Home</a></li>
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
							</li>
														
							<li class="nav-item"><a class="nav-link" href="/Skeleton/merchant/contact1">Contact</a></li>
						<li class="fa fa-shopping-cart" style="font-size:24px" data-toggle="modal" data-target="#cart">(<span class="total-count"></span>)</li>														
						</ul>
					</div>
				</div>				
			</nav>
		</div>
	</header>
	<!-- End Header Area -->
	
<br><br><br><br>

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap" style="padding-top:20px;padding-left:100px">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<img  src="${createLink(controller:'Grocery', action:'showPayload', id:"${groceryInstance.id}")}" width='200' />
					
						
				</div>   
					<div class="content-headin" style="padding-bottom:20px;">
						<span style="font-size:17px">
						
						<span id="groceryName-label" class="property-label"><g:message code="grocery.groceryName.label" default="Product Details" /></span>
						</span>
							<br>
							<br>
							
							<table>

<tr>
<td>
<g:if test="${groceryInstance?.groceryName}">


<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="groceryName-label" class="property-label"><g:message code="grocery.groceryName.label" default="GroceryName &nbsp;&nbsp;&nbsp;:" /></span>

&nbsp;&nbsp;&nbsp;&nbsp; 
<td><span class="property-value" aria-labelledby="groceryName-label"><g:fieldValue bean="${groceryInstance}" field="groceryName"/></span></font></td>

</span>

</div>

</g:if>
</td>
</tr>
<tr>
<td>
<g:if test="${groceryInstance?.quantity}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="quantity-label" class="property-label"><g:message code="grocery.quantity.label" default="Quantity &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :" style="font-size:25px" /></span>
&nbsp;&nbsp;&nbsp;&nbsp;
<td><span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${groceryInstance}" field="quantity" /></span></font></td>
</span>
</div>
</g:if>
</td>
</tr>
<tr>
<td>
<g:if test="${groceryInstance?.cost}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="cost-label" class="property-label"><g:message code="grocery.cost.label" default="Cost &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  :" /></span>
&nbsp;&nbsp;&nbsp;&nbsp;
<td><span class="property-value" aria-labelledby="cost-label">&#x20b9;<g:fieldValue bean="${groceryInstance}" field="cost"/></span></td>

</span>
</div>
</g:if>
</td>
</tr>
<tr>
<td>

<g:if test="${groceryInstance?.weight}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="weight-label" class="property-label"><g:message code="grocery.weight.label" default="Weight &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:" /></span>
&nbsp;&nbsp;&nbsp;&nbsp;
<td><span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${groceryInstance}" field="weight"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>


<tr>
<td>

<g:if test="${groceryInstance?.offer}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="offer-label" class="property-label"><g:message code="grocery.offer.label" default="offer &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:" /></span>
&nbsp;&nbsp;&nbsp;&nbsp;
<td><span class="property-value" aria-labelledby="offer-label"><g:fieldValue bean="${groceryInstance}" field="offer"/></span></font>%</td>

</span>
</div>
</g:if>
</td>
</tr>


<tr>
<td>

<g:if test="${groceryInstance?.total}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="total-label" class="property-label"><g:message code="grocery.total.label" default="Total Amt &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:" /></span>
&nbsp;&nbsp;&nbsp;&nbsp;
<td><span class="property-value" aria-labelledby="total-label">&#x20b9;<g:fieldValue bean="${groceryInstance}" field="total"/></span></td>

</span>
</div>
</g:if>
</td>
</tr>


<tr>
<td>


<g:if test="${groceryInstance?.merchantshopName}">
<div class="fieldcontain" align="center">
<span style="font-size:17px"> 
<span id="merchantshopName-label" class="property-label"><g:message code="grocery.merchantshopName.label" default="Shop Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:" /></span>
&nbsp;&nbsp;&nbsp;&nbsp;
<td><span class="property-value" aria-labelledby="merchantshopName-label"><g:fieldValue bean="${groceryInstance}" field="merchantshopName"/></span></td>

</span>
</div>
</g:if>






</td>
</tr>





<tr>
<th>
</th>
<th><br><br>
<g:link  class="btn btn-info btn-lg" controller="address" action="create" >Buy Now<span class="glyphicon glyphicon-send"></span></g:link>

</th>
</tr>
</table>
				
							
		</div>
				</div>
			</div>
	</section>
	<!--================End Login Box Area =================-->

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