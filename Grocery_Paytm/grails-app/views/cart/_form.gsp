<%@ page import="skeleton.Cart" %>



<div class="fieldcontain ${hasErrors(bean: cartInstance, field: 'gname', 'error')} required">
	<label for="gname">
		<g:message code="cart.gname.label" default="Gname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="gname" required="" value="${cartInstance?.gname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cartInstance, field: 'gprice', 'error')} required">
	<label for="gprice">
		<g:message code="cart.gprice.label" default="Gprice" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="gprice" required="" value="${cartInstance?.gprice}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cartInstance, field: 'tcount', 'error')} required">
	<label for="tcount">
		<g:message code="cart.tcount.label" default="Tcount" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tcount" required="" value="${cartInstance?.tcount}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cartInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="cart.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modifiedBy" required="" value="${cartInstance?.modifiedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cartInstance, field: 'tamount', 'error')} required">
	<label for="tamount">
		<g:message code="cart.tamount.label" default="Tamount" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tamount" required="" value="${cartInstance?.tamount}"/>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: cartInstance, field: 'status', 'error')} required">--%>
<%--	<label for="status">--%>
<%--		<g:message code="cart.status.label" default="Status" />--%>
<%--		<span class="required-indicator">*</span>--%>
<%--	</label>--%>
<%--	<g:textField name="status" required="" value="${cartInstance?.status}"/>--%>
	
<%--<input type="hidden" id="merchantId" name="merchantId"  value="${result.uname.id}"/>--%>
<input type="hidden" id="status" name="status"  value="Placed"/>
	
</div>
	