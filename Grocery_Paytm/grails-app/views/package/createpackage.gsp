<!DOCTYPE html>
<html>
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
		
		
		
	</head>
	<body>
	
<g:render template="/admin/adminhearder1"/>

 <br><br><br><br><br><br>
	<div class="container">
            <div class="row">
			<div class="col-lg-3">
				<div class="banner-content">
                  <g:link controller="admin" action="merchantlist"><h4 style=" font-family: Calibri">Merchants List</h4></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
            <div class="col-lg-3">
				<div class="banner-content">
                  <g:link controller="admin" action="userlist"><h4 style=" font-family: Calibri">Users List</h4></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </div>
             </div>
             <div class="col-lg-3">
				<div class="banner-content">
					 <g:link controller="category" action="create"><h4  style=" font-family: Calibri">Create Category</h4></g:link>
                </div>
             </div>
             <div class="col-lg-3">
				<div class="banner-content">
                  <g:link controller="admin" action="packlist"><h4 style=" font-family: Calibri">Package</h4></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
            </div>
            <br>
            <g:form class="form-horizontal" role="form" controller="Package" Id="myform" name="myform" action="savepackage"  nonvalidate="nonvalidate">
		<div id="create-category" class="content scaffold-create" role="main" style="padding-left:300px;">
		
			<h5 style="padding-left:100px;font-family: Calibri">Create Package</h5><br>
			<div class="col-md-5 col-sm-5">
			<div class="fieldcontain">
			<label >Package Name: </label>
			<input type="text" id="packageName" name="packageName" placeholder="Package Name" class="form-control" required/>
			 <span id="packageNameinfo" style="color:red"></span>
			</div>
			</div>
			<div class="col-md-5 col-sm-5">
			<div class="fieldcontain">
			<label >Duration: </label>
			<select id="duration" name="duration" class="form-control">
            	<option value="1month">1month</option>
            	<option value="2month">2month</option>
            	<option value="3month">3month</option>
            	<option value="4month">4month</option>
            	<option value="5month">5month</option>
            	<option value="6month">6month</option>
            	<option value="7month">7month</option>
            	<option value="8month">8month</option>
            	<option value="9month">9month</option>
            	<option value="10month">10month</option>
            	<option value="11month">11month</option>
            	<option value="12month">12month</option>
            </select>
			 <span id="durationinfo" style="color:red"></span>
			</div>
			</div>
			<div class="col-md-5 col-sm-5">
			<div class="fieldcontain">
			<label >Price: </label>
			<input type="text" id="subAmount" name="subAmount" placeholder="Amount" class="form-control" required/>
			 <span id="subAmountinfo" style="color:red"></span>
			</div>
			</div>
			<div class="col-md-5 col-sm-5">
			<div class="fieldcontain">
			<label >Created By: </label>
			<input type="text" id="createdby1" name="createdby1" value="${result.admin.adminname }" placeholder="Created By" class="form-control" disabled/>
			 <span id="createdbyinfo" style="color:red"></span>
			</div>
			</div>
			
			<input type="hidden" id="mode" name="mode" value="web"/>
			<input type="hidden" id="myaction" name="myaction" value="save"/>
			<input type="hidden" id="createdby" name="createdby" value="${result.admin.adminname }">
			<div class="col-sm-6" style="padding-left:120px;"><br>
			<input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="genric-btn primary circle" style="font-size: 15px;"/>
			</div>
		</div>	
		</g:form>
		</div>
<br><br><br>

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
