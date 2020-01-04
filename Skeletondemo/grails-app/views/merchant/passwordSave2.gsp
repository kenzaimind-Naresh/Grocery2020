<html>
<head>
<title>Change Password</title>




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




</head>
<body>

<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/dashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item "><a class="nav-link" href="/Skeleton/merchant/dashboard">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
								<ul class="dropdown-menu">
									
								</ul>
							</li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
								
							</li>
														
							
							
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
									<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span><i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="user" action="updateuser" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> Profile</g:link></li>
								<li><a href="/Skeleton/user/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

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
     
        
        <div class="container signin">
       <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <br><br><br><br><br><br>
                    
                    <div class="page-header"  style="padding-left:250px;color:black;font-size:20px">${result.message}</div>
                    
                    
                </div>
                </div>
                </div>
                
                
<div align="center">
<p style="color:black;font-Size: 20px;font-family: Calibri">${flash.message}</p>
<br>
    </div>

    
</body>
</html>



