<%@ page import="skeleton.Shipaddress" %>



<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="shipaddress.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" maxlength="50" required="" value="${shipaddressInstance?.fullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'mobileNumber', 'error')} required">
	<label for="mobileNumber">
		<g:message code="shipaddress.mobileNumber.label" default="Mobile Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobileNumber" maxlength="50" required="" value="${shipaddressInstance?.mobileNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="shipaddress.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${shipaddressInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'pincode', 'error')} required">
	<label for="pincode">
		<g:message code="shipaddress.pincode.label" default="Pincode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pincode" maxlength="10" required="" value="${shipaddressInstance?.pincode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'houseNumber', 'error')} required">
	<label for="houseNumber">
		<g:message code="shipaddress.houseNumber.label" default="House Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="houseNumber" maxlength="10" required="" value="${shipaddressInstance?.houseNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="shipaddress.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="area" maxlength="25" required="" value="${shipaddressInstance?.area}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'landmark', 'error')} required">
	<label for="landmark">
		<g:message code="shipaddress.landmark.label" default="Landmark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="landmark" maxlength="25" required="" value="${shipaddressInstance?.landmark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="shipaddress.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" maxlength="50" required="" value="${shipaddressInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="shipaddress.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" maxlength="50" required="" value="${shipaddressInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'cod', 'error')} required">
	<label for="cod">
		<g:message code="shipaddress.cod.label" default="Cod" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cod" required="" value="${shipaddressInstance?.cod}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shipaddressInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="shipaddress.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modifiedBy" maxlength="50" required="" value="${shipaddressInstance?.modifiedBy}"/>

</div>

