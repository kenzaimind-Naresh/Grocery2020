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
	<title>Admin</title>

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
    
    

 <br><br><br>
<br>
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
                  <g:link controller="Admin" action="packlist"><h4 style=" font-family: Calibri">Package</h4></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
		</div><br>
            
 <div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h4 style="font-family: Calibri">Merchants List <b style="font-size:12px; color:black;">
                (No of Merchants Registered = ${result.totalcount })</b></h4>
            </div>
            
        </div> <br>
  <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th style="color:black;font-family: Calibri">Shop Id</th>
      <th style="color:black;font-family: Calibri">Shop Name</th>
      <th style="color:black;font-family: Calibri">First Name</th>
      <th style="color:black;font-family: Calibri">Last Name</th>
      <th style="color:black;font-family: Calibri">Email Id</th>
      <th style="color:black;font-family: Calibri">Mobile Number</th>
      <th style="color:black;font-family: Calibri">Address</th>
      <th style="color:black;font-family: Calibri">City</th>
      <th style="color:black;font-family: Calibri">Zip code</th>
      <th style="color:black;font-family: Calibri">Document</th>
      </tr>
      </thead>
       <g:findAll in="${result.merchantdata}" expr="true">
     <tbody>
      <tr>
       <td>${it.shopId }</td>
     <td><a href="/Skeleton/admin/merchantdata?shopName=${it.shopName}" style="color:blue;">${it.shopName}</a></td>
      <td>${it.firstName}</td>
      <td>${it.lastName }</td>
      
      <td>${it.email}</td>
      <td>${it.mobileNumber}</td>
     
      <td>${it.address}</td>
      <td>${it.city}</td>
     
      <td>${it.zipCode}</td>
      <td><a href="/Skeleton/admin/merchantdoc?MerchantId=${it.id}" style="color:black;" id="${it.id}">Uploaded Doc</a></td>
     
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div>
       <div class="form-group">
                            <div class="col-sm-12 text-right">
       <g:if test="${result.offset > 0}">
    <g:link type="button" style="color:white" controller="admin" action="offsetlist" params="${[offset:result.offset-5,mode:'web']}" value="Previous"><button class="genric-btn primary circle" style="font-size: 15px;" >Previous</g:link></button>
    </g:if>
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
      <g:link type="button" style="color:white" controller="admin" action="offsetlist"   params="${[offset: result.offset+5,mode:'web']}" value="Next"><button class="genric-btn primary circle" style="font-size: 15px;" >Next</g:link></button>
       </g:if>
       </div>
       </div>
       </div>
       </div>
       </div>
       </div>
           
        </div> 
        <br><br><br><br><br>
        	<!-- start footer Area -->
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
	           

	<!-- End footer Area -->


</body>

</html>
 				
                 