
<%@ page import="hospitalmgnt.Donar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'donar.label', default: 'Donar')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-donar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="createdonar"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-donar" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dFirstname" title="${message(code: 'donar.dFirstname.label', default: 'D Firstname')}" />
					
						<g:sortableColumn property="dLastname" title="${message(code: 'donar.dLastname.label', default: 'D Lastname')}" />
					
						<g:sortableColumn property="dAge" title="${message(code: 'donar.dAge.label', default: 'D Age')}" />
					
						<g:sortableColumn property="dGender" title="${message(code: 'donar.dGender.label', default: 'D Gender')}" />
					
						<g:sortableColumn property="mobileNumber" title="${message(code: 'donar.mobileNumber.label', default: 'Mobile Number')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'donar.address.label', default: 'Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${donarInstanceList}" status="i" var="donarInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${donarInstance.id}">${fieldValue(bean: donarInstance, field: "dFirstname")}</g:link></td>
					
						<td>${fieldValue(bean: donarInstance, field: "dLastname")}</td>
					
						<td>${fieldValue(bean: donarInstance, field: "dAge")}</td>
					
						<td>${fieldValue(bean: donarInstance, field: "dGender")}</td>
					
						<td>${fieldValue(bean: donarInstance, field: "mobileNumber")}</td>
					
						<td>${fieldValue(bean: donarInstance, field: "address")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${donarInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
