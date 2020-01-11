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
	$('#cost').val(${ result.gInstance?.cost});
	$('#offer').val(${ result.gInstance?.offer});
	$('#total').val(${ result.gInstance?.total});
	
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
 <script>

$(function() {
	

    $("#categoryName").autocomplete({
    	
    	  source:[
    	<g:each in="${result.categoryName}">
    	
        '${it.categoryName}',
           
        </g:each>]
    });
  });


function costcal(){
	alert("coserca");
	var cost=$('#cost').val();
	var offer=$('#offer').val();

	
	//var actprice=price
	
	var offervalue=(cost*offer)/100;
	actualprice=cost-offervalue;
	alert(actualprice);
	
	$('#total').val(actualprice);
	

}


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
<%--								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.uname.firstName}<i class="fa fa-user" style="font-size:20px;"></i></a>--%>
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
	
	<br><br><br><br><br>
		
		
	
		<div id="edit-grocery" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${result.gInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${groceryInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
         <g:form controller="grocery" ID="myform" action="saveupdate"  nonvalidate="nonvalidate"> 
				<g:hiddenField name="version" value="${result.gInstance?.version}" />

								                       
								                       
								   
        <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             <div class="form-group">
             <div class="row">
             
<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: result.gInstance, field: 'categoryName', 'error')} required">
	<label for="categoryName">
		<g:message code="category.categoryName.label" default="Category Name" />
		<span class="required-indicator"></span>
	</label>
         <input type="text" name="categoryName" id="categoryName" class="search form-control" placeholder="Select Category" value="${result.gInstance?.categoryName}"  >
        
    </div></div>
   
   <div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: result.gInstance, field: 'groceryName', 'error')} required">
	<label for="groceryName">
		<g:message code="grocery.groceryName.label" default="groceryName" />
		<span class="required-indicator"></span>
	</label>
         <input type="text" name="groceryName" id="groceryName" class="search form-control" placeholder="Select grocery" value="${result.gInstance?.groceryName}" >
        
    </div></div><div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: result.gInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="grocery.cost.label" default="Cost" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="cost" maxlength="50" required="" onchange="costcal()"  id="cost" class="form-control" />

</div></div></div></div>
    

<div class="form-group">
             <div class="row">
             
<div class="col-md-4 col-sm-4">


<div class="fieldcontai ${hasErrors(bean:result.gInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="grocery.weight.label" default="Weight" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="weight" required="" id="weight" class="form-control" value="${result.gInstance?.weight}"/>
	
	
</div>
</div>

<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean:result.gInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="grocery.quantity.label" default="Quantity" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="quantity" id="quantity" class="form-control" required="" value="${result.gInstance?.quantity}"/>

</div>


</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: result.gInstance, field: 'offer', 'error')} required">
	<label for="offer">
		<g:message code="grocery.offer.label" default="Offer" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="offer" required="" id="offer" onchange="costcal()" class="form-control"  />

</div>

</div>

</div></div>



<div class="form-group">
             <div class="row">
             
             <div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: result.gInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="grocery.createDate.label" default="Create Date" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="createDate" required="" id="createDate" class="form-control"  value="${result.gInstance?.createDate}"/>

</div></div>
  <div class="col-md-4 col-sm-4">


<div class="fieldcontain ${hasErrors(bean: result.gInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="grocery.total.label" default="Total Amt" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="total" maxlength="50" required="" id="total"  readonly class="form-control"  />

</div>
</div>

<%--<div class="col-md-4 col-sm-4">--%>
<%----%>
<%--<div class="fieldcontain ${hasErrors(bean:result.gInstance, field: 'image', 'error')} required">--%>
<%--	<label for="image">--%>
<%--		<g:message code="grocery.image.label" default="Image" />--%>
<%--		<span class="required-indicator"></span>--%>
<%--	</label>--%>
<%--	<input type="file" id="image" name="image"  class="form-control" placeholder="Image" required=""  value="${result.gInstance?.image}"/>--%>
<%----%>
<%--</div>--%>
<%--</div>--%>

								
					
					<g:actionSubmit class="saveupdate" action="saveupdate" class="primary-btn" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
				</div>
			</g:form>
		</div>
	
	
<br><br><br><br><br><br><br><br><br>	
	
<div class="footer">
<div align="center">
<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>	
	</body>
</html>
