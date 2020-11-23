
<%@ page import="skeleton.Package" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'package.label', default: 'Package')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-package" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-package" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="packageId" title="${message(code: 'package.packageId.label', default: 'Package Id')}" />
					
						<g:sortableColumn property="packageName" title="${message(code: 'package.packageName.label', default: 'Package Name')}" />
					
						<g:sortableColumn property="duration" title="${message(code: 'package.duration.label', default: 'Duration')}" />
					
						<g:sortableColumn property="subAmonut" title="${message(code: 'package.subAmonut.label', default: 'Sub Amonut')}" />
					
						<g:sortableColumn property="createdby" title="${message(code: 'package.createdby.label', default: 'Createdby')}" />
					
						<g:sortableColumn property="createdDate" title="${message(code: 'package.createdDate.label', default: 'Created Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${packageInstanceList}" status="i" var="packageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${packageInstance.id}">${fieldValue(bean: packageInstance, field: "packageId")}</g:link></td>
					
						<td>${fieldValue(bean: packageInstance, field: "packageName")}</td>
					
						<td>${fieldValue(bean: packageInstance, field: "duration")}</td>
					
						<td>${fieldValue(bean: packageInstance, field: "subAmonut")}</td>
					
						<td>${fieldValue(bean: packageInstance, field: "createdby")}</td>
					
						<td><g:formatDate date="${packageInstance.createdDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${packageInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
