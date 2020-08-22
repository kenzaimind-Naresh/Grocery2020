
<%@ page import="skeleton.Merchant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'merchant.label', default: 'Merchant')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-merchant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-merchant" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="shopId" title="${message(code: 'merchant.shopId.label', default: 'Shop Id')}" />
					
						<g:sortableColumn property="shopName" title="${message(code: 'merchant.shopName.label', default: 'Shop Name')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'merchant.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'merchant.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'merchant.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'merchant.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${merchantInstanceList}" status="i" var="merchantInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${merchantInstance.id}">${fieldValue(bean: merchantInstance, field: "shopId")}</g:link></td>
					
						<td>${fieldValue(bean: merchantInstance, field: "shopName")}</td>
					
						<td>${fieldValue(bean: merchantInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: merchantInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: merchantInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: merchantInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${merchantInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
