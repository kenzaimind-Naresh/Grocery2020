<%@ page import="skeleton.Grocery" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grocery.label', default: 'Grocery')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-grocery" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-grocery" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${groceryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${groceryInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:groceryInstance, action:'update']" method="PUT"  enctype="multipart/form-data">
				<g:hiddenField name="version" value="${groceryInstance?.version}" />
				<fieldset class="form">
				
				



<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'groceryName', 'error')} required">
	<label for="groceryName">
		<g:message code="grocery.groceryName.label" default="Grocery Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groceryName" maxlength="50" required="" value="${groceryInstance?.groceryName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="grocery.cost.label" default="Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cost" maxlength="50" required="" value="${groceryInstance?.cost}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="grocery.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="weight" required="" value="${groceryInstance?.weight}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="grocery.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${groceryInstance?.type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="grocery.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${groceryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="grocery.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="createDate" required="" value="${groceryInstance?.createDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'offer', 'error')} required">
	<label for="offer">
		<g:message code="grocery.offer.label" default="Offer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="offer" required="" value="${groceryInstance?.offer}"/>

</div>



<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="grocery.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="total" maxlength="50" required="" value="${groceryInstance?.total}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="grocery.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modifiedBy" maxlength="50" required="" value="${groceryInstance?.modifiedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="grocery.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="quantity" required="" value="${groceryInstance?.quantity}"/>

</div>

					
					
					
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
