<%@ page contentType="text/html;charset=UTF-8" %>
<html>
	<head>
		
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
			</ul>
		</div>
		<div id="create-Advertisement" class="content scaffold-create" role="">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${DBPhotoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${DBPhotoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:DBPhotoInstance, action:'save']"  enctype="multipart/form-data">
				
				<div align="center">
				<br><br><br><br><br><br>
							<h1>Advertisement</h1><br><bR><br>
				
									<g:render template="form"/>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset></div>
			</g:form>
		</div>
		<br><br>
		 <!-- footer -->
    <div class="footer site-footer">
        <div class="container copy-foot">
            <div class="row">
                <div class="col-xs-12 col-md-6">
                    <ul>

                        <li><a href="#">Terms and Conditions</a></li>
                        <li class="foot-vert-line">|</li>
                        <li><a href="#">Privacy Policy</a></li>

                    </ul>
                </div>
            
                <div class="col-xs-12 col-md-6">
                    <p>Copyright © 2017. Provider Search. All right reserved.</p>
                </div>
            </div>


        </div>
    </div>
    <a href="#top" class="go-top"><i class="fa fa-chevron-up fa-1x"></i></a>
    <script src="/ProviderSearch/website/js/bootstrap.min.js"></script>
    <script src="/ProviderSearch/website/js/tm-script.js"></script>
	</body>
</html>
