<%@ page import="hospitalmgnt.Donar" %>



<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'dFirstname', 'error')} required">
	<label for="dFirstname">
		<g:message code="donar.dFirstname.label" default="D Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dFirstname" maxlength="50" required="" value="${donarInstance?.dFirstname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'dLastname', 'error')} required">
	<label for="dLastname">
		<g:message code="donar.dLastname.label" default="D Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dLastname" maxlength="50" required="" value="${donarInstance?.dLastname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'dAge', 'error')} required">
	<label for="dAge">
		<g:message code="donar.dAge.label" default="D Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dAge" maxlength="10" required="" value="${donarInstance?.dAge}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'dGender', 'error')} required">
	<label for="dGender">
		<g:message code="donar.dGender.label" default="D Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dGender" maxlength="10" required="" value="${donarInstance?.dGender}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'mobileNumber', 'error')} required">
	<label for="mobileNumber">
		<g:message code="donar.mobileNumber.label" default="Mobile Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobileNumber" maxlength="25" required="" value="${donarInstance?.mobileNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="donar.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" maxlength="50" required="" value="${donarInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'pin', 'error')} required">
	<label for="pin">
		<g:message code="donar.pin.label" default="Pin" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pin" maxlength="50" required="" value="${donarInstance?.pin}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="donar.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" maxlength="100" required="" value="${donarInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="donar.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${donarInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'bloodgroup', 'error')} required">
	<label for="bloodgroup">
		<g:message code="donar.bloodgroup.label" default="Bloodgroup" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bloodgroup" maxlength="50" required="" value="${donarInstance?.bloodgroup}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="donar.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="50" required="" value="${donarInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="donar.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="50" required="" value="${donarInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'lastDonation', 'error')} required">
	<label for="lastDonation">
		<g:message code="donar.lastDonation.label" default="Last Donation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastDonation" maxlength="50" required="" value="${donarInstance?.lastDonation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="donar.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="createdDate" required="" value="${donarInstance?.createdDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donarInstance, field: 'modifiedDate', 'error')} required">
	<label for="modifiedDate">
		<g:message code="donar.modifiedDate.label" default="Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modifiedDate" required="" value="${donarInstance?.modifiedDate}"/>

</div>

