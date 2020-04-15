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
<br><br><br><br><br><br>
<div class="container-fluid" style="padding-left:250px">
<div class="col-lg-8">
<div class="order_box">
	<div  style="color:green;font-size:20px; padding-left:200px;font-weight: bold;">${result.message}</div>
</div>
</div>
</div>
 <br><br>                                  

<div class="container-fluid" style="padding-left:450px">

 <div class="col-lg-6">
<h5 style="font-family: Calibri">Product Details </h5>

 <table class="table table-hover table-condensed ">
      						<thead>
      							<tr>
      								<th>Grocery Name</th>
      								<th>Quantity</th> 
      								<th>Price</th>
      							</tr>
      						</thead>
     						<tbody>
     							<g:each in="${result.result.cartlist}" expr="true">
    								<tr>
      									<td style="font-size: 17px;color: black;"> ${it.gname.split("00")[0]}</td>
      									<td style="font-size: 17px;color: black;"> ${it.gname.split("00")[1]}</td>
        								<td style="font-size: 17px;color: black;">${it.tcount}</td>
      								</tr>
    							</g:each>
    			    			<tr>
    			    			<td style="font-size: 17px;color: brown;">Total</td>
    			    			<td style="font-size: 17px;color: brown;">${result.result.tcount}</td>
    			    			<td style="font-size: 17px;color: brown;">${result.result.totAmt}</td>
    			    			</tr>
    						</tbody>
     					</table>
     					
</div>
<br>
<div class="row">
    <div class="col-lg-6">
<h5 style="font-family: Calibri">Shipping Address</h5>
                   ${result.data.fullName}<br>
                   ${result.data.houseNumber},<br>
                   near ${result.data.landmark}, ${result.data.area}, <br>
                   ${result.data.city}- ${result.data.pincode}<br>
                   ${result.data.state}
                   </div>
                   </div>
                   <br>
</div>

</body>
</html>