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
		    background-color:lightgreen;
		  }
		   tab3 { padding-left: 6em; }
		   tab5 { padding-right:0.4em; }   
		   tab6 { padding-left: 3.5em; }   
		   tab7 { padding-right: 0.4em; }
		   tab8 { padding-right: 1.7em; } 
		   tab9 { padding-left: 4em; } 
		   tab10 { padding-left: 5.5em; }
		   tab11 { padding-right: 6.6em; } 
		   tab12 { padding-left: 4em; }
		   tab13 { padding-left: 4.5em; }
		   tab14 { padding-right: 4em; }
		   tab15 { padding-left: 4.4em; }
		   tab16 { padding-left: 4em; }
		   tab17 { padding-right: 7.9em; }
		   tab18 { padding-left: 3.2em; }
		   tab19 { padding-left: 2.4em; }
		   tab20 { padding-right: 4.3em; }
		   tab22 { padding-left: 2em; }
		   tab23 { padding-right: 2em; }
		   tab25 { padding-left: 2em; }
		   tab26 { padding-left: 0em; }  
		   tab21 { padding-left: 4em; }
		   tab24 { padding-left: 4em; }
		   tab27 { padding-left: 4em; }
		   tab28 { padding-left: 1.8em; }
		   tab29 { padding-left: 0em; }
		   tab30 { padding-left: 4em; }
		   tab31 { padding-left: 0.8em; }
		   tab33 { padding-left: 4em; }
		   tab34 { padding-left: 0em; }
		   tab35 { padding-right: 0.9em; }
		   tab36 { padding-left: 4em; }
		   tab38 { padding-right: 2.3em; }
		   tab39 { padding-left: 4.8em; }
		   tab41 { padding-right: 1.7em; }
		   tab42 { padding-left: 4.3em; }
		   tab44 { padding-right: 2.2em; }
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
		   tab64 { padding-left: 3.1em; }
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
	          var userId = $("#userId");
	          var userIdinfo = $("#userIdinfo");
	          var username = $("#username");
	          var usernameinfo = $("#usernameinfo");
	          var password = $("#password");
	          var passwordinfo = $("#passwordinfo");
	          var mobileNumber = $("#mobileNumber");
	          var mobileNumberinfo = $("#mobileNumberinfo");
	          var dob = $("#dob");
	          var dobinfo = $("#dobinfo");
	          var address = $("#address");
	          var addressinfo = $("#addressinfo");
	          var modifiedBy = $("#modifiedBy");
	          var modifiedByinfo = $("#modifiedByinfo");
	         
	           userId.blur(validateUserId);
	           username.blur(validateUsername);
	           password.blur(validatePassword);
	           mobileNumber.blur(validateMobileNumber);
	           dob.blur(validateDob);
	           address.blur(validateAddress);
	           modifiedBy.blur(validateModifiedBy);

	           userId.keyup(validateUserId);
	           username.keyup(validateUsername);
	           password.keyup(validatePassword);
	           mobileNumber.keyup(validateMobileNumber);
	           dob.keyup(validateDob);
	           address.keyup(validateAddress);
	           modifiedBy.keyup(validateModifiedBy);

	           
	

	    form.submit(function(){
	       if(validateUserId() & validateUsername() & validatePassword() & validateMobileNumber() & validateDob() & 

	       validateAddress() & validateModifiedBy()){
	       return true;
	       }else
	       {
	       return false;
	       }

	    });
		
	function validateUserId(){
        if(userId.val().length < 1){
        	userId.addClass("error");
        	userIdinfo.text("Id should be atleast 1 number");
        	userIdinfo.addClass("error");
        return false;
        }else
        {
        	userId.removeClass("error");
        	userIdinfo.text("please enter UserId").hide();
        	userIdinfo.addClass("error");
        return true;
        }
        }
	function validateUsername(){
        if(username.val().length < 3){
        	username.addClass("error");
        	usernameinfo.text("Name should be morethan 3 letters");
        	usernameinfo.addClass("error");
        return false;
        }else
        {
        	username.removeClass("error");
        	usernameinfo.text("please enter Username").hide();
        	usernameinfo.addClass("error");
        return true;
        }
        }
	 function validatePassword(){
        if(password.val().length < 3){
        	password.addClass("error");
        	passwordinfo.text("Name should be morethan 3 letters");
        	passwordinfo.addClass("error");
        return false;
        }else
        {
        	password.removeClass("error");
        	passwordinfo.text("please enter Password").hide();
        	passwordinfo.addClass("error");
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
	 function validateDob(){
        if(dob.val().length < 2){
        	dob.addClass("error");
        	dobinfo.text("Enter correct DateOfBirth");
        	dobinfo.addClass("error");
        return false;
        }else
        {
        	dob.removeClass("error");
        	dobinfo.text("please enter DateOfBirth").hide();
        	dobinfo.addClass("error");
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



   <div>
         <g:form controller="user" align="center" ID="myform" action="saveuser"  nonvalidate="nonvalidate"> 
            <div id="form-content">
            
           
           
            <div class="fieldgroup">
            <tab16><label for="mobileNumber">MobileNumber: </label></tab16>
            <tab17><input type="text" id="mobileNumber" name="mobileNumber"></tab17><br>
            <tab18><span id=mobileNumberinfo>Please enter MobileNumber</span></tab18><br>
            </div>
            
             <input type="hidden" id="myaction" name="myaction" value="delete">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <tab64><input type="submit" ID="btnsave" value="Delete" class="submit" /></tab64>
            </div>
            
        
         </div>
       </g:form>
    </div>
  </body>
</html>