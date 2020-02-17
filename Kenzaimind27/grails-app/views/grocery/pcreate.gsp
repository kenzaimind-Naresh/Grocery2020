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
							<li class="nav-item active"><a class="nav-link" href="/Skeleton/merchant/ldashboard">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
								<!-- <ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
									<li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
									<li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
								</ul> -->
							</li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
								<!-- <ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
								</ul> -->
							</li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">signin/signup</a>
								<!-- <ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
									<li class="nav-item"><a class="nav-link" href="tracking.html">Tracking</a></li>
									<li class="nav-item"><a class="nav-link" href="elements.html">Elements</a></li>
								</ul> -->
							</li>
							
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.uname.firstName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="merchant" action="updateprofile" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/merchant/dashboard" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

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
<p style="color:black;font-Size: 25px">${flash.message}</p>
<br>
    </div>
    
		<div id="create-grocery" class="content scaffold-create" role="main">
			<div class="col-lg-5" style="padding-left:550px">
			<h1>Create Grocery</h1>
			</div>
			
			
			
			<g:hasErrors bean="${groceryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${groceryInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:groceryInstance, action:'save']"  enctype="multipart/form-data">
				<fieldset class="form">
					

<div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             <div class="form-group">
             <div class="row">
             


<div class="col-md-4 col-sm-4">

  
<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'categoryName', 'error')} required">
	<label for="categoryName">
		<g:message code="category.categoryName.label" default="Category Name" />
		<span class="required-indicator"></span>
	</label>
	
	<g:select name="categoryName"  from="${categoryName}" optionKey="id"  optionValue="categoryName" class="form-control" noSelection="['':'Please Select....']" />
       
      

</div>
</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'groceryName', 'error')} required">
	<label for="groceryName">
		<g:message code="grocery.groceryName.label" default="Grocery Name" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="groceryName" maxlength="50" id="groceryName" class="form-control" required="" value="${groceryInstance?.groceryName}"/>

</div>
</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="grocery.cost.label" default="Cost" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="cost" maxlength="50" required=""  id="cost" onchange="off()" class="form-control" value="${groceryInstance?.cost}"/>

</div></div></div></div>



 <div class="form-group">
             <div class="row">
             
<div class="col-md-4 col-sm-4">


<div class="fieldcontai ${hasErrors(bean: groceryInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="grocery.weight.label" default="Weight" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="weight" required="" id="weight" class="form-control" value="${groceryInstance?.weight}"/>
</div><br>
<div class="fieldcontai ${hasErrors(bean: groceryInstance, field: 'weight', 'error')} required">

<select name="weight" required="" id="weight" class="form-control">
  <option>Select</option>
  <option value="grms">Grms</option>
  <option value="kgs">Kgs</option>
  <option value="liter">Liter</option>
</select>

</div>

</div>



<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="grocery.quantity.label" default="Quantity" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="quantity" id="quantity" class="form-control" required="" value="${groceryInstance?.quantity}"/>

</div>


</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'offer', 'error')} required">
	<label for="offer">
		<g:message code="grocery.offer.label" default="Offer" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="offer" required="" id="offer" onchange="off()" class="form-control"  value="${groceryInstance?.offer}"/>

</div>

</div>

</div></div>



<div class="form-group">
             <div class="row">
             
             <div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="grocery.createDate.label" default="Create Date" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="createDate" required="" id="createDate" class="form-control"  value="${groceryInstance?.createDate}"/>

</div></div>
   <div class="col-md-4 col-sm-4">


<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="grocery.total.label" default="Total" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="total" maxlength="50" required="" id="total" onchange="off()" readonly class="form-control"  value="${groceryInstance?.total}"/>

</div>
</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="grocery.image.label" default="Image" />
		<span class="required-indicator"></span>
	</label>
	<input type="file" id="image" name="image"  class="form-control" placeholder="Image" required />

</div></div>

<input type="hidden" id="merchantId" name="merchantId"  value="${result.uname.id}"/>
<input type="hidden" id="merchantshopName" name="merchantshopName"  value="${result.uname.shopName}"/>


<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="myaction" name="myaction" value="save">
 <input type="hidden" id="mode" name="mode" value="web">
 


</div>
</div>
</div></div></div>
					
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
