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
	
	
	
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
	

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
	
	<style type="text/css">


table, td, th {    
   // border: 1px solid #ddd;
    text-align: center;
}

table {
    border-collapse: collapse;
    width: 25%;
}

th, td {
    padding: 12px;
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

<g:render template="/user/userheader2"/>

         
     <!--================Order Details Area =================-->
	<section class="order_details section_gap">
		<div class="container">
			<div class="order_details_table">
				<h2>Your Orders</h2>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"><h5>Order ID</h5></th>
			      				<th scope="col"><h5>Created Date</h5></th>
			      				<th scope="col"><h5>Grocery Name</h5></th>  
			      				<th scope="col"><h5>Total Amount</h5></th>
			      				<th scope="col"><h5>Status</h5></th>
							</tr>
						</thead>
						<tbody>
						<g:each in="${result.data}" expr="true">
							<tr>
								<td>
									<h6><a href="/Skeleton/user/orderdata?orderId=${it.orderId}" style="color: blue;"> ${it.orderId}</a></h6>
								</td>
								<td>
									<h6>${it.createdDate}</h6>
								</td>
								<td>
									<h6>${it.groceryName}</h6>
								</td>
								<td>
									<h6>${it.totalAmount}</h6>
								</td>
								<td>
									<h6>${it.status}</h6>
								</td>
							</tr>
						</g:each>
						</tbody>
					</table>
				</div>
				<div class="form-group">
					<div class="col-sm-12 text-right">
			       		<g:if test="${result.offset > 0}">
			     			<g:link type="button" style="color:white" controller="user" action="offsetlist" params="${[offset:result.offset-5,mode:'web']}" value="Previous">
			     				<button class="genric-btn primary circle" style="font-size: 15px;">Previous</button>
			     			</g:link>
			    		</g:if>
			  			<g:if test="${result.offset/5 < (result.totalcount)/5-1}">
			    			<g:link type="button" style="color:white" controller="user" action="offsetlist"   params="${[offset: result.offset+5,mode:'web']}" value="Next" >
			    				<button class="genric-btn primary circle" style="font-size: 15px;">Next</button>
			    			</g:link>
			       		</g:if>
			       </div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Order Details Area =================-->

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
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong style="color: blue;"> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong style="color: blue;">Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
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