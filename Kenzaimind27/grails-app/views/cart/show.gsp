
<%@ page import="skeleton.Cart" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cart.label', default: 'Cart')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cart" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cart" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cart">
			
				<g:if test="${cartInstance?.gname}">
				<li class="fieldcontain">
					<span id="gname-label" class="property-label"><g:message code="cart.gname.label" default="Gname" /></span>
					
						<span class="property-value" aria-labelledby="gname-label"><g:fieldValue bean="${cartInstance}" field="gname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cartInstance?.gprice}">
				<li class="fieldcontain">
					<span id="gprice-label" class="property-label"><g:message code="cart.gprice.label" default="Gprice" /></span>
					
						<span class="property-value" aria-labelledby="gprice-label"><g:fieldValue bean="${cartInstance}" field="gprice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cartInstance?.tcount}">
				<li class="fieldcontain">
					<span id="tcount-label" class="property-label"><g:message code="cart.tcount.label" default="Tcount" /></span>
					
						<span class="property-value" aria-labelledby="tcount-label"><g:fieldValue bean="${cartInstance}" field="tcount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cartInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="cart.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:fieldValue bean="${cartInstance}" field="modifiedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cartInstance?.tamount}">
				<li class="fieldcontain">
					<span id="tamount-label" class="property-label"><g:message code="cart.tamount.label" default="Tamount" /></span>
					
						<span class="property-value" aria-labelledby="tamount-label"><g:fieldValue bean="${cartInstance}" field="tamount"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cartInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cartInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
