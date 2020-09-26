
<html>
<title>PROVIDER SEARCH</title>
	<head>
  
  <style>
   .ui-autocomplete { height: 200px; width: 200px;overflow-y: scroll; overflow-x: hidden;}
  </style>
	
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script  src="${resource(dir: 'js', file: 'createdoc.js')}"></script>

<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};

</script>
 </head>

  <body>
  
 <g:render template="/user/pDashboard"/>
	<div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Pharmacy Update</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-refresh pull-right dashicon"></i>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
         <g:form class="form-horizontal" controller="pharmacy" Id="myform" name="myform" action="saveupdate"  nonvalidate="nonvalidate"> 
        
              <div class="form-group">
                 <div class="col-md-4 col-sm-4">
            <label>Registration Id:</label>
           <input type="text" id="regId" name="regId" class="form-control" value="${result.pharmacy.regId }">
            <span id=regIdinfo></span>
            </div>
                 <div class="col-md-4 col-sm-4">
            <label>Pharmacy Name:</label>
           <input type="text" id="pharmacyName" name="pharmacyName" class="form-control" value="${result.pharmacy.pharmacyName }">
            <span id=pharmacyNameinfo></span>
            </div>
            <div class="col-md-4 col-sm-4">
            <label>First Name:</label>
           <input type="text" id="firstname" name="firstname" class="form-control" value="${result.pharmacy.firstname }">
            <span id=firstnameinfo></span>
            </div>
            </div>
            
            
                 <div class="form-group">
                <div class="col-md-4 col-sm-4">
            <label>Last Name:</label>
           <input type="text" id="lastname" name="lastname" class="form-control" value="${result.pharmacy.lastname }">
            <span id=lastnameinfo></span>
            </div>
            <div class="col-md-4 col-sm-4">
            <label>Mobile Number:</label>
           <input type="text" id="mobileNumber" name="mobileNumber" class="form-control" value="${result.pharmacy.mobileNumber }">
            <span id=mobileNumberinfo></span>
            </div>
            <div class="col-md-4 col-sm-4">
            <label>Email:</label>
           <input type="text" id="email" name="email" class="form-control" value="${result.pharmacy.email }">
            <span id=emailinfo></span>
            </div>
            </div>
            
                 <div class="form-group">
                 
             <div class="col-md-4 col-sm-4">
            <label>Address:</label>
           <input type="text" id="address" name="address" class="form-control" value="${result.pharmacy.address }">
            <span id=addressinfo></span>
            </div>
            <div class="col-md-4 col-sm-4">
                            <label>Locality:</label>
                            <input type="text" id="locality" name="locality" class="form-control" value="${result.pharmacy.locality }">
                            <span id="localityinfo"></span>
                        </div>
                        
                        <div class="col-md-4 col-sm-4">
                            <label>City:</label>
                            <input type="text" id="city" name="city" class="form-control" value="${result.pharmacy.city }">
                            <span id="cityinfo"></span>
                        </div>
            </div>
            
                 <div class="form-group">
                        
                        <div class="col-md-4 col-sm-4">
                            <label>Pin Code:</label>
                            <input type="text" id="pin" name="pin" class="form-control" value="${result.pharmacy.pin }"> 
                            <span id="pininfo"></span>
                        </div>
                    </div>
           
             <input type="hidden" id="packName" name="packName" value="${result.pharmacy.packName}">
              <input type="hidden" id="status" name="status" value="${result.pharmacy.status}">
             <input type="hidden" id="locUrl" name="locUrl" value="${result.pharmacy.locUrl}">
             <input type="hidden" id="password" name="password" value="${result.pharmacy.password}">
            <input type="hidden" id="modifiedBy" name="modifiedBy" value="${result.pharmacy.modifiedBy}">
            <input type="hidden" id="mode" name="mode" value="web">
            
            <div class="form-group">
                        <div class="col-sm-12 text-center">  
            <input type="submit" ID="btnsave" value="Update" class="btn btn-primary" onclick="return validateForm()" />
            </div>
            </div>
            </g:form>
            </div>
            </div>
            </div>
            </div>
  </body>
</html>