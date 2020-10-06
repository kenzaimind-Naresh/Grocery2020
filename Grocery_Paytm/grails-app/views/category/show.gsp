
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
	<title>Skeleton</title>
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

 <br><br><br><br><br>
	
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="index" style="padding-left:450px;font-family: Calibri;font-size:20px;"><b>Category List</b></g:link></li>
			</ul>
		</div><br>
		<div id="show-category" class="content scaffold-show" role="main">
			<%--<h4 style="padding-left:450px;font-family: Calibri;color:orange">Show Category</h4>
			--%><g:if test="${flash.message}">
			<div class="message" role="status" style="padding-left:450px;font-family: Calibri">${flash.message}</div>
			</g:if>
			<br>
			<div style="padding-left:450px;font-family: Calibri">
			<ol class="property-list category">
			
				<g:if test="${categoryInstance?.categoryName}">
				<li class="fieldcontain">
					<span id="categoryName-label" class="property-label"><g:message code="category.categoryName.label" default="Category Name" /></span> :
					&nbsp;&nbsp;&nbsp;
						<span class="property-value" aria-labelledby="categoryName-label"><g:fieldValue bean="${categoryInstance}" field="categoryName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			</div>
			<%--<g:form url="[resource:categoryInstance, action:'delete']" method="DELETE">
			
			 <div class="col-sm-12 text-left" style="padding-left:500px">
			<br>
		
				<fieldset class="buttons">
				<g:actionSubmit value="edit" class="edit" action="edit" ><g:link class="edit" action="edit" resource="${categoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link></g:actionSubmit>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
				</div>
			</g:form>
		--%></div>
	</body>
</html>
