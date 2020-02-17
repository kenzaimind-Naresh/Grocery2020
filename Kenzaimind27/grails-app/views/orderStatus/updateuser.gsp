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

</head>
<body>
<script>
     if (sessionStorage.getItem("Page2Visited")) {
          sessionStorage.removeItem("Page2Visited");
          window.location.reload(true); // force refresh page1
     }
</script>

  <script  src="${resource(dir: 'js', file: 'usermerchant.js')}"></script>

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
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item "><a class="nav-link" href="/Skeleton/user/userdashboard">Home</a></li>
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
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.user.userName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
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
     
     
<div align="center">
<p style="color:black;font-Size: 20px">${flash.message}</p>
<br>
    </div>

     
<!-- Content Header (Page header) -->
<section class="content-header">
<h3>
<p style="padding-left:450px;font-family: Calibri">Edit User</p>
</h3>
</section>
            
            
	<div class="container">
<div class="row">
<div class=" col-sm-6 col-md-8 col-md-offset-2 signin-pdtop">
<g:form class="form-horizontal" role="form" controller="User" Id="myform" name="myform" action="saveupdate"  nonvalidate="nonvalidate">

<div class="form-group">
<div class="col-md-4 col-sm-4">

<label for="userName" style="color:black">User Name :</label>
<input type="text" id="userName" name="userName" value="${result.user.userName}" class="form-control" required/>
 <span id="userNameinfo" style="color:red"></span>

<label for="password" style="color:black">Password :</label>
<input type="password" id="password" name="password" value="${result.user.password}" class="form-control" required/>
 <span id="passwordinfo" style="color:red"></span>
</div>
</div>


<div class="form-group">
<div class="col-md-4 col-sm-4">

<label for="email" style="color:black">Email :</label>
<input type="text" id="email" name="email" value="${result.user.email}" class="form-control" required/>
 <span id="emailinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">

<label for="mobileNumber" style="color:black">MobileNumber :</label>
<input type="text" id="mobileNumber" name="mobileNumber" value="${result.user.mobileNumber}" class="form-control" required />
 <span id="mobileNumberinfo" style="color:red"></span>
</div></div>


<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="mode" name="mode" value="web"/>
<input type="hidden" id="myaction" name="myaction" value="save"/>
 <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit" class="btn btn-primary" id="myform" name="myform" onclick="return validateForm()">
                                Create</button>
                        </div>
                        
                    </div>
                    </g:form>
                    
</div>
</div>

</div>



</body>
</html>