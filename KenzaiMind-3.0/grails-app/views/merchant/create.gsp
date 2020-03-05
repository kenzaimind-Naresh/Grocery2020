<html>
	<head>
		 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="shortcut icon" href="img/fav.png">
	<meta name="author" content="CodePixar">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<title>Register</title>
<!-- 

				CSS
		=============================================  -->
	<link rel="stylesheet" href="/Skeleton/website/css/linearicons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/themify-icons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">
	<link rel="stylesheet" href="/Skeleton/website/css/owl.carousel.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nice-select.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nouislider.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/magnific-popup.css">
	<link rel="stylesheet" href="/Skeleton/website/css/main.css">
	    <script  src="${resource(dir: 'js', file: 'register.js')}"></script>
	    

	     <script src="/Skeleton/website/vendor/js/bootstrap.min.js"></script>
    <script src="/Skeleton/website/js/tm-script.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  	    <script  src="${resource(dir: 'js', file: 'register.js')}"></script>
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
 
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link href="style.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/5d0d55aa82.js"></script>
  
  
		<script type="text/javascript">
		function showHidePwd() {
		    var input = document.getElementById("password");
		    if (input.type === "password") {
		        input.type = "text";
		        document.getElementById("eye").className = "far fa-eye";
		    } else {
		        input.type = "password";
		        document.getElementById("eye").className = "far fa-eye-slash";
		    }
		}
		</script>
		<script type="text/javascript">

		$(document).ready(function () {
		    $('#eye').click(function () {
		        $('#password').attr('type', $('#password').is(':password') ? 'text' : 'password');
		        if ($('#password').attr('type') === 'password') {
		            $('#eye').removeClass('fa-eye').addClass('fa-eye-slash');
		        } else {
		            $('#eye').removeClass('fa-eye-slash').addClass('fa-eye');
		        }
		    });
		});
		

		</script>
		
		<style type="text/css">
		
.form-signin {
  width: 100%;
  max-width: 420px;
  padding: 15px;
  margin: auto;
}
.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}
.form-label-group > input{
  height: 3.0rem;
  padding: .75rem;
}
i:hover {
  cursor: pointer;
}
		
		</style>
		
	</head>
	<body>
	<g:render template="/merchant/merchantheader"/>
	
	
	<br><br><br><br>
	
	
		
		
		<div id="create-merchant" class="content scaffold-create" role="main">
		<div class="container" style="padding-left:220px" >
			<g:if test="${flash.message}">
			<div class="message" align="center">${flash.message}</div>
			</g:if>
			</div>
			<g:hasErrors bean="${merchantInstance}">
			<ul class="errors" role="alert" style="padding-left:1000px;font-family: Calibri;color:red">
				<g:eachError bean="${merchantInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			
			</g:hasErrors>
			
			<section class="login_box_area section_gap" style="padding-top:20px">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="/Skeleton/website/img/login.jpg" alt="" style=" height: 780px" >
						<div class="hover">
							<h4>New to our website?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="primary-btn" href="/Skeleton/merchant/login">Login</a>
						</div>
					</div>
				</div>
				
				
    
    
				<div class="col-lg-5">
					<div class="content-heading" style="padding-bottom:20px;">
						<h4 style="text-align:center;font-family: Calibri">Merchant Registration</h4>
			
			<g:form url="[resource:merchantInstance, action:'save']"  enctype="multipart/form-data">
				<fieldset class="form">
				
<div class="col-md-12 form-group">
							
<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'shopId', 'error')}">
	
	<g:textField name="shopId" class="form-control" id="shopId"  placeholder="Shop Id"  required="" value="${merchantInstance?.shopId}"/>
		    <span id="shopIdinfo" style="color:red;"></span>

</div>
</div>
<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'shopName', 'error')} ">
	
	<g:textField name="shopName" maxlength="50" class="form-control" id="shopName"  required="" placeholder="ShopName" value="${merchantInstance?.shopName}"/>
		    <span id="shopNameinfo" style="color:red;"></span>

</div></div>

<div class="col-md-12 form-group">


<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'firstName', 'error')} ">
	
	<g:textField name="firstName" maxlength="50" class="form-control" id="firstName" required="" placeholder="FirstName" value="${merchantInstance?.firstName}"/>
		    <span id="firstNameinfo" style="color:red;"></span>

</div>
</div>
<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'lastName', 'error')} ">
	
	<g:textField name="lastName" maxlength="50" class="form-control" id="lastName" required="" placeholder="LastName" value="${merchantInstance?.lastName}"/>
		    <span id="lastNameinfo" style="color:red;"></span>

</div>
</div>
<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'email', 'error')} required">
	
	<g:field type="email" name="email" class="form-control" id="email" required="" placeholder="Email" value="${merchantInstance?.email}"/>
		    <span id="emailinfo" style="color:red;"></span>

</div>
</div>
<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'password', 'error')} required">
	
	<!-- 
	<g:field type="password" name="password" class="form-control" id="password" required="" placeholder="Password" />
		    <span id="passwordinfo" style="color:red;"></span>
		    
 -->
    
    <div class="form-label-group input-group">
      <input type="password" id="password" class="form-control" name="password" placeholder="Password" required>
      <div class="input-group-append">
        <span class="input-group-text" id="passwordinfo">
          <i id="eye" class="far fa-eye-slash"></i>
        </span>
      </div>
    </div>
    
</div>
</div>
<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'mobileNumber', 'error')} required">
	
	<g:textField name="mobileNumber" maxlength="50" class="form-control" id="mobileNumber" required="" placeholder="MobileNumber" value="${merchantInstance?.mobileNumber}"/>
		    <span id="mobileNumberinfo" style="color:red;"></span>

</div>
</div>
<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'address', 'error')} required">
	
	<g:textField name="address" maxlength="50" class="form-control" id="shopName" required="" placeholder="Address" value="${merchantInstance?.address}"/>
		    <span id="addressinfo" style="color:red;"></span>

</div>
</div>

<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'street', 'error')} required">
	
	<g:textField name="street" maxlength="50" class="form-control" id="shopName" required="" placeholder="Street" value="${merchantInstance?.street}"/>
		    <span id="streetinfo" style="color:red;"></span>

</div>
</div>
<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'city', 'error')} required">
	
	<g:textField name="city" maxlength="50" class="form-control" id="address" required="" placeholder="City" value="${merchantInstance?.city}"/>
		    <span id="cityinfo" style="color:red;"></span>

</div>
</div>
<div class="col-md-12 form-group">
<div class="fieldcontai ${hasErrors(bean: merchantInstance, field: 'state', 'error')} required">


</div><br>
<div class="fieldcontai ${hasErrors(bean: merchantInstance, field: 'state', 'error')} required">
<select	name="state" required="" id="state" class="form-control" value="${merchantInstance?.state}">
<option value=" "> State</option>
<option>Andhra Pradesh</option>
<option>Arunachal Pradesh</option>
<option>Assam</option>
<option>Bihar</option>
<option>Chhattisgarh</option>
<option>Goa</option>
<option>Gujarat</option>
<option>Haryana</option>
<option>Himachal Pradesh</option>
<option>Jammu and Kashmir</option>
<option>Jharkand</option>
<option>Karnataka</option>
<option>Kerala</option>
<option>Madhya Pradesh</option>
<option>Maharashtra</option>
<option>Manipur</option>
<option>Meghalaya</option>
<option>Mizoram</option>
<option>Nagaland</option>
<option>Odisha</option>
<option>Punjab</option>
<option>Rajasthan</option>
<option>Sikkim</option>
<option>Telangana</option>
<option>Tripura</option>
<option>Uttarakhand</option>
<option>Uttar Pradesh</option>
<option>West Bengal</option>

</select>

</div>
</div>
<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'zipCode', 'error')} required">
	
	<g:textField name="zipCode" maxlength="50" class="form-control" id="zipCode" required="" placeholder="ZipCode" value="${merchantInstance?.zipCode}"/>
		    <span id="zipCodeinfo" style="color:red;"></span>

</div>
</div>
<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="merchant.image.label" default="Upload Photo" />
		<span class="required-indicator"></span>
	</label>
	<input type="file" id="image" name="image" class="form-control"  accept="image/*"  placeholder="Image" required />

</div>
</div>


<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: groceriesInstance, field: 'Payment', 'error')} required">
	
<select class="form-control" name="Payment" id="Payment" required>
  <option value="">Select Payment</option>
  <option value="Googlepay">BHIM UPI</option>
</select>

</div>
</div>

<div class="col-md-12 form-group">

<div class="fieldcontain ${hasErrors(bean: merchantInstance, field: 'qrcode', 'error')} ">
	<label for="qrcode">
		<g:message code="merchant.qrcode.label" default="Upload QRcode" />
		<span class="required-indicator"></span>
	</label>
	<input type="file" id="qrcode" name="qrcode" class="form-control"  accept="qrcode/*"  placeholder="Qrcode" required />

</div>
</div>

<input type="hidden" id="modifiedBy" name="modifiedBy" value="self">
							<input type="hidden" id="myaction" name="myaction" value="save">
						<input type="hidden" id="mode" name="mode" value="web">

					
				</fieldset>
			 <div class="col-sm-12 text-left" style="padding-left:180px">
				
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
				</div>
			</g:form>
			
			</div></div></div></div></section>
			
		</div>
</body>
</html>