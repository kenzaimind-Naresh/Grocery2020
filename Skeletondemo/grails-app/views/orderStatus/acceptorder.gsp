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
        
    	('#status').val(${result.status});
    	
        
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

function getval(sel)
{
	alert(sel.value);
	$('#status').val(sel.value);
}

</script>


</head>
<body>
<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/ldashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="/Skeleton/merchant/ldashboard">Home</a></li>
							
		
									
							
							 
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.uname.firstName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="merchant" action="updateprofile" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="merchant" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/merchant/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

								</ul>
							</li>
							
						</ul>
						
						
					</div>
				</div>
				
			</nav>
		</div>
		 
		  
		 
	</header>
	<!-- End Header Area -->
	
	<!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb" style="padding-top: 20px">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end" style="padding: 82px 127px 88px 0;">
                <div class="col-first">
                    <h1>Accept Order</h1>
                    <nav class="d-flex align-items-center">
                        <a href="/Skeleton/merchant/ldashboard">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="/Skeleton/orderStatus/acceptorder">Accept Order</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->
    
<br><br>    
<div class="container">
    <div class="col-lg-9">
        <div class="order_box">
            <h2>Order List</h2>
            <g:form class="form-horizontal"  controller="orderStatus"  action="updateOrder"  nonvalidate="nonvalidate">
                <ul class="list">
                    <li><a>Name<span class="last">Price</span></a></li>
                    <li><a>${result.acceptance.groceryName }<span class="middle">x${result.acceptance.totalQuantity}</span> <span class="last">${result.acceptance.groceryPrice}</span></a></li>
                </ul>
                <ul class="list list_2">
                    <li><a>Subtotal<span>${result.acceptance.totalAmount}</span></a></li>
<%--                    <li><a>Shipping <span>Flat rate: $50.00</span></a></li>--%>
                    <li><a>Total <span class="last">${result.acceptance.totalAmount}</span></a></li>
                    <li class="nav-item submenu dropdown">
                    <a>Status<span class="last">
<%--                    <input type="text" id="status" name="status" value="${result.status}"/>--%>
								<select name="statusId" id="statusId" class="form-control" onchange="getval(this)"; >
                                <option value="">${result.acceptance.status }</option>
                                <option value="Accepted">Accepted</option>
                                </select>
                                 <input type="hidden" id="orderId" name="orderId" value="${result.acceptance.orderId}"/>
                                 <input type="hidden" id="status" name="status"/>
							</span></a></li>
                </ul>
                			 <div class="col-sm-12 text-left" style="padding-left:180px">
				
				<fieldset class="buttons">
					<g:submitButton name="update" class="save" class="primary-btn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
				</div>
                </g:form>
                 
         </div>
     </div>
 </div>
 </body>
 </html>