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
	  //alert("hi");
	  Popup($(elem).html());
}

function Popup(data) 
{
	//alert("pop");
	//alert(data);
    var mywindow = window.open('', 'my div', 'height=400,width=600');
    mywindow.document.write('<html><head><title>my div</title>');
    mywindow.document.write('</head><body>');
    mywindow.document.write(data);
   // mywindow.document.write("resrteseresr");
    
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
				<%--<div class="col-lg-4">
					<div class="details_item">
						<h4>Order Info</h4>
						<ul class="list">
							<li><a href="#"><span>Order number</span> : 60235</a></li>
							<li><a href="#"><span>Date</span> : Los Angeles</a></li>
							<li><a href="#"><span>Total</span> : USD 2210</a></li>
							<li><a href="#"><span>Payment method</span> : Check payments</a></li>
						</ul>
					</div>
				</div>
				--%><div class="col-lg-6">
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
								<th scope="col"><strong>Grocery Name</strong></th>
								<th scope="col"><strong>Quantity</strong></th>
								<th scope="col"><strong>Total</strong></th>
							</tr>
						</thead>
						<tbody>
						<g:each in="${result.result.cartlist}" expr="true">
							<tr>
								<td>
									<p>${it.gname.split("00")[0]}</p>
								</td>
								<td>
									<h5>x ${it.gname.split("00")[1]}</h5>
								</td>
								<td>
									<p>${it.tcount}</p>
								</td>
							</tr>
						</g:each>
							<tr>
								<td>
									<h4>Total</h4>
								</td>
								<td>
									<h5>${result.result.tcount}</h5>
								</td>
								<td>
									<p>${result.result.totAmt}</p>
								</td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Order Details Area =================-->

</body>
</html>