<%@ page import="skeleton.OrderStatus" %>



<div class="fieldcontain ${hasErrors(bean: orderStatusInstance, field: 'groceryName', 'error')} required">
	<label for="groceryName">
		<g:message code="orderStatus.groceryName.label" default="Grocery Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groceryName" required="" value="${orderStatusInstance?.groceryName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderStatusInstance, field: 'groceryPrice', 'error')} required">
	<label for="groceryPrice">
		<g:message code="orderStatus.groceryPrice.label" default="Grocery Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groceryPrice" required="" value="${orderStatusInstance?.groceryPrice}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderStatusInstance, field: 'totalQuantity', 'error')} required">
	<label for="totalQuantity">
		<g:message code="orderStatus.totalQuantity.label" default="Total Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="totalQuantity" required="" value="${orderStatusInstance?.totalQuantity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderStatusInstance, field: 'totalAmount', 'error')} required">
	<label for="totalAmount">
		<g:message code="orderStatus.totalAmount.label" default="Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="totalAmount" required="" value="${orderStatusInstance?.totalAmount}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderStatusInstance, field: 'usercartId', 'error')} required">
	<label for="usercartId">
		<g:message code="orderStatus.usercartId.label" default="Usercart Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usercartId" maxlength="50" required="" value="${orderStatusInstance?.usercartId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderStatusInstance, field: 'merchantId', 'error')} required">
	<label for="merchantId">
		<g:message code="orderStatus.merchantId.label" default="Merchant Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="merchantId" maxlength="50" required="" value="${orderStatusInstance?.merchantId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderStatusInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="orderStatus.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${orderStatusInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderStatusInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="orderStatus.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modifiedBy" required="" value="${orderStatusInstance?.modifiedBy}"/>

</div>

