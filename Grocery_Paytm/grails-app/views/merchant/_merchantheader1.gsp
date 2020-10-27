<!DOCTYPE html>
<html
<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/ldashboard"><img src="/Skeleton/website/img/arvanlogo.jpg" style="height: 60px;width: 150px;" alt=""></a>
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
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.uname.firstName}
								<i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								<g:if test="${result.flag =="M"}">
								<li><g:link controller="merchant" action="updateprofile" class="active"  style="color:	#DAA520;font-size:14px;"><i class="fa fa-user"></i> Profile</g:link></li>
									</g:if>
									<g:else>
										<li><g:link controller="user" action="updateuser" class="active"  style="color:	#DAA520;font-size:14px;"><i class="fa fa-user"></i> Profile</g:link></li>
									</g:else>
								<li><g:link controller="merchant" action="changepass" class="active" style="color:	#DAA520;font-size:14px;"><i class="fa fa-key"></i> Change Password</g:link></li>
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
		 </html>