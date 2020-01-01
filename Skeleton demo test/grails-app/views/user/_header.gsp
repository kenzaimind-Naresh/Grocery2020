 <html>
 <head>


</head>
<body>
 	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/user/userdashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse offset" >
						<ul class="nav navbar-nav menu_nav ml-auto" style="padding-top:30px">
  							<g:form class="example" action="search" controller="user" method="GET" style="width:500px">			
  <input type="text" name="groceryName" id="groceryName" placeholder="Search..">
  <button type="submit"><i class="fa fa-search"></i></button>
</g:form>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<li class="nav-item active"><a class="nav-link" href="/Skeleton/user/userdashboard"  style="color:black">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop </a>
								
							</li>
							
										
							
							
							<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
							
							<li class="fa fa-shopping-cart" style="font-size:15px; padding-top:10px" data-toggle="modal" data-target="#cart">(<span class="total-count"></span>)</li>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="userName-md"></span><i class="fa fa-user" style="font-size:20px;"></i></a>
								
								<ul class="dropdown-menu">
								<li><g:link controller="user" action="updateuser" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/merchant/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

								</ul>
							</li>
								
																				
						</ul>
						
						
					</div>
				</div>
				
			
			</nav>
		</div>
		
	</header>
	<!-- End Header Area -->
 </body>
 </html>