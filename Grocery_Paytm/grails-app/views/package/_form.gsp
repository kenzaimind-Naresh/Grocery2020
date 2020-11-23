<%@ page import="skeleton.Package" %>



<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'packageId', 'error')} required">
	<label for="packageId">
		<g:message code="package.packageId.label" default="Package Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="packageId" type="number" value="${packageInstance.packageId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'packageName', 'error')} required">
	<label for="packageName">
		<g:message code="package.packageName.label" default="Package Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="packageName" maxlength="50" required="" value="${packageInstance?.packageName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'duration', 'error')} required">
	<label for="duration">
		<g:message code="package.duration.label" default="Duration" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="duration" maxlength="50" required="" value="${packageInstance?.duration}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'subAmonut', 'error')} required">
	<label for="subAmonut">
		<g:message code="package.subAmonut.label" default="Sub Amonut" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subAmonut" maxlength="25" required="" value="${packageInstance?.subAmonut}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'createdby', 'error')} required">
	<label for="createdby">
		<g:message code="package.createdby.label" default="Createdby" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="createdby" maxlength="50" required="" value="${packageInstance?.createdby}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="package.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${packageInstance?.createdDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'modifiedDate', 'error')} ">
	<label for="modifiedDate">
		<g:message code="package.modifiedDate.label" default="Modified Date" />
		
	</label>
	<g:datePicker name="modifiedDate" precision="day"  value="${packageInstance?.modifiedDate}" default="none" noSelection="['': '']" />

</div>

