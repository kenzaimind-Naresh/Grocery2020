<!DOCTYPE html>
<html>
	<head>
		 <link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">
	<link rel="stylesheet" href="/Skeleton/website/css/main.css">
	

	
  
  
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <script type="text/javascript">

jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});


$(document).ready(function () {
	 $("#createDate").datepicker({
        minDate: 0,autoclose: true,
        onSelect:function (){
			$("#createDateinfo").text("");
	    }
    });
    });
</script>
 
 
 
<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>
 
 
		
	</head>
	<body>
		
		
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
							<li class="nav-item "><a class="nav-link" href="/Skeleton/merchant/ldashboard">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
								
							</li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
								
							</li>
							
							
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.uname.firstName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="merchant" action="updateprofile" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="merchant" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
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
	
	<br><br><br>
		
		
		<div align="center">
<p style="color:black;font-Size: 25px;font-family: Calibri">${flash.message}</p>
<br>
    </div>
    
		<div id="create-grocery" class="content scaffold-create" role="main">
			<div class="row" >
			<h4 style="padding-left:450px;font-family: Calibri">Create Grocery</h4>
			
						<h4 style="padding-left:350px;font-family: Calibri"><g:link controller="grocery" action="list" >Grocery List</g:link></h4>
			
			</div>
			<br>
			
			
			<g:hasErrors bean="${groceryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${groceryInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:groceryInstance, action:'save']"  enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
			<div class="col-sm-12 text-left" style="padding-left:530px">
				<br>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" class="btn btn-primary"  value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
				</div>
			</g:form>
		</div>
		
	</body>
</html>
