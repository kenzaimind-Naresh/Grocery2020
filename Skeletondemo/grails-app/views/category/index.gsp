
<%@ page import="skeleton.Category" %>
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
								
							</li>
							
														<li class="nav-item"><a class="nav-link" href="#">Pages</a></li>
							
							<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
					
					 					
					<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="userName-md"></span>ADMIN<i class="fa fa-user" style="font-size:20px;"></i></a>
								
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

	
    
    

 <br><br><br><br>

		
		
		<style type="text/css">


table, td, th {    
    border: 1px solid #ddd;
    text-align: left;

}

table {
    border-collapse: collapse;
    width: 10%;
    margin-left:24%; 
    margin-right:15%;
    
}

th, td {
    padding: 6px;
}


 
 .pagination{
 padding-left:550px;
 position:fixed;
 
 }
 
</style>
	
		
		
		
		
		
		
		<div class="row">
			<h4 style="padding-left:480px;font-family: Calibri">Category List</h4>
						<h4 style="padding-left:450px;font-family: Calibri"><a href="/Skeleton/Category/create">Create Category</a></h4>
			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status" style="padding-left:450px;font-family: Calibri">${flash.message}</div>
			</g:if>
			<br>
			<table align="center">
			<thead>
					<tr>
					
						<g:sortableColumn  property="categoryName" title="${message(code: 'category.categoryName.label', default: 'Category Name')}" />
					
					</tr>
				</thead>
				<tbody style="color:black">
				<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td ><g:link style="color:black" action="show" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "categoryName")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${categoryInstanceCount ?: 0}" />
			</div>
	</body>
</html>
