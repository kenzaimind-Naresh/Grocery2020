
<%@ page import="skeleton.Test" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'test.label', default: 'Test')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-test" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-test" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="groceryName" title="${message(code: 'test.groceryName.label', default: 'Grocery Name')}" />
					
						<g:sortableColumn property="cost" title="${message(code: 'test.cost.label', default: 'Cost')}" />
					
						<g:sortableColumn property="weight" title="${message(code: 'test.weight.label', default: 'Weight')}" />
					
						<g:sortableColumn property="createDate" title="${message(code: 'test.createDate.label', default: 'Create Date')}" />
					
						<g:sortableColumn property="offer" title="${message(code: 'test.offer.label', default: 'Offer')}" />
					
						<g:sortableColumn property="total" title="${message(code: 'test.total.label', default: 'Total')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${testInstanceList}" status="i" var="testInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${testInstance.id}">${fieldValue(bean: testInstance, field: "groceryName")}</g:link></td>
					
						<td>${fieldValue(bean: testInstance, field: "cost")}</td>
					
						<td>${fieldValue(bean: testInstance, field: "weight")}</td>
					
						<td>${fieldValue(bean: testInstance, field: "createDate")}</td>
					
						<td>${fieldValue(bean: testInstance, field: "offer")}</td>
					
						<td>${fieldValue(bean: testInstance, field: "total")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${testInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
