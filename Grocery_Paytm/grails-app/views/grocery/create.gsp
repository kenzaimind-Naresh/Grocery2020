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
		
  <g:render template="groceryheader1"/>
		
<br><br><br><br>		
		<div align="center">
<p style="color:black;font-Size: 25px;font-family: Calibri">${flash.message}</p>
<br>
    </div>
    
		<div id="create-grocery" class="content scaffold-create" role="main">
			    
<!-- start banner Area -->
		<div class="container">
					<br>
						<div class="row">
							<div class="col-lg-3">
								<div class="banner-content">
									<h4 style="font-family: Calibri" ><a href="#" class="active"  style="color: blue;" >Create Grocery</a> </h4>
									</div>
							</div>
							
							<div class="col-lg-3">
								<div class="banner-content">
									<h4 style="font-family: Calibri"><a href="/Skeleton/grocery/list" class="active"  style="color: black;" >View List</a> </h4>
									</div>
							</div>
						
							<div class="col-lg-3">
								<div class="banner-content">
									<h4 style="font-family: Calibri"><a href="/Skeleton/orderStatus/orderstatuslist" class="active"  style="color: black;" >Order</a> </h4>
									
								</div>
							</div>
							
							<div class="col-lg-3">
								<div class="banner-content">
									<h4 style="font-family: Calibri"><a href="/Skeleton/grocery/outofstock" class="active"  style="color: black;" >Stock Details</a> </h4>
									
								</div>
							</div>
							
							<div class="col-lg-2">
								<div class="banner-content">
									<h4 style="font-family: Calibri"><a href="/Skeleton/package/packview" class="active"  style="color: black;" >View Stock</a> </h4>
									
								</div>
							</div>
					</div>
				</div>
	<!-- End banner Area -->
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
			<div class="col-sm-12 text-left" style="padding-left:550px">
				<br>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" class="genric-btn primary circle" style="font-size: 15px;"  value="${message(code: 'default.button.save.label', default: 'Save')}" />
				</fieldset>
				</div>
			</g:form>
		</div>

<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:black;
   color: white;
   text-align: center;
}

a {
 // color: white;
}
a:hover {
  //color: white;
}


</style>

<br><br>
<div class="footer ">
<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>  
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong>Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
</div>

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="/Skeleton/website/js/vendor/bootstrap.min.js"></script>
	<script src="/Skeleton/website/js/jquery.ajaxchimp.min.js"></script>
	<script src="/Skeleton/website/js/jquery.nice-select.min.js"></script>
	<script src="/Skeleton/website/js/jquery.sticky.js"></script>
	<script src="/Skeleton/website/js/nouislider.min.js"></script>
	<script src="/Skeleton/website/js/countdown.js"></script>
	<script src="/Skeleton/web-app/website/js/jquery.magnific-popup.min.js"></script>
	<script src="/Skeleton/website/js/owl.carousel.min.js"></script>
	
		
	</body>
</html>
