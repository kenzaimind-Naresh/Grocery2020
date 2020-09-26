
<%@ page import="hospitalmgnt.Donar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'donar.label', default: 'Donar')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-donar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="createdonar"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-donar" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list donar">
			
				<g:if test="${donarInstance?.dFirstname}">
				<li class="fieldcontain">
					<span id="dFirstname-label" class="property-label"><g:message code="donar.dFirstname.label" default="D Firstname" /></span>
					
						<span class="property-value" aria-labelledby="dFirstname-label"><g:fieldValue bean="${donarInstance}" field="dFirstname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.dLastname}">
				<li class="fieldcontain">
					<span id="dLastname-label" class="property-label"><g:message code="donar.dLastname.label" default="D Lastname" /></span>
					
						<span class="property-value" aria-labelledby="dLastname-label"><g:fieldValue bean="${donarInstance}" field="dLastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.dAge}">
				<li class="fieldcontain">
					<span id="dAge-label" class="property-label"><g:message code="donar.dAge.label" default="D Age" /></span>
					
						<span class="property-value" aria-labelledby="dAge-label"><g:fieldValue bean="${donarInstance}" field="dAge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.dGender}">
				<li class="fieldcontain">
					<span id="dGender-label" class="property-label"><g:message code="donar.dGender.label" default="D Gender" /></span>
					
						<span class="property-value" aria-labelledby="dGender-label"><g:fieldValue bean="${donarInstance}" field="dGender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="donar.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${donarInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="donar.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${donarInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.pin}">
				<li class="fieldcontain">
					<span id="pin-label" class="property-label"><g:message code="donar.pin.label" default="Pin" /></span>
					
						<span class="property-value" aria-labelledby="pin-label"><g:fieldValue bean="${donarInstance}" field="pin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="donar.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${donarInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="donar.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${donarInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.bloodgroup}">
				<li class="fieldcontain">
					<span id="bloodgroup-label" class="property-label"><g:message code="donar.bloodgroup.label" default="Bloodgroup" /></span>
					
						<span class="property-value" aria-labelledby="bloodgroup-label"><g:fieldValue bean="${donarInstance}" field="bloodgroup"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="donar.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${donarInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="donar.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${donarInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.lastDonation}">
				<li class="fieldcontain">
					<span id="lastDonation-label" class="property-label"><g:message code="donar.lastDonation.label" default="Last Donation" /></span>
					
						<span class="property-value" aria-labelledby="lastDonation-label"><g:fieldValue bean="${donarInstance}" field="lastDonation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="donar.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:fieldValue bean="${donarInstance}" field="createdDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donarInstance?.modifiedDate}">
				<li class="fieldcontain">
					<span id="modifiedDate-label" class="property-label"><g:message code="donar.modifiedDate.label" default="Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="modifiedDate-label"><g:fieldValue bean="${donarInstance}" field="modifiedDate"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:donarInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${donarInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
