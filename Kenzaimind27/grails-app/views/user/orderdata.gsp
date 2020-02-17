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

<g:render template="/user/userheader2"/>


<!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb" style="padding-top: 20px">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end" style="padding: 82px 127px 88px 0;">
                <div class="col-first">
                    <h1>My Orders</h1>
                    <nav class="d-flex align-items-center">
                        <a href="/Skeleton/user/userdashboard">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="/Skeleton/user/myorders">My Orders</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

<br><br>




 <div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h2 style="font-size: 20px;color: black;">Product List <b style="font-size:18px; color:black;"></h4>
            </div>
        </div> <br>
  <div class="row">
            <div class="col-lg-6">
                <div class="panel panel-default">
 					<div class="table-responsive">
						<table class="table table-hover table-condensed table-striped">
      						<thead>
      							<tr>
      								<th>Grocery Name</th>  
      								<th>Price</th>
      							</tr>
      						</thead>
     						<tbody>
     							<g:each in="${result.result.orderList}" expr="true">
    								<tr>
      									<td style="font-size: 17px;color: black;"> ${it.groceryName}</td>
        								<td style="font-size: 17px;color: black;">${it.groceryPrice}</td>
      								</tr>
    							</g:each>
    			    			<tr>
      								<td style="font-size: 18px;color: brown;"> Total Amount</td>
        							<td style="font-size: 18px;color: brown;">${result.result.totAmt}</td>
      							</tr>
    						</tbody>
     					</table>
     				</div>
    			</div>
   			</div>
  		</div>
	</div>

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
</body>

</html>