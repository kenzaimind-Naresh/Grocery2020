
<%@ page import="skeleton.Merchant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'merchant.label', default: 'Merchant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-merchant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-merchant" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list merchant">
			
				<g:if test="${merchantInstance?.shopId}">
				<li class="fieldcontain">
					<span id="shopId-label" class="property-label"><g:message code="merchant.shopId.label" default="Shop Id" /></span>
					
						<span class="property-value" aria-labelledby="shopId-label"><g:fieldValue bean="${merchantInstance}" field="shopId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.shopName}">
				<li class="fieldcontain">
					<span id="shopName-label" class="property-label"><g:message code="merchant.shopName.label" default="Shop Name" /></span>
					
						<span class="property-value" aria-labelledby="shopName-label"><g:fieldValue bean="${merchantInstance}" field="shopName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="merchant.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${merchantInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="merchant.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${merchantInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="merchant.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${merchantInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="merchant.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${merchantInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="merchant.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${merchantInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="merchant.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${merchantInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="merchant.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${merchantInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="merchant.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${merchantInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="merchant.image.label" default="Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="merchant.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${merchantInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="merchant.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${merchantInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.qrcode}">
				<li class="fieldcontain">
					<span id="qrcode-label" class="property-label"><g:message code="merchant.qrcode.label" default="Qrcode" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.type1}">
				<li class="fieldcontain">
					<span id="type1-label" class="property-label"><g:message code="merchant.type1.label" default="Type1" /></span>
					
						<span class="property-value" aria-labelledby="type1-label"><g:fieldValue bean="${merchantInstance}" field="type1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.name1}">
				<li class="fieldcontain">
					<span id="name1-label" class="property-label"><g:message code="merchant.name1.label" default="Name1" /></span>
					
						<span class="property-value" aria-labelledby="name1-label"><g:fieldValue bean="${merchantInstance}" field="name1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchantInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="merchant.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:fieldValue bean="${merchantInstance}" field="modifiedBy"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:merchantInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${merchantInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
