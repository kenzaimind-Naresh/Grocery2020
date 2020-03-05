   $(document).ready(function(){
    
     $("#userName").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#userName").val() ){
		   	 
	   		$("#userNameinfo").text("");
	     } else {
	    	 $("#userNameinfo").text("Please Enter userName");
	     }
	   	  });
     
     $("#password").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#password").val().trim()){
		   	 
	   		$("#passwordinfo").text("");
	     } else {
	    	 $("#passwordinfo").text("Please Enter Password");
	     }
	   	  });
     
     	 $("#email").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#email").val().trim().match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/) ) {
		   	 
	   		$("#emailinfo").text("");
	     } else {
	    	 $("#emailinfo").text("Please Enter Valid Email");
	     }
	   	  });
	
	 
	 	
	 $("#mobileNumber").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#mobileNumber").val().trim().match(/^\d{0,9}$/) && $("#mobileNumber").val().trim()!="") {
		   	 
	   		$("#mobileNumberinfo").text("");
	     } else {
	    	 $("#mobileNumberinfo").text("Please Enter Mobile Number");
	     }
	   	  });
	 
	 
   });


  function validateForm() {
	 var userName = document.forms["myform"]["userName"].value;
	 var password = document.forms["myform"]["password"].value;
	 var email = document.forms["myform"]["email"].value;
	 var mobileNumber = document.forms["myform"]["mobileNumber"].value;
	 var modifiedBy = document.forms["myform"]["modifiedBy"].value;
	 
	    
	    if (userName == null || userName == "") {
	    	document.getElementById('userNameinfo').style.display = 'inline';
	    	 $("#userNameinfo").text("Please Enter userName");
	    	 return false;
	    }
         
	    if (password == null || password.trim() == "") {
	    	document.getElementById('passwordinfo').style.display = 'inline';
	    	 $("#passwordinfo").text("Please Enter Password");
	    	 return false;
	    }
	    
	    if (email == null || email == "" || email.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)==null) {
	    	document.getElementById('emailinfo').style.display = 'inline';
	    	 $("#emailinfo").text("Please Enter Email");
	    	 return false;
	    }
	    
	    
	     if (mobileNumber == null || mobileNumber.trim() == "" || mobileNumber.match(/^\d{10,16}$/)==null) {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("Please Enter MobileNumber");
	    	 return false;
	    }
	   
	    if (modifiedBy == null || modifiedBy == "") {
	    	document.getElementById('modifiedByinfo').style.display = 'inline';
	    	 $("#modifiedByinfo").text("Please Enter ModifiedBy");
	    	 return false;
	    }
	    else{
	    	
	    	return true;
	    }
  }