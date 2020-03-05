
<%@ page import="skeleton.Test" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'test.label', default: 'Test')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-test" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-test" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list test">
			
				<g:if test="${testInstance?.groceryName}">
				<li class="fieldcontain">
					<span id="groceryName-label" class="property-label"><g:message code="test.groceryName.label" default="Grocery Name" /></span>
					
						<span class="property-value" aria-labelledby="groceryName-label"><g:fieldValue bean="${testInstance}" field="groceryName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.cost}">
				<li class="fieldcontain">
					<span id="cost-label" class="property-label"><g:message code="test.cost.label" default="Cost" /></span>
					
						<span class="property-value" aria-labelledby="cost-label"><g:fieldValue bean="${testInstance}" field="cost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="test.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${testInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.createDate}">
				<li class="fieldcontain">
					<span id="createDate-label" class="property-label"><g:message code="test.createDate.label" default="Create Date" /></span>
					
						<span class="property-value" aria-labelledby="createDate-label"><g:fieldValue bean="${testInstance}" field="createDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.offer}">
				<li class="fieldcontain">
					<span id="offer-label" class="property-label"><g:message code="test.offer.label" default="Offer" /></span>
					
						<span class="property-value" aria-labelledby="offer-label"><g:fieldValue bean="${testInstance}" field="offer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="test.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${testInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="test.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:fieldValue bean="${testInstance}" field="modifiedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="test.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${testInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:testInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${testInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
