<html>
	<head>
	<style type="text/css">
     span{
  color:Crimson;
  }                      
   </style>
	
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
<script type="text/javascript">
          $(document).ready(function(){
  
	          var form = $("#myform");
	          var pFirstname = $("#pFirstname");
	          var pFirstnameinfo = $("#pFirstnameinfo");
	          var pLastname = $("#pLastname");
	          var pLastnameinfo = $("#pLastnameinfo");
	          var pAge = $("#pAge");
	          var pAgeinfo = $("#pAgeinfo");
	          var pGender = $("#pGender");
	          var pGenderinfo = $("#pGenderinfo");
	          var mobileNumber = $("#mobileNumber");
	          var mobileNumberinfo = $("#mobileNumberinfo");
	          var alternateMobile = $("#alternateMobile");
	          var alternateMobileinfo = $("#alternateMobileinfo");
	          var address = $("#address");
	          var addressinfo = $("#addressinfo");
	          var pin = $("#pin");
	          var pininfo = $("#pininfo");
	          var fee = $("#fee");
	          var feeinfo = $("#feeinfo");
	          var email = $("#email");
	          var emailinfo = $("#emailinfo");
	          var reference = $("#reference");
	          var referenceinfo = $("#referenceinfo");
	          var appointmentDate = $("#appointmentDate");
	          var appointmentDateinfo = $("#appointmentDateinfo");
	          var suninTimings = $("#suninTimings");
	          var suninTimingsinfo = $("#suninTimingsinfo");
	          var modifiedBy = $("#modifiedBy");
	          var modifiedByinfo = $("#modifiedByinfo");
	         
	        
	           pFirstname.blur(validatePFirstname);
	           pLastname.blur(validatePLastname);
	           pAge.blur(validatePAge);
	           pGender.blur(validatePGender);
	           mobileNumber.blur(validateMobileNumber);
	           alternateMobile.blur(validateAlternateMobile);
	           address.blur(validateAddress);
	           pin.blur(validatePin);
	           fee.blur(validateFee);
	           email.blur(validateEmail);
	           reference.blur(validateReference);
	           appointmentDate.blur(validateAppointmentDate);
	           suninTimings.blur(validateSuninTimings);
	           modifiedBy.blur(validateModifiedBy);
	          

	          
	           pFirstname.keyup(validatePFirstname);
	           pLastname.keyup(validatePLastname);
	           pAge.keyup(validatePAge);
	           pGender.keyup(validatePGender);
	           mobileNumber.keyup(validateMobileNumber);
	           alternateMobile.keyup(validateAlternateMobile);
	           address.keyup(validateAddress);
	           pin.keyup(validatePin);
	           fee.keyup(validateFee);
	           email.keyup(validateEmail);
	           reference.keyup(validateReference);
	           appointmentDate.keyup(validateAppointmentDate);
	           suninTimings.keyup(validateSuninTimings);
	           modifiedBy.keyup(validateModifiedBy);
	           
	

	    form.submit(function(){
	       if(validatePFirstname() & validatePLastname() & validatePAge() & validatePGender() & validateMobileNumber() & validateAlternateMobile() & 

	       validateAddress() & validatePin() & validateFee() & validateEmail() & validateReference() & validateAppointmentDate() & validateSuninTimings() & validateModifiedBy()){
	       return true;
	       }else
	       {
	       return false;
	       }

	    });
	
	function validatePFirstname(){
        if(pFirstname.val().length < 3){
    	pFirstname.addClass("error");
    	pFirstnameinfo.text("Name should be morethan 3 letters");
    	pFirstnameinfo.addClass("error");
        return false;
        }else
        {
        pFirstname.removeClass("error");
        pFirstnameinfo.text("please enter Firstname").hide();
        pFirstnameinfo.addClass("error");
        return true;
        }
        }
	 function validatePLastname(){
        if(pLastname.val().length < 3){
     	pLastname.addClass("error");
     	pLastnameinfo.text("Name should be morethan 3 letters");
     	pLastnameinfo.addClass("error");
        return false;
        }else
        {
        pLastname.removeClass("error");
        pLastnameinfo.text("please enter Lastname").hide();
        pLastnameinfo.addClass("error");
        return true;
        }
        }
	 function validatePAge(){
        if(pAge.val().length < 2){
     	pAge.addClass("error");
     	pAgeinfo.text("Enter correct Age");
     	pAgeinfo.addClass("error");
        return false;
        }else
        {
        pAge.removeClass("error");
        pAgeinfo.text("please enter Age").hide();
        pAgeinfo.addClass("error");
        return true;
        }
        }
	 function validatePGender(){
        if(pGender.val().length < 2){
     	pGender.addClass("error");
     	pGenderinfo.text("Enter correct Gender");
     	pGenderinfo.addClass("error");
        return false;
        }else
        {
        pGender.removeClass("error");
        pGenderinfo.text("please enter Gender").hide();
        pGenderinfo.addClass("error");
        return true;
        }
        }
	 function validateMobileNumber(){
        if(mobileNumber.val().length < 2){
     	mobileNumber.addClass("error");
     	mobileNumberinfo.text("Enter correct MobileNumber");
     	mobileNumberinfo.addClass("error");
        return false;
        }else
        {
        mobileNumber.removeClass("error");
        mobileNumberinfo.text("please enter MobileNumber").hide();
        mobileNumberinfo.addClass("error");
        return true;
        }
        }
	 function validateAlternateMobile(){
        if(alternateMobile.val().length < 2){
     	alternateMobile.addClass("error");
     	alternateMobileinfo.text("Enter correct AlternateMobile");
     	alternateMobileinfo.addClass("error");
        return false;
        }else
        {
        alternateMobile.removeClass("error");
        alternateMobileinfo.text("please enter AlternateMobile").hide();
        alternateMobileinfo.addClass("error");
        return true;
        }
        }
	 function validateAddress(){
        if(address.val().length < 2){
     	address.addClass("error");
     	addressinfo.text("Enter correct Address");
     	addressinfo.addClass("error");
        return false;
        }else
        {
        address.removeClass("error");
        addressinfo.text("please enter Address").hide();
        addressinfo.addClass("error");
        return true;
        }
        }
	 function validatePin(){
        if(pin.val().length < 2){
       	pin.addClass("error");
       	pininfo.text("Enter correct Pin");
       	pininfo.addClass("error");
        return false;
        }else
        {
        pin.removeClass("error");
        pininfo.text("please enter Pin").hide();
        pininfo.addClass("error");
        return true;
        }
        }
     function validateFee(){
        if(fee.val().length < 2){
        fee.addClass("error");
        feeinfo.text("Enter valid Fee");
        feeinfo.addClass("error");
        return false;
        }else
        {
        fee.removeClass("error");
        feeinfo.text("please enter Fee").hide();
        feeinfo.addClass("error");
        return true;
        }
        }
     function validateEmail(){
        var a=$("#email").val();
        var regexp =/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
        if(regexp.test(a)){
        email.removeClass("error");
        emailinfo.text("so i can get back to you").hide();
        emailinfo.removeClass("error");
        return true;
        }else
        {
        email.addClass("error");
        emailinfo.text("Enter a valid email address please");
        emailinfo.addClass("error");
        return false;
        }
        }
     function validateReference(){
        if(reference.val().length < 2){
      	reference.addClass("error");
        referenceinfo.text("Enter correct Reference");
        referenceinfo.addClass("error");
        return false;
        }else
        {
        reference.removeClass("error");
        referenceinfo.text("please enter Reference").hide();
        referenceinfo.addClass("error");
        return true;
        }
        }
    function validateAppointmentDate(){
        if(appointmentDate.val().length < 2){
        appointmentDate.addClass("error");
        appointmentDateinfo.text("Enter correct Date");
        appointmentDateinfo.addClass("error");
        return false;
        }else
        {
        appointmentDate.removeClass("error");
        appointmentDateinfo.text("please enter Date").hide();
        appointmentDateinfo.addClass("error");
        return true;
        }
        }
    function validateSuninTimings(){
        if(suninTimings.val().length < 2){
        suninTimings.addClass("error");
        suninTimingsinfo.text("choose Timings");
        suninTimingsinfo.addClass("error");
        return false;
        }else
        {
        suninTimings.removeClass("error");
        suninTimingsinfo.text("please enter SundayTimings").hide();
        suninTimingsinfo.addClass("error");
        return true;
        }
        }
  
     function validateModifiedBy(){
        if(modifiedBy.val().length < 2){
        modifiedBy.addClass("error");
        modifiedByinfo.text("Enter correct ModifiedBy");
        modifiedByinfo.addClass("error");
        return false;
        }else
        {
        modifiedBy.removeClass("error");
        modifiedByinfo.text("please enter ModifiedBy").hide();
        modifiedByinfo.addClass("error");
        return true;
        }
        }
        });

          history.pushState({ page: 1 }, "Title 1", "#no-back");
          window.onhashchange = function (event) {
            window.location.hash = "no-back";
          };
   </script>
 </head>


<style>

.active a{
    color: white !important;
}

</style>

  <body>
 <div id="wrapper">

 <g:render template="/user/header"/>  
   <div>
         <g:form controller="patient"  ID="myform" action="savepatient" params="[fromDate:(new Date().time)]" nonvalidate="nonvalidate"> <br><br>
        
        <input type="hidden" id="patientId" name="patientId" value="${result.pFirst.patientId}" >
        
         <div id="page-wrapper"><br><br><br>
            <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                    
                    <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header" align="center" style="color:black;font-size:20px">Update Op-Patient</div>
                </div></div>

                   
            <div class="panel-body" >
            <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
           <label for="pFirstname">FirstName: </label>
           <input type="text" id="pFirstname" name="pFirstname" class="form-control" value="${result.pFirst.pFirstname}" style="height:27px;width:260px;border-radius:5px" >
           <span id=pFirstnameinfo></span> </div></div>
           <div class="col-lg-6">
                 <div class="fieldgroup">  
           <label for="pLastname">LastName: </label>
           <input type="text" id="pLastname" name="pLastname" class="form-control" value="${result.pFirst.pLastname}" style="height:27px;width:260px;border-radius:5px" >
           <span id=pLastnameinfo></span></div></div></div>
            
            
            <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="pAge">Age: </label>
            <input type="text" id="pAge" name="pAge" class="form-control" value="${result.pFirst.pAge}" style="height:27px;width:260px;border-radius:5px">
            <span id=pAgeinfo></span></div></div>
             <div class="col-lg-6">
                 <div class="fieldgroup"> 
            <label for="pGender">Gender: </label>
            <input type="text" id="pGender" name="pGender" class="form-control" value="${result.pFirst.pGender}" style="height:27px;width:260px;border-radius:5px">
            <span id=pGenderinfo></span></div></div></div>
           
            
             <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="mobileNumber">MobileNumber: </label>
            <input type="text" id="mobileNumber" name="mobileNumber" class="form-control" value="${result.pFirst.mobileNumber}" style="height:27px;width:260px;border-radius:5px">
            <span id=mobileNumberinfo></span></div></div>
             <div class="col-lg-6">
                 <div class="fieldgroup"> 
            <label for="alternateMobile">AlternateMobile: </label>
            <input type="text" id="alternateMobile" class="form-control" name="alternateMobile" value="${result.pFirst.alternateMobile}" style="height:27px;width:260px;border-radius:5px" >
            <span id=alternateMobileinfo></span></div></div></div>
           
             <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="address">Address: </label>
            <input type="text" id="address" name="address" class="form-control" value="${result.pFirst.address}" style="height:27px;width:260px;border-radius:5px">
            <span id=addressinfo></span></div></div>
             <div class="col-lg-6">
                 <div class="fieldgroup"> 
            <label for="pin">Pin Code: </label>
            <input type="text" id="pin" name="pin" class="form-control" value="${result.pFirst.pin}" style="height:27px;width:260px;border-radius:5px" >
            <span id=pininfo></span></div></div></div>
            
             <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="fee">Fee: </label>
            <input type="text" id="fee" name="fee" class="form-control" value="${result.pFirst.fee}" style="height:27px;width:260px;border-radius:5px" >
            <span id="feeinfo"></span></div></div>
            <div class="col-lg-6">
                 <div class="fieldgroup"> 
            <label for="email">Email: </label>
            <input type="text" id="email" name="email" class="form-control" value="${result.pFirst.email}" style="height:27px;width:260px;border-radius:5px" >
            <span id=emailinfo></span></div></div></div>
            
         
            
      <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="reference">Reference: </label>
            <input type="text" id="reference" name="reference" class="form-control" value="${result.pFirst.reference}" style="height:27px;width:260px;border-radius:5px" >
            <span id=referenceinfo></span></div></div>
            <div class="col-lg-6">
                 <div class="fieldgroup">
            <label for="appointmentDate">AppointmentDate: </label>
            <input type="text" id="appointmentDate" name="appointmentDate" class="form-control" width="120px" value="${result.pFirst.appointmentDate}" style="height:27px;width:260px;border-radius:5px" >
            <span id=appointmentDateinfo></span></div></div></div>
            
          
             <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
             <label for="appointmentTime">AppointmentTime: </label>
             <input type="text" id="appointmentTime" name="suninTimings" class="form-control" value="${result.pFirst.appointmentTime}" style="height:27px;width:260px;border-radius:5px" >
            <span id=appointmentTimeinfo></span></div></div> 
            <div class="col-lg-6">
                 <div class="fieldgroup">       
            <label for="modifiedBy">ModifiedBy: </label>
            <input type="text" id="modifiedBy" name="modifiedBy" class="form-control" value="${result.pFirst.modifiedBy}" style="height:27px;width:260px;border-radius:5px" >
            <span id=modifiedByinfo></span></div></div></div><br><br>
          
        
            <input type="hidden" id="status" name="status" value="1">
            
             <input type="hidden" id="myaction" name="myaction" value="update">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <div align="center">
            <input type="submit" ID="btnsave" value="Update" class="btn btn-primary" style="height:33px;width:160px;border-radius:5px" />
            </div>
            
        </div></div></div></div>
         </div>
        
       </g:form>
    </div>
    </div>
  </body>
</html>