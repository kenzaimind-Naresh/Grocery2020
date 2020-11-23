
<%@ page import="skeleton.Package" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'package.label', default: 'Package')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-package" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-package" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list package">
			
				<g:if test="${packageInstance?.packageId}">
				<li class="fieldcontain">
					<span id="packageId-label" class="property-label"><g:message code="package.packageId.label" default="Package Id" /></span>
					
						<span class="property-value" aria-labelledby="packageId-label"><g:fieldValue bean="${packageInstance}" field="packageId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.packageName}">
				<li class="fieldcontain">
					<span id="packageName-label" class="property-label"><g:message code="package.packageName.label" default="Package Name" /></span>
					
						<span class="property-value" aria-labelledby="packageName-label"><g:fieldValue bean="${packageInstance}" field="packageName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.duration}">
				<li class="fieldcontain">
					<span id="duration-label" class="property-label"><g:message code="package.duration.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="duration-label"><g:fieldValue bean="${packageInstance}" field="duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.subAmonut}">
				<li class="fieldcontain">
					<span id="subAmonut-label" class="property-label"><g:message code="package.subAmonut.label" default="Sub Amonut" /></span>
					
						<span class="property-value" aria-labelledby="subAmonut-label"><g:fieldValue bean="${packageInstance}" field="subAmonut"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.createdby}">
				<li class="fieldcontain">
					<span id="createdby-label" class="property-label"><g:message code="package.createdby.label" default="Createdby" /></span>
					
						<span class="property-value" aria-labelledby="createdby-label"><g:fieldValue bean="${packageInstance}" field="createdby"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="package.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${packageInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.modifiedDate}">
				<li class="fieldcontain">
					<span id="modifiedDate-label" class="property-label"><g:message code="package.modifiedDate.label" default="Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="modifiedDate-label"><g:formatDate date="${packageInstance?.modifiedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:packageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${packageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
