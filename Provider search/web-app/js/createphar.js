   $(document).ready(function(){
     $("#regId").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#regId").val().match('^[0-9]+$') ) {
		   	 
	   		$("#regIdinfo").text("");
	     } else {
	    	 $("#regIdinfo").text("Please Enter Valid Id");
	     }
	   	  });
     $("#pharmacyName").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#pharmacyName").val() ){
		   	 
	   		$("#pharmacyNameinfo").text("");
	     } else {
	    	 $("#pharmacyNameinfo").text("Please Enter PharmacyName");
	     }
	   	  });
    
	 $("#firstname").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#firstname").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#firstname").val().trim()!="") {
		   	 
	   		$("#firstnameinfo").text("");
	     } else {
	    	 $("#firstnameinfo").text("Please Enter Valid Firstname");
	     }
	   	  });
	 $("#lastname").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#lastname").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#lastname").val().trim()!="") {
		   	 
	   		$("#lastnameinfo").text("");
	     } else {
	    	 $("#lastnameinfo").text("Please Enter Valid Lastname");
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
	 $("#alternateNumber").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#alternateNumber").val().trim().match(/^\d{10,16}$/) && $("#alternateNumber").val().trim()!="") {
		   	 
	   		$("#alternateNumberinfo").text("");
	     } else {
	    	 $("#alternateNumberinfo").text("Please Enter Alternate Number");
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
	 $("#address").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#address").val().trim().match(/^[a-zA-Z0-9-\-\,.;:@#$%^&*/_!]{3,100}$/) && $("#address").val().trim()!=""  ) {
		   	 
	   		$("#addressinfo").text("");
	     } else {
	    	 $("#addressinfo").text("Please Enter Address");
	     }
	   	  });
	 $("#locality").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#locality").val().match('^[a-zA-Z]{3,16}$')){
		   	 
	   		$("#localityinfo").text("");
	     } else {
	    	 $("#localityinfo").text("Please Enter Locality");
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
	 $("#pin").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#pin").val().match('^([1-9])([0-9]){5}$') ) {
		   	 
	   		$("#pininfo").text("");
	     } else {
	    	 $("#pininfo").text("Please Enter Pin Code");
	     }
	   	  });
    
   });


  function validateForm() {
	 
     var regId = document.forms["myform"]["regId"].value;     
	 var firstname = document.forms["myform"]["firstname"].value;
	 var lastname=  document.forms["myform"]["lastname"].value;
	 var mobileNumber = document.forms["myform"]["mobileNumber"].value;
	 var alternateNumber = document.forms["myform"]["alternateNumber"].value;
	 var address = document.forms["myform"]["address"].value;
	 var pin = document.forms["myform"]["pin"].value;
	 var email = document.forms["myform"]["email"].value;
	 var password = document.forms["myform"]["password"].value;
	 var pharmacyName = document.forms["myform"]["pharmacyName"].value;
	 var locality = document.forms["myform"]["locality"].value;
	 var city = document.forms["myform"]["city"].value;
	
	 
	    if (regId == null || regId == "") {
		    document.getElementById('regIdinfo').style.display = 'inline';	
	    	 $("#regIdinfo").text("Please Enter Id");	
	    	 return false;
		    	 }
	    if (pharmacyName == null || pharmacyName == "") {
	    	document.getElementById('pharmacyNameinfo').style.display = 'inline';
	    	 $("#pharmacyNameinfo").text("Please Enter PharmacyName");
	    	 return false;
	    }
	    if (firstname == null || firstname.trim() == "" || firstname.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('firstnameinfo').style.display = 'inline';	
	    	 $("#firstnameinfo").text("Please Enter Firstname");	
	    	 return false;
		    	 }
	    if (lastname == null || lastname.trim() == "" || lastname.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('lastnameinfo').style.display = 'inline';
	    	 $("#lastnameinfo").text("Please Enter Lastname");
	    	 return false;
	    }
	    if (mobileNumber == null || mobileNumber.trim() == "" || mobileNumber.match(/^\d{10,16}$/)==null) {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("Please Enter MobileNumber");
	    	 return false;
	    }
	    if (alternateNumber == null || alternateNumber.trim() == "" || alternateNumber.match(/^\d{10,16}$/)==null) {
	    	document.getElementById('alternateNumberinfo').style.display = 'inline';
	    	 $("#alternateNumberinfo").text("Please Enter Alternate Number");
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
	    if (address == null || address.trim() == "" || address.match(/^[a-zA-Z0-9-\-\,.;:@#$%^&*/_!]{3,100}$/)==null) {
	    	document.getElementById('addressinfo').style.display = 'inline';
	    	 $("#addressinfo").text("Please Enter Address");
	    	 return false;
	    }
	    if (locality == null || locality == "") {
	    	document.getElementById('localityinfo').style.display = 'inline';
	    	 $("#localityinfo").text("Please Enter Locality");
	    	 return false;
	    }
	    if (city == null || city == "") {
	    	document.getElementById('cityinfo').style.display = 'inline';
	    	 $("#cityinfo").text("Please Enter City");
	    	 return false;
	    }
	    if (pin == null || pin == "") {
	    	document.getElementById('pininfo').style.display = 'inline';
	    	 $("#pininfo").text("Please Enter Pin Code");
	    	 return false;
	    }
	    else{
	    	
	    	return true;
	    }
  }