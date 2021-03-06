                
                
                
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


    	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/admin/adminDashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item submenu dropdown">
								<a href="/Skeleton/admin/adminDashboard" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Home</a>
								
							</li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
								
							
							<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
					
					 					
					<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="userName-md"></span>${result.admin.adminname }<i class="fa fa-user" style="font-size:20px;"></i></a>
								
								<ul class="dropdown-menu">
								
								<li><g:link controller="#" action="#" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="#" action="#" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/admin/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

								</ul>
							</li>
					
						</ul>
						
					</div>
				</div>
			</nav>
		</div>
		
	</header>
	<!-- End Header Area -->

	
    
    

 <br><br><br>
<br>
<div class="container">
            <div class="row">
			<div class="col-lg-3">
				<div class="banner-content">
                  <g:link controller="merchant" action="merchantlist"><h4 style=" font-family: Calibri">Merchants List</h4></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
            <div class="col-lg-3">
				<div class="banner-content">
                  <g:link controller="user" action="userlist"><h4 style=" font-family: Calibri">Users List</h4></g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </div>
             </div>
             <div class="col-lg-3">
				<div class="banner-content">
					 <g:link controller="category" action="create"><h4  style=" font-family: Calibri">Create Category</h4></g:link>
                </div>
             </div>
            </div>
            
            
            <br>
            
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
      
      </tr>
      </thead>
       <g:findAll in="${result.merchantdata}" expr="true">
     <tbody>
      <tr>
       <td>${it.shopId }</td>
      <td>${it.shopName}</td>
      <td>${it.firstName}</td>
      <td>${it.lastName }</td>
      
      <td>${it.email}</td>
      <td>${it.mobileNumber}</td>
     
      <td>${it.address}</td>
      <td>${it.city}</td>
     
      <td>${it.zipCode}</td>
     
     
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div>
       <div class="form-group">
                            <div class="col-sm-12 text-right">
       <g:if test="${result.offset > 0}">
     <button class="btn btn-primary"><g:link type="button" style="color:white" controller="registration" action="offsetlist1" params="${[offset:result.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <button class="btn btn-primary"> <g:link type="button" style="color:white" controller="registration" action="offsetlist1"   params="${[offset: result.offset+5]}" value="Next" >Next</g:link></button>
       </g:if>
       </div></div></div></div></div>
       </div>
       
            
        </div>
    
    
    
    <script src="/ProviderSearch/website/js/bootstrap.min.js"></script>
    <script src="/ProviderSearch/website/js/tm-script.js"></script>
</body>

</html>
 				
                 