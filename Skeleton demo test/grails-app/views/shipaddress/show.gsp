
<%@ page import="skeleton.Shipaddress" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shipaddress.label', default: 'Shipaddress')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-shipaddress" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-shipaddress" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list shipaddress">
			
				<g:if test="${shipaddressInstance?.fullName}">
				<li class="fieldcontain">
					<span id="fullName-label" class="property-label"><g:message code="shipaddress.fullName.label" default="Full Name" /></span>
					
						<span class="property-value" aria-labelledby="fullName-label"><g:fieldValue bean="${shipaddressInstance}" field="fullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="shipaddress.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${shipaddressInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="shipaddress.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${shipaddressInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.pincode}">
				<li class="fieldcontain">
					<span id="pincode-label" class="property-label"><g:message code="shipaddress.pincode.label" default="Pincode" /></span>
					
						<span class="property-value" aria-labelledby="pincode-label"><g:fieldValue bean="${shipaddressInstance}" field="pincode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.houseNumber}">
				<li class="fieldcontain">
					<span id="houseNumber-label" class="property-label"><g:message code="shipaddress.houseNumber.label" default="House Number" /></span>
					
						<span class="property-value" aria-labelledby="houseNumber-label"><g:fieldValue bean="${shipaddressInstance}" field="houseNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="shipaddress.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${shipaddressInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.landmark}">
				<li class="fieldcontain">
					<span id="landmark-label" class="property-label"><g:message code="shipaddress.landmark.label" default="Landmark" /></span>
					
						<span class="property-value" aria-labelledby="landmark-label"><g:fieldValue bean="${shipaddressInstance}" field="landmark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="shipaddress.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${shipaddressInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="shipaddress.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${shipaddressInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.cod}">
				<li class="fieldcontain">
					<span id="cod-label" class="property-label"><g:message code="shipaddress.cod.label" default="Cod" /></span>
					
						<span class="property-value" aria-labelledby="cod-label"><g:fieldValue bean="${shipaddressInstance}" field="cod"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shipaddressInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="shipaddress.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:fieldValue bean="${shipaddressInstance}" field="modifiedBy"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:shipaddressInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${shipaddressInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
