<%@ page import="skeleton.Category" %>






<div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             <div class="form-group">
             <div class="row">
             <div class="col-md-4 col-sm-4">
             
<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'categoryName', 'error')} required">
	<label for="categoryName">
		<g:message code="category.categoryName.label" default="Category Name" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="categoryName" class="form-control" required="" value="${categoryInstance?.categoryName}"/>


</div>


</div>
</div>
</div>

</div>
</div>
</div>