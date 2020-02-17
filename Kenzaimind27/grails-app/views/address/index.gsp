
<%@ page import="skeleton.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
	</head>
	<body>
		<a href="#list-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-address" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="area" title="${message(code: 'address.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'address.city.label', default: 'City')}" />
					
						<g:sortableColumn property="fullName" title="${message(code: 'address.fullName.label', default: 'Full Name')}" />
					
						<g:sortableColumn property="houseNumber" title="${message(code: 'address.houseNumber.label', default: 'House Number')}" />
					
						<g:sortableColumn property="landmark" title="${message(code: 'address.landmark.label', default: 'Landmark')}" />
					
						<g:sortableColumn property="mobileNumber" title="${message(code: 'address.mobileNumber.label', default: 'Mobile Number')}" />
						
					<g:sortableColumn property="email" title="${message(code: 'address.email.label', default: 'email')}" />
						
					     
					     <g:sortableColumn property="cod" title="${message(code: 'address.cod.label', default: 'cod')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${addressInstanceList}" status="i" var="addressInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${addressInstance.id}">${fieldValue(bean: addressInstance, field: "area")}</g:link></td>
					
						<td>${fieldValue(bean: addressInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "fullName")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "houseNumber")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "landmark")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "mobileNumber")}</td>
						
						<td>${fieldValue(bean: addressInstance, field: "email")}</td>
						
						
						<td>${fieldValue(bean: addressInstance, field: "cod")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${addressInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
