<!DOCTYPE html>
<html lang="en">
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

<script  src="${resource(dir: 'js', file: 'usermerchant.js')}"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>


<script>
     if (sessionStorage.getItem("Page2Visited")) {
          sessionStorage.removeItem("Page2Visited");
          window.location.reload(true); // force refresh page1
     }
</script>
<script>
history.pushState(null, null, location.href);
window.onpopstate = function () {
history.go(1);
};
</script>

<script type="text/javascript">

function checkCode(){

	var randomValue= document.getElementById("randomValue").value;
	var otp = document.getElementById("otp").value;

	if(randomValue == otp){
		return true;
	}
	else{
		event.preventDefault();
		alert("Please enter valid Verification Code");
		
		return;
		}
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
							 
							<li class="nav-item"><a class="nav-link" href="/Skeleton/merchant/contact1">Contact</a></li>
							
						</ul>
						
					</div>
				</div>
				
			</nav>
		</div>
		
		 </header>
		 <!-- End Header Area -->
	
     <br><br><br>
     
<div align="center">
<p style="color:black;font-Size: 20px">${flash.message}</p>
<br>
    </div>

	<g:if test="${result.status =="error"}">
	<div class="container signin" style="padding-left: 350px">
       <div class="row">
            <div class="col-xs-12 col-sm-9 col-md-6">
                <h3 align="center">This User not Registred</h3>
            </div>
        </div>
        </div>
	</g:if>
<br>
<g:if test="${result.status =="success"}">

	<div class="container signin" style="padding-left: 350px">
       <div class="row">
            <div class="col-xs-12 col-sm-9 col-md-6">
                <h6 align="center">Enter your Verification Code here...</h6>
            </div>
        </div>
   
    <div class="row">
            <div class="col-lg-12">
            <g:form class="form-horizontal" controller="merchant" ID="myform" action="newPassword"  nonvalidate="nonvalidate"> 
           <input type="hidden" id="otp" name="otp" value="${result.otp }">
		   <input type="hidden" id="email" name="email" value="${result.uname }">
           <div class="form-group">
                 <div class="col-sm-6">
           <input type="text" id="randomValue" name="randomValue" class="form-control" onfocusout="checkCode()">
            <span id=randomValueinfo style="color:red"></span>
            </div>
            </div>
            
            <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
             <div class="form-group ic-no-mgbottom">
                            <div class="col-sm-6 text-center">
           <input type="submit" ID="btnsave" value="Next" onclick="checkCode()" class="btn btn-primary" />
            </div>
            </div></g:form>
            </div></div></div>
            
</g:if>

            </body>
            </html>