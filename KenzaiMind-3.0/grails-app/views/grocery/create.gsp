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
