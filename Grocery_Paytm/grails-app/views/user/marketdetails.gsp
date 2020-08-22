<!DOCTYPE html>
<html>
<head>



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


form.example input[type=text] {
  padding: 5px;
  font-size: 15px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: white;
}

form.example button {
  float: left;
  width: 20%;
  padding: 4px;
  background: orange;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
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

  <script type="text/javascript">

jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});


$(document).ready(function () {
$("#date").datepicker({
        minDate: 0,autoclose: true,
        onSelect:function (){
$("#dateinfo").text("");
   }
    });
    });

function getdata() {
var date= document.getElementById("date1").value
var doctorId = document.getElementById("doctorId").value
var path = "/ProviderSearch/Appointment/getdata";
$.ajax({
 url : path,
 type : "get",
 data :{
  date : date,
  doctorId:doctorId
 },
 success : function(res) {
 alert(res.split("#")[1])
 },
 error : function() {
 }
})
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
<a class="navbar-brand logo_h" href="/Skeleton/merchant/location"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<div class="collapse navbar-collapse offset"  style="padding-left:530px">
<ul class="nav navbar-nav menu_nav ml-auto" style="padding-top:30px">
<li class="nav-item active"><a class="nav-link" href="/Skeleton/merchant/location"  style="color:black">Home</a></li>
<li class="nav-item submenu dropdown">
<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
aria-expanded="false">Shop</a>
</li>
<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
<li class="fa fa-shopping-cart" style="font-size:18px; padding-top:10px; padding-bottom:20px" data-toggle="modal" data-target="#cart">(<span class="total-count"></span>)</li>&emsp;&emsp;
<li class="nav-item submenu dropdown">
<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${result.uname.userName}<i class="fa fa-user" style="font-size:20px;"></i></a>
<ul class="dropdown-menu">
<li><g:link controller="user" action="updateuser" class="active"  style="color: #DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
<li><g:link controller="user" action="changepass" class="active" style="color: #DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
<li><g:link controller="user" action="myorders" class="active"  style="color: #DAA520;"><i class='fa fa-cart-arrow-down'></i> My Orders </g:link></li>
<li><a href="/Skeleton/user/logout" style="color: #DAA520;" class="clear-cart"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
</ul>
</li>
</ul>
</div>
</div>
</nav>
</div>
</header>
<!-- End Header Area -->

     <br>

<br>  <br>  <br>
 <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb" style="padding-top: 20px">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end" style="padding: 82px 127px 88px 0;">
                <div class="col-first">
                    <h1>Contact</h1>
                    <nav class="d-flex align-items-center">
                        <a href="/Skeleton/user/userdashboard">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="/Skeleton/user/contact2">Contact</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->
    
 <br><br>
	    
    
 <!--================Contact Area =====================--!>
	<section class="contact_area section_gap_bottom">
		<div class="container">
			<%--<div id="mapBox" class="mapBox" data-lat="40.701083" data-lon="-74.1522848" data-zoom="13" data-info="PO Box CT16122 Collins Street West, Victoria 8007, Australia."
			 data-mlat="40.701083" data-mlon="-74.1522848">
			</div0>
			--%>

			<div class="row">
				<div class="col-lg-3">
					<div class="contact_info">
					    <g:each in="${result.data}" expr="true">
						<div class="info_item">
							<i class="lnr lnr-home"></i>
							<h6>${it.street},${it.address}-${it.zipCode}</h6>
		
							<p>${it.shopName}</p>
						</div>
						<div class="info_item">
							<i class="lnr lnr-phone-handset"></i>
							<h6>${it.mobileNumber}</h6>
							<p>Mon to Fri 9am to 6 pm</p>
						</div>
						<div class="info_item">
							<i class="lnr lnr-envelope"></i>
							<h6>${it.email}</h6>
							<p>Send us your query anytime!</p>
						</div>
					</g:each>
					</div>
				</div>
				<div class="col-lg-9">
					<form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'">
							</div>
							<div class="form-group">
								<input type="email" class="form-control" id="email" name="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="subject" name="subject" placeholder="Enter Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<textarea class="form-control" name="message" id="message" rows="1" placeholder="Enter Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'"></textarea>
							</div>
						</div>
						<div class="col-md-12 text-right">
							<button type="submit" value="submit" class="primary-btn">Send Message</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!--================Contact Area =================-->
  



   

<div class="footer">
<div align="center">
<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p>
<p>
</div>
</div>
 

 

     



</body>
</html>
