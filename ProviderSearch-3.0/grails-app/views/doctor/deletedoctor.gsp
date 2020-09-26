<html>
	<head>
	<style type="text/css">
     #error{
            display:none;
            color:red;
            width:250px;
            font-size:20px;
            font-family:Tahoma, Geneva, sans-serif;
           }

      body{
		    background-image: url("../images/lite.jpg");
            background-size:cover;
            background-position:center;
		  }
		   tab1{ padding-left: 1em; }
		   tab2 { padding-right: 4em; }
		   tab3 { padding-left: 3em; }
		   tab5 { padding-right:1.00em; }   
		   tab6 { padding-left: 3.5em; }   
		   tab7 { padding-right: 0.4em; }
		   tab8 { padding-right: 0.9em; } 
		   tab9 { padding-left: 4em; } 
		   tab10 { padding-left: 5.5em; }
		   tab11 { padding-right: 4em; } 
		   tab12 { padding-left: 4em; }
		   tab13 { padding-left: 4.5em; }
		   tab14 { padding-right: 4.4em; }
		   tab15 { padding-left: 4.4em; }
		   tab16 { padding-left: 4em; }
		   tab17 { padding-right: 7em; }
		   tab18 { padding-left: 3.8em; }
		   tab19 { padding-left: 2.4em; }
		   tab20 { padding-right: 5.8em; }
		   tab22 { padding-left: 2em; }
		   tab23 { padding-right: 2em; }
		   tab25 { padding-left: 2em; }
		   tab26 { padding-left: 0em; }  
		   tab21 { padding-left: 4em; }
		   tab24 { padding-left: 4em; }
		   tab27 { padding-left: 4em; }
		   tab28 { padding-left: 1em; }
		   tab29 { padding-right: 1.6em; }
		   tab30 { padding-left: 4em; }
		   tab31 { padding-left: 1em; }
		   tab33 { padding-left: 4em; }
		   tab34 { padding-left: 1em; }
		   tab35 { padding-right: 1.5em; }
		   tab36 { padding-left: 4em; }
		   tab38 { padding-right: 2.3em; }
		   tab39 { padding-left: 4.8em; }
		   tab41 { padding-right: 1.4em; }
		   tab42 { padding-left: 4.3em; }
		   tab44 { padding-right: 1em; }
		   tab45 { padding-left: 4.8em; }
		   tab47 { padding-right: 2.5em; }
		   tab48 { padding-left: 4.9em; }
		   tab50 { padding-right: 3.0em; }
		   tab51 { padding-left: 4.9em; }
		   tab53 { padding-right: 1.8em; }
		   tab54 { padding-left: 4.9em; }
		   tab56 { padding-right: 2.8em; }
		   tab57 { padding-left: 4.9em; }
		   tab58 { padding-left: 0em; }
		   tab59 { padding-right: 2.8em; }
		   tab60 { padding-left: 4.9em; }
		   tab64 { padding-left: 3.8em; }
           input[type=text], select {
                  position:static;
                  width: 15%;
                  padding: 4px 10px;
                  margin: 4px 0;
                  display: inline-block;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  box-sizing: border-box;
           }
           

           input[type=submit] {
                  width: 15%;
                  background-color: #4CAF50;
                  color: white;
                  padding: 4px 10px;
                  margin: 4px 0;
                  border: none;
                  border-radius: 4px;
                  cursor: pointer;
           }

            input[type=submit]:hover {
                  background-color: red;
            }
            
             div {
                   border-radius: 1px;
                   /* background-color: yellow;*/
                   padding: 0.5px;
                  }
             span{
                  color:red;
                  }
                  
                   .form-inline > .checkbox {margin-left:5px;margin-right:5px;}
                   .form-inline  .form-control {width:auto;}
                   .form-inline label {margin-right:5px;}
   </style>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>



<script type="text/javascript">
          $(document).ready(function(){
  
	          var form = $("#myform");
	          var regId = $("#regId");
	          var regIdinfo = $("#regIdinfo");
	          var dFirstname = $("#dFirstname");
	          var dFirstnameinfo = $("#dFirstnameinfo");
	          var dLastname = $("#dLastname");
	          var dLastnameinfo = $("#dLastnameinfo");
	          var dAge = $("#dAge");
	          var dAgeinfo = $("#dAgeinfo");
	          var dGender = $("#dGender");
	          var dGenderinfo = $("#dGenderinfo");
	          var mobileNumber = $("#mobileNumber");
	          var mobileNumberinfo = $("#mobileNumberinfo");
	          var alternateMobile = $("#alternateMobile");
	          var alternateMobileinfo = $("#alternateMobileinfo");
	          var address = $("#address");
	          var addressinfo = $("#addressinfo");
	          var pin = $("#pin");
	          var pininfo = $("#pininfo");
	         
	          var email = $("#email");
	          var emailinfo = $("#emailinfo");

	          var speciality = $("#speciality");
	          var specialityinfo = $("#specialityinfo");
	          var experience = $("#experience");
	          var experienceinfo = $("#experienceinfo");
	          var reference = $("#reference");
	          var referenceinfo = $("#referenceinfo");
	         
	          var modifiedBy = $("#modifiedBy");
	          var modifiedByinfo = $("#modifiedByinfo");

	           regId.blur(validateRegId);
	           
	           dFirstname.blur(validateDFirstname);
	           dLastname.blur(validateDLastname);
	           dAge.blur(validateDAge);
	           dGender.blur(validateDGender);
	           mobileNumber.blur(validateMobileNumber);
	           alternateMobile.blur(validateAlternateMobile);
	           address.blur(validateAddress);
	           pin.blur(validatePin);
	           
	           email.blur(validateEmail);
	           speciality.blur(validateSpeciality);
	           experience.blur(validateExperience);
	           reference.blur(validateReference);

	           modifiedBy.blur(validateModifiedBy);
	          
	           regId.keyup(validateRegId);
	           
	           dFirstname.keyup(validateDFirstname);
	           dLastname.keyup(validateDLastname);
	           dAge.keyup(validateDAge);
	           dGender.keyup(validateDGender);
	           mobileNumber.keyup(validateMobileNumber);
	           alternateMobile.keyup(validateAlternateMobile);
	           address.keyup(validateAddress);
	           pin.keyup(validatePin);
	           
	           email.keyup(validateEmail);
	           speciality.keyup(validateSpeciality);
	           experience.keyup(validateExperience);
	           reference.keyup(validateReference);
	           
	           modifiedBy.keyup(validateModifiedBy);
	           
	

	    form.submit(function(){
	       if(validateRegId() & validateDFirstname() & validateDLastname() & validateDAge() & validateDGender() & validateMobileNumber() & validateAlternateMobile() & 

	       validateAddress() & validatePin() & validateEmail() & validateSpeciality() & validateExperience() & validateReference() & validateModifiedBy()){
	       return true;
	       }else
	       {
	       return false;
	       }

	    });
		
	function validateRegId(){
        if(regId.val().length < 1){
        	regId.addClass("error");
        	regIdinfo.text("Id should be atleast 1 number");
        	regIdinfo.addClass("error");
        return false;
        }else
        {
        	regId.removeClass("error");
        	regIdinfo.text("please enter RegId").hide();
        	regIdinfo.addClass("error");
        return true;
        }
        }
	function validateDFirstname(){
        if(dFirstname.val().length < 3){
    	dFirstname.addClass("error");
    	dFirstnameinfo.text("Name should be morethan 3 letters");
    	dFirstnameinfo.addClass("error");
        return false;
        }else
        {
        dFirstname.removeClass("error");
        dFirstnameinfo.text("please enter Firstname").hide();
        dFirstnameinfo.addClass("error");
        return true;
        }
        }
	 function validateDLastname(){
        if(dLastname.val().length < 3){
     	dLastname.addClass("error");
     	dLastnameinfo.text("Name should be morethan 3 letters");
     	dLastnameinfo.addClass("error");
        return false;
        }else
        {
        dLastname.removeClass("error");
        dLastnameinfo.text("please enter Lastname").hide();
        dLastnameinfo.addClass("error");
        return true;
        }
        }
	 function validateDAge(){
        if(dAge.val().length < 2){
     	dAge.addClass("error");
     	dAgeinfo.text("Enter correct Age");
     	dAgeinfo.addClass("error");
        return false;
        }else
        {
        dAge.removeClass("error");
        dAgeinfo.text("please enter Age").hide();
        dAgeinfo.addClass("error");
        return true;
        }
        }
	 function validateDGender(){
        if(dGender.val().length < 2){
     	dGender.addClass("error");
     	dGenderinfo.text("Enter correct Gender");
     	dGenderinfo.addClass("error");
        return false;
        }else
        {
        dGender.removeClass("error");
        dGenderinfo.text("please enter Gender").hide();
        dGenderinfo.addClass("error");
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
     function validateSpeciality(){
         if(speciality.val().length < 2){
        	 speciality.addClass("error");
        	 specialityinfo.text("speciality In");
        	 specialityinfo.addClass("error");
         return false;
         }else
         {
        	 speciality.removeClass("error");
        	 specialityinfo.text("please enter Speciality").hide();
        	 specialityinfo.addClass("error");
         return true;
         }
         }
     function validateExperience(){
         if(experience.val().length < 2){
        	 experience.addClass("error");
        	 experienceinfo.text("Enter valid Experience");
        	 experienceinfo.addClass("error");
         return false;
         }else
         {
        	 experience.removeClass("error");
        	 experienceinfo.text("please enter Experience").hide();
        	 experienceinfo.addClass("error");
         return true;
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
   </script>
 </head>

  <body>

<div id="Canvas" style="background-image:url('${resource(dir: "images/", file: "lite.jpg")}');height: 750px; background-size:cover;">


   <div>
         <g:form controller="doctor" align="center" ID="myform" action="savedoctor"  nonvalidate="nonvalidate"> 
            <div id="form-content">
                      
            <div class="fieldgroup">
            <tab4><label for="dFirstname">Firstname: </label></tab4>
            <tab5><input type="text" id="dFirstname" name="dFirstname"></tab5><br>
            <tab6><span id=dFirstnameinfo></span></tab6><br>
            </div>

            
             <input type="hidden" id="myaction" name="myaction" value="delete">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <tab64><input type="submit" ID="btnsave" value="Delete" class="submit" /></tab64>
            </div>
            
        
         </div>
       </g:form>
    </div>
    </div>
  </body>
</html>