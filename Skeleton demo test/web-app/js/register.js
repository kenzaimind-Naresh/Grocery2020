   $(document).ready(function(){
     $("#shopId").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#shopId").val().match('^[0-9]+$') ) {
		   	 
	   		$("#shopIdinfo").text("");
	     } else {
	    	 $("#shopIdinfo").text("Please Enter Valid Id");
	     }
	   	  });
     $("#shopName").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#shopName").val() ){
		   	 
	   		$("#shopNameinfo").text("");
	     } else {
	    	 $("#shopNameinfo").text("Please Enter shopName");
	     }
	   	  });
     
	 $("#firstName").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#firstName").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#firstName").val().trim()!="") {
		   	 
	   		$("#firstNameinfo").text("");
	     } else {
	    	 $("#firstNameinfo").text("Please Enter Valid Firstname");
	     }
	   	  });
	 $("#lastName").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#lastName").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#lastName").val().trim()!="") {
		   	 
	   		$("#lastNameinfo").text("");
	     } else {
	    	 $("#lastNameinfo").text("Please Enter Valid Lastname");
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
	 $("#password").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#password").val().trim()){
		   	 
	   		$("#passwordinfo").text("");
	     } else {
	    	 $("#passwordinfo").text("Please Enter Password");
	     }
	   	  });
	 
	 	
	 $("#mobileNumber").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#mobileNumber").val().trim().match(/^\d{10,16}$/) && $("#mobileNumber").val().trim()!="") {
		   	 
	   		$("#mobileNumberinfo").text("");
	     } else {
	    	 $("#mobileNumberinfo").text("Please Enter Mobile Number");
	     }
	   	  });
	 
	 
	 $("#address").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#address").val().trim().match(/^[a-zA-Z0-9-\-\,.;:@#$%^&*/_!]{3,100}$/) && $("#address").val().trim()!=""  ) {
		   	 
	   		$("#addressinfo").text("");
	     } else {
	    	 $("#addressinfo").text("Please Enter Address");
	     }
	   	  });
	
	 $("#city").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#city").val().match('^[a-zA-Z]{3,16}$')){
		   	 
	   		$("#cityinfo").text("");
	     } else {
	    	 $("#cityinfo").text("Please Enter City");
	     }
	   	  });
	 $("#zipCode").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#zipCode").val().match('^([1-9])([0-9]){5}$') ) {
		   	 
	   		$("#zipCodeinfo").text("");
	     } else {
	    	 $("#zipCodeinfo").text("Please Enter zipCode");
	     }
	   	  });
	
	  
	$("#modifiedBy").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#modifiedBy").val().match('^[a-zA-Z]{3,16}$')){
		   	 
	   		$("#modifiedByinfo").text("");
	     } else {
	    	 $("#modifiedByinfo").text("Please Select ModifiedBy");
	     }
	   	  });
    
   });


  function validateForm() {
     var shopId = document.forms["myform"]["shopId"].value; 
	 var shopName = document.forms["myform"]["shopName"].value;
	 var firstName = document.forms["myform"]["firstName"].value;
	 var lastName=  document.forms["myform"]["lastName"].value;
	 var email = document.forms["myform"]["email"].value;
	 var password = document.forms["myform"]["password"].value;
	 var mobileNumber = document.forms["myform"]["mobileNumber"].value;
	 var address = document.forms["myform"]["address"].value;
	 var city = document.forms["myform"]["city"].value;
	 var zipCode = document.forms["myform"]["zipCode"].value;
	 var modifiedBy = document.forms["myform"]["modifiedBy"].value;
	 
	    if (shopId == null || shopId == "") {
		    document.getElementById('shopIdinfo').style.display = 'inline';	
	    	 $("#shopIdinfo").text("Please Enter Id");	
	    	 return false;
		    	 }
	    if (shopName == null || shopName == "") {
	    	document.getElementById('shopNameinfo').style.display = 'inline';
	    	 $("#shopNameinfo").text("Please Enter shopName");
	    	 return false;
	    }
         if (firstName == null || firstName.trim() == "" || firstName.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('firstNameinfo').style.display = 'inline';	
	    	 $("#firstNameinfo").text("Please Enter Firstname");	
	    	 return false;
		    	 }
	    if (lastName == null || lastName.trim() == "" || lastName.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('lastNameinfo').style.display = 'inline';
	    	 $("#lastNameinfo").text("Please Enter Lastname");
	    	 return false;
	    }
	    
	    if (email == null || email == "" || email.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)==null) {
	    	document.getElementById('emailinfo').style.display = 'inline';
	    	 $("#emailinfo").text("Please Enter Email");
	    	 return false;
	    }
	    if (password == null || password.trim() == "") {
	    	document.getElementById('passwordinfo').style.display = 'inline';
	    	 $("#passwordinfo").text("Please Enter Password");
	    	 return false;
	    }
	    
	     if (mobileNumber == null || mobileNumber.trim() == "" || mobileNumber.match(/^\d{10,16}$/)==null) {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("Please Enter MobileNumber");
	    	 return false;
	    }
	    
	   
	    
	    
	    if (address == null || address.trim() == "" || address.match(/^[a-zA-Z0-9-\-\,.;:@#$%^&*/_!]{3,100}$/)==null) {
	    	document.getElementById('addressinfo').style.display = 'inline';
	    	 $("#addressinfo").text("Please Enter Address");
	    	 return false;
	    }
	     if (city == null || city == "") {
	    	document.getElementById('cityinfo').style.display = 'inline';
	    	 $("#cityinfo").text("Please Enter City");
	    	 return false;
	    }
	    if (zipCode == null || zipCode == "") {
	    	document.getElementById('zipCodeinfo').style.display = 'inline';
	    	 $("#zipCodeinfo").text("Please Enter zip Code ");
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