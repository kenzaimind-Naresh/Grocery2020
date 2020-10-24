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
<g:render template="/grocery/groceryheader1"/>

 <!--================Order Details Area =================-->
	<section class="order_details section_gap">
		<div class="container">
			<div class="order_details_table">
				<h2>Order Details</h2>
				<g:form class="form-horizontal"  controller="orderStatus"  action="updateOrder"  nonvalidate="nonvalidate">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"><h5>Name</h5></th>
								<th scope="col"><h5>Quantity</h5></th>
								<th scope="col"><div class="col-sm-12 text-right"><h5>Price</h5></div></th>
							</tr>
						</thead>
						<tbody>
						<g:each in="${result.result.orderList}" expr="true">
							<tr>
								<td>
									<h6>${it.groceryName.split("00")[0] }</h6>
								</td>
								<td>
									<h6>${it.groceryName.split("00")[1] }</h6>
								</td>
								<td>
									<div class="col-sm-12 text-right"><h6>${it.groceryPrice}</h6></div>
								</td>
							</tr>
						</g:each>
							<tr>
								<td>
									<h6 style="color: brown;">Total</h6>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<div class="col-sm-12 text-right"><h6 style="color: brown;">${result.result.totAmt}</h6></div>
								</td>
							</tr>
							<tr>
								<td>
									<h6 style="color: brown;">Status</h6>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<div class="col-sm-12 text-right">
									<h6>
									<select name="statusId" id="statusId" class="form-control" onchange="getval(this)"; >
                               			<option value="">${result.result.status}</option>
                                	    <option value="Accepted">Accepted</option>
                                		<option value="30 Minutes">30 Minutes</option>
                                		<option value="1 Hour">1 Hour</option>
                                		<option value="2 Hours">2 Hours</option>
                                	</select>
                                	<input type="hidden" id="orderId" name="orderId" value="${result.acceptance.orderId}"/>
                                 	<input type="hidden" id="status" name="status"/>
                                	</h6>
                                	</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="col-sm-12 text-right">
					<fieldset class="buttons">
					<g:submitButton name="update" class="save" class="genric-btn primary circle" style="font-size: 15px;" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</fieldset>
					</div>
				</div>
				</g:form>
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