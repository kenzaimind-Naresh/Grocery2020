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
 
 
<script type="text/javascript">
function off(){
	
	var cost = document.getElementById('cost').value;
	var offer = document.getElementById('offer').value;
    var total = Number(document.getElementById('total').value);

    x = cost/100*offer;
	document.getElementById('total').value = x;
    
}

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

</script>




<style type="text/css">

/* Create two equal columns that floats next to each other */
.fieldcontai {
  float: left;
  width: 50%;
  height: 50px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  clear: both;
}


</style>
 
		
	</head>
	<body>
		
		
<g:render template="groceryheader1"/>
	
	<br><br><br>
		
		
		<div align="center">
<p style="color:black;font-Size: 25px;font-family: Calibri">${flash.message}</p>
<br>
    </div>
    
		<div id="create-grocery" class="content scaffold-create" role="main">
			<div style="padding-left:420px;">
			<h4 style="font-family: Calibri">Package Create</h4>
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
         <input type="text" name="categoryName" id="categoryName" class="search form-control" placeholder="Select Category" >
        
    </div></div>
   
<!--
<div class="col-md-4 col-sm-4">

  
<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'categoryName', 'error')} required">
	<label for="categoryName">
		<g:message code="category.categoryName.label" default="Category Name" />
		<span class="required-indicator"></span>
	</label>
	
	<g:select name="categoryName"  from="${categoryName}" optionKey="id"  optionValue="categoryName" class="form-control" noSelection="['':'Please Select....']" />
      
      	<g:textField name="categoryName" maxlength="50" id="categoryName" class="form-control" required="" value="${result.categoryName.categoryName}"/>
      

</div>
</div>
 -->
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
