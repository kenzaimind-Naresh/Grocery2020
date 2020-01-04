<%@ page import="skeleton.Test" %>



<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'groceryName', 'error')} required">
	<label for="groceryName">
		<g:message code="test.groceryName.label" default="Grocery Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groceryName" maxlength="50" required="" value="${testInstance?.groceryName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="test.cost.label" default="Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cost" maxlength="50" required="" value="${testInstance?.cost}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="test.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="weight" required="" value="${testInstance?.weight}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="test.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="createDate" required="" value="${testInstance?.createDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'offer', 'error')} required">
	<label for="offer">
		<g:message code="test.offer.label" default="Offer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="offer" required="" value="${testInstance?.offer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="test.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="total" maxlength="50" required="" value="${testInstance?.total}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="test.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modifiedBy" maxlength="50" required="" value="${testInstance?.modifiedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="test.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="quantity" required="" value="${testInstance?.quantity}"/>

</div>

