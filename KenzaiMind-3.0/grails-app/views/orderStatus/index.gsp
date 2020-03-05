
<%@ page import="skeleton.OrderStatus" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderStatus.label', default: 'OrderStatus')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-orderStatus" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-orderStatus" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="orderId" title="${message(code: 'orderStatus.orderId.label', default: 'Order Id')}" />
						
						<g:sortableColumn property="groceryName" title="${message(code: 'orderStatus.groceryName.label', default: 'Grocery Name')}" />
					
						<g:sortableColumn property="groceryPrice" title="${message(code: 'orderStatus.groceryPrice.label', default: 'Grocery Price')}" />
					
						<g:sortableColumn property="totalQuantity" title="${message(code: 'orderStatus.totalQuantity.label', default: 'Total Quantity')}" />
					
						<g:sortableColumn property="totalAmount" title="${message(code: 'orderStatus.totalAmount.label', default: 'Total Amount')}" />
					
						<g:sortableColumn property="usercartId" title="${message(code: 'orderStatus.usercartId.label', default: 'Usercart Id')}" />
					
						<g:sortableColumn property="merchantId" title="${message(code: 'orderStatus.merchantId.label', default: 'Merchant Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderStatusInstanceList}" status="i" var="orderStatusInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td>${fieldValue(bean: orderStatusInstance, field: "orderId")}</td>
					
						<td><g:link action="show" id="${orderStatusInstance.id}">${fieldValue(bean: orderStatusInstance, field: "groceryName")}</g:link></td>
					
						<td>${fieldValue(bean: orderStatusInstance, field: "groceryPrice")}</td>
					
						<td>${fieldValue(bean: orderStatusInstance, field: "totalQuantity")}</td>
					
						<td>${fieldValue(bean: orderStatusInstance, field: "totalAmount")}</td>
					
						<td>${fieldValue(bean: orderStatusInstance, field: "usercartId")}</td>
					
						<td>${fieldValue(bean: orderStatusInstance, field: "merchantId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderStatusInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
