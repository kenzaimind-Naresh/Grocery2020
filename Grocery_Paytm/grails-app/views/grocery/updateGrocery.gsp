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
	
	    $("#createdDate").datepicker({
        minDate: 0,autoclose: true,
        onSelect:function (){
			$("#createdDateinfo").text("");
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
	var cost=$('#cost').val();
	var offer=$('#offer').val();

	var offervalue=(cost*offer)/100;
	actualprice=cost-offervalue;
	
	$('#total').val(actualprice);
	

}


</script>
 
		
	</head>
	<body>
		
		
<g:render template="groceryheader1"/>
	
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
         <input type="text" name="categoryName" id="categoryName" class="search form-control" placeholder="Select Category" value="${result.gInstance?.categoryName}" readonly>
        
    </div></div>
   
   <div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: result.gInstance, field: 'groceryName', 'error')} required">
	<label for="groceryName">
		<g:message code="grocery.groceryName.label" default="groceryName" />
		<span class="required-indicator"></span>
	</label>
         <input type="text" name="groceryName" id="groceryName" class="search form-control" placeholder="Select grocery" value="${result.gInstance?.groceryName}" readonly>
        
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


<div class="fieldcontain ${hasErrors(bean: result.gInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="grocery.total.label" default="Total Amt" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="total" maxlength="50" required="" id="total"  readonly class="form-control"  />

</div>
</div>

		
					<g:actionSubmit class="saveupdate" action="saveupdate" class="genric-btn primary circle" style="font-size: 15px;" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
				</div>
			</g:form>
		</div>
	
	
<br><br><br><br><br><br><br><br><br>	
	
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
  color: white;
}
a:hover {
  color: white;
}


</style>

<div class="footer ">
<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>  
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong>Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
</div>
	</body>
</html>
