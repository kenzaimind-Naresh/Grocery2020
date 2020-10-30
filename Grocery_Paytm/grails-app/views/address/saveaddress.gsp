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

<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/user/userdashboard"><img src="/Skeleton/website/img/arvanlogo.jpg" style="height: 60px;width: 150px;" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/Skeleton/user/userdashboard">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span><i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="merchant" action="updateprofile" class="active"  style="color:	#DAA520;font-size:14px;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;font-size:14px;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/merchant/logout" style="color:	#DAA520;font-size:14px;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

								</ul>
							</li>
							
						</ul>
						
					</div>
				</div>
				
			</nav>
		</div>
		
		 
	</header>
	<!-- End Header Area -->

<br><br><br><br>

<style>
img {
  float: left;
}
</style>

 <div class="container intro-header">
            <div class="row">
                <div class="col-xs-6 col-sm-12 col-md-12  ">
                  

<g:if test="${result.getAt("status") == 'error'}">
<p style="color:black;font-size:20px">${result.getAt("message")}</p>
</g:if>
<g:else>
<div class="col"  style="color:black;font-size:20px">${result.message}</div>
<br>
<g:if test="${result.addressInstance != '0'}"> 
<div class="row">   
 <div class="container">
                                    
                   <img src="img_chania.jpg" alt="Flowers in Chania" width="200" height="300">
                   <p>Product Name:${result.addressInstance.ugroceryName} </p>
                          <p>Quantity:${result.addressInstance.uquantity} </p>
                                      <p>Cost:${result.addressInstance.ucost} </p>
                                      <p>Weight:${result.addressInstance.uweight} </p>
                                      <p>Offer:${result.addressInstance.uoffer} </p>
                   
                                         <p>Total Amt:${result.addressInstance.utotal} </p>
                                          <p>Image:${result.addressInstance.uimage} </p>                                   
</div>            
  <div id="mydiv" align="center">
                            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
                                <table class="table table-bordered table-hover" style="border-style: solid">
                                   <thead>
      <tr class="fieldgroup">
  
      <td style="color:black"><b>Track Id:</b></td>
      <td style="color:black"> ${result.addressInstance.addressId}</td>
   
     <td style="color:black"><b>Date:</b></td>
    <td style="color:black">${result.addressInstance.createdDate }</td>
    </tr>
    
  <tr class="fieldgroup">
      <td style="color:black"><b>FullName:</b></td>
      <td style="color:black">${result.addressInstance.fullName}</td>
      </tr>
      </thead>
      </table>
      </div></div></div></div></div>
      </g:if>
      </g:else>
      </div></div></div>
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