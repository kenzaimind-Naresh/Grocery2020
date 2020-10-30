<html>
<head>
<title></title>
<style>

</style>
 <meta charset="utf-8">
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
	<title>skeleton</title>
     
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



 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
    $( document ).ready(function() {
        alert("Order Confirmed");

    	sessionStorage.clear('shoppingCart');
    });
    </script>
 
 <script>
  function PrintElem(elem)
{
	  Popup($(elem).html());
}

function Popup(data) 
{
    var mywindow = window.open('', 'my div', 'height=400,width=600');
    mywindow.document.write('<html><head><title>my div</title>');
    mywindow.document.write('</head><body>');
    mywindow.document.write(data);
    
    mywindow.document.write('</body></html>');

    mywindow.print();
  //  mywindow.close();

    return true;
}


  </script>     
 

<style>
body {
    font-family: Verdana;
}


 td {    
    border: 1px solid #ddd;
    text-align: center;
}
 th {    
    border: 1px solid #ddd;
    text-align: center;
}

table {
    border-collapse: collapse;
    width: 35%;
    background-color: #fff;
    text-align: center;
     font-color: black;
}

th, td {
    padding: 15px;
   
}

</style>



</head>
<body>

<g:render template="/user/userheader2"/>
<br><br>
<!--================Order Details Area =================-->
	<section class="order_details section_gap">
		<div class="container">
			<h3 class="title_confirmation">${result.message}</h3>
			<div class="row order_d_inner">
				<div class="col-lg-6">
					<div class="details_item">
						<h4>Billing Address</h4>
						<ul class="list">
							<li><a href="#"><span>Name</span> : ${result.data.fullName}</a></li>
							<li><a href="#"><span>Street</span> : ${result.data.houseNumber}, near ${result.data.landmark}, ${result.data.area}</a></li>
							<li><a href="#"><span>City</span> : ${result.data.city}</a></li>
							<li><a href="#"><span>State</span> : ${result.data.state}</a></li>
							<li><a href="#"><span>Postcode </span> : ${result.data.pincode}</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="details_item">
						<h4>Shipping Address</h4>
						<ul class="list">
							<li><a href="#"><span>Name</span> : ${result.data.fullName}</a></li>
							<li><a href="#"><span>Street</span> : ${result.data.houseNumber}, near ${result.data.landmark}, ${result.data.area}</a></li>
							<li><a href="#"><span>City</span> : ${result.data.city}</a></li>
							<li><a href="#"><span>State</span> : ${result.data.state}</a></li>
							<li><a href="#"><span>Postcode </span> : ${result.data.pincode}</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="order_details_table">
				<h2>Order Details</h2>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"><h5>Grocery Name</h5></th>
								<th scope="col"><h5>Qty x Price</h5></th>
								<th scope="col"><h5>Total</h5></th>
							</tr>
						</thead>
						<tbody>
						<g:each in="${result.result.cartlist}" expr="true">
							<tr>
								<td>
									<h6>${it.gname.split("00")[0]}</h6>
								</td>
								<td>
									<h6> ${it.gname.split("00")[1]} x ${it.gprice}</h6>
								</td>
								<td>
									<h6>${it.tcount}</h6>
								</td>
							</tr>
						</g:each>
							<tr>
								<td>
									<h6 style="color: brown;">Grand Total</h6>
								</td>
								<td>
									<h6 style="color: brown;">${result.result.tcount}</h6>
								</td>
								<td>
									<h6 style="color: brown;">${result.result.totAmt}</h6>
								</td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
			<br><br>
			<div class="col-lg-6">
				<div class="details_item">
					<h5 style="color: brown;">Note:</h5>
					<p style="color: black;"> Delivery Charges applicable depends on below distance</p>
					<ul class="list">
						<li style="color: black;">0 to 1Kms : Free</li>
						<li style="color: black;">1 to 3Kms : Rs.30</li>
						<li style="color: black;">3 to 5Kms : Rs.50</li>
						<li style="color: black;">5 to 7Kms : Rs.70</li>
					</ul>
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