	
   	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/location1" style="height: 80px;"><img src="/Skeleton/website/img/arvanlogo.jpg" style="height: 60px;width: 150px;" alt=""></a>
					 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				
			
					    <div class="collapse navbar-collapse offset" >
	
						
						<ul class="nav navbar-nav menu_nav ml-auto" style="padding-top:30px">
  					
		
  							
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


  								<li class="nav-item"><a class="nav-link" href="/Skeleton/merchant/location1" >Home</a></li>
							<li class="nav-item"><a class="nav-link" href="/Skeleton/user/contact2">Contact</a></li>
						<li class="nav-item"><a class="fa fa-shopping-cart" style="font-size:18px; padding-top:10px; padding-bottom:20px" data-toggle="modal" data-target="#cart">(<span class="total-count"></span>)</a>
						</li>
							<g:if test="${result.uname ==null}">
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Sign in</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/Skeleton/merchant/login">Merchant Login</a></li>
							 		<li class="nav-item"><a class="nav-link" href="/Skeleton/user/userlogin1">User Login</a></li>
 								</ul>
							</li>
								
							</g:if>
							<g:else>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="userName-md"></span>${result.uname.firstName} 
								<span>&nbsp;&nbsp;</span><i class="fa fa-user" style="font-size:20px;"></i></a>
								
								<ul class="dropdown-menu">
								
								<li><g:link controller="user" action="updateuser" class="active"  style="color:	#DAA520;font-size:14px;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;font-size:14px;"><i class="fa fa-key"></i> Change Password</g:link></li>
								<li><g:link controller="user" action="myorders" class="active"  style="color:	#DAA520;font-size:14px;"><i class='fa fa-cart-arrow-down'></i> My Orders </g:link></li>
								<li><a href="/Skeleton/user/logout" style="color: #DAA520;font-size:14px;" class="clear-cart"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
								</ul>
							</li>
							</g:else>												
						</ul>
						
					</div>
				</div>
				
				
			</nav>
		</div>
	 
	</header>
	<!-- End Header Area -->
  