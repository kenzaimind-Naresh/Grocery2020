
<%@ page import="skeleton.Shipaddress" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shipaddress.label', default: 'Shipaddress')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-shipaddress" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-shipaddress" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fullName" title="${message(code: 'shipaddress.fullName.label', default: 'Full Name')}" />
					
						<g:sortableColumn property="mobileNumber" title="${message(code: 'shipaddress.mobileNumber.label', default: 'Mobile Number')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'shipaddress.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="pincode" title="${message(code: 'shipaddress.pincode.label', default: 'Pincode')}" />
					
						<g:sortableColumn property="houseNumber" title="${message(code: 'shipaddress.houseNumber.label', default: 'House Number')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'shipaddress.area.label', default: 'Area')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shipaddressInstanceList}" status="i" var="shipaddressInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${shipaddressInstance.id}">${fieldValue(bean: shipaddressInstance, field: "fullName")}</g:link></td>
					
						<td>${fieldValue(bean: shipaddressInstance, field: "mobileNumber")}</td>
					
						<td>${fieldValue(bean: shipaddressInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: shipaddressInstance, field: "pincode")}</td>
					
						<td>${fieldValue(bean: shipaddressInstance, field: "houseNumber")}</td>
					
						<td>${fieldValue(bean: shipaddressInstance, field: "area")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${shipaddressInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
