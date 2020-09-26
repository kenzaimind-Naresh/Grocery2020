<%@ page contentType="text/html;charset=UTF-8" %>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'DBPhoto.label', default: 'Advertisement')}" />
	</head>
	<body>
		
		<div id=DBPhoto" class="content scaffold" role="">
		<h1>Advertisement</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="payload" title="${message(code: 'DBPhoto.payload.label', default: 'Payload')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'DBPhoto.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'DBPhoto.name.label', default: 'Name')}" />
					
					
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${DBPhotoInstanceList}" status="i" var="DBPhotoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					
						<td>
							<img  src="${createLink(controller:'DBPhoto', action:'showPayload', id:"${DBPhotoInstance.id}")}" width='300' />
						</td>
					
						<td>${fieldValue(bean: DBPhotoInstance, field: "type")}</td>
					
						<td><g:link action="show" id="${DBPhotoInstance.id}"> ${fieldValue(bean: DBPhotoInstance, field: "name")}</g:link></td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${DBPhotoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
