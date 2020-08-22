<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/location1"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" style="padding-top:30px; padding-bottom:30px;" href="/Skeleton/user/marketdata">Home</a></li>
							
							<li class="nav-item"><a class="nav-link" style="padding-top:30px; padding-bottom:30px;" href="/Skeleton/user/marketdata">Shop</a></li>
													
							<li class="nav-item"><a class="nav-link" style="padding-top:30px; padding-bottom:30px;" href="/Skeleton/user/contact2">Contact</a></li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" style="padding-top:30px; padding-bottom:30px;" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								<g:if test="${result.uname !=null}">

								<span class="userName-md"></span>${result.uname.userName } <span>&nbsp;&nbsp;</span><i class="fa fa-user" style="font-size:20px;"></i>
							</g:if>
								</a>
								
								<ul class="dropdown-menu">
								<li><g:link controller="user" action="updateuser" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><g:link controller="user" action="myorders" class="active"  style="color:	#DAA520;"><i class='fa fa-cart-arrow-down'></i> My Orders </g:link></li>
								<li><a href="/Skeleton/user/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>

								</ul>
							</li>
								
						</ul>
						
					</div>
				</div>
			</nav>
		</div>
	
	</header>
	<!-- End Header Area -->
