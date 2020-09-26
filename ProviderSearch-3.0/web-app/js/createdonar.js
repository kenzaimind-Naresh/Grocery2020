   $(document).ready(function(){
	 $("#dFirstname").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#dFirstname").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#dFirstname").val().trim()!="") {
		   	 
	   		$("#dFirstnameinfo").text("");
	     } else {
	    	 $("#dFirstnameinfo").text("Please Enter Valid Firstname");
	     }
	   	  });
	 $("#dLastname").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#dLastname").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#dLastname").val().trim()!="") {
		   	 
	   		$("#dLastnameinfo").text("");
	     } else {
	    	 $("#dLastnameinfo").text("Please Enter Valid Lastname");
	     }
	   	  });
	 $("#dAge").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#dAge").val().match('^[0-9]+$' ) ){
		   	 
	   		$("#dAgeinfo").text("");
	     } else {
	    	 $("#dAgeinfo").text("Please Enter Valid Age");
	     }
	   	  });
	 $("#dGender").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#dGender").val()){
		   	 
	   		$("#dGenderinfo").text("");
	     } else {
	    	 $("#dGenderinfo").text("Please Select Gender");
	     }
	   	  });
	 
	 
	 $("#bloodgroup").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#bloodgroup").val()){
		   	 
	   		$("#bloodinfo").text("");
	     } else {
	    	 $("#bloodinfo").text("Please Select Blood Group");
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
	 var dFirstname = document.forms["myform"]["dFirstname"].value;
	 var dLastname=  document.forms["myform"]["dLastname"].value;
	 var dAge = document.forms["myform"]["dAge"].value;
	 var dGender = document.forms["myform"]["dGender"].value;
	 var mobileNumber = document.forms["myform"]["mobileNumber"].value;
	 var address = document.forms["myform"]["address"].value;
	 var pin = document.forms["myform"]["pin"].value;
	 var email = document.forms["myform"]["email"].value;
	 var password = document.forms["myform"]["password"].value;
	 var city = document.forms["myform"]["city"].value;
	 var bloodgroup = document.forms["myform"]["bloodgroup"].value;
	 var lastDonation=document.forms["myform"]["lastDonation"].value;
	 
	  
	    if (dFirstname == null || dFirstname.trim() == "" || dFirstname.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('dFirstnameinfo').style.display = 'inline';	
	    	 $("#dFirstnameinfo").text("Please Enter Firstname");	
	    	 return false;
		    	 }
	    if (dLastname == null || dLastname.trim() == "" || dLastname.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('dLastnameinfo').style.display = 'inline';
	    	 $("#dLastnameinfo").text("Please Enter Lastname");
	    	 return false;
	    }
	    if (dAge == null || dAge == "") {
	    	document.getElementById('dAgeinfo').style.display = 'inline';
	    	 $("#dAgeinfo").text("Please Enter Age");
	    	 return false;
	    }
	    
	    if (bloodgroup == null || bloodgroup == "") {
	    	document.getElementById('bloodinfo').style.display = 'inline';
	    	 $("#bloodinfo").text("Please Enter Age");
	    	 return false;
	    }
	    if (dGender == null || dGender == "") {
	    	document.getElementById('dGenderinfo').style.display = 'inline';
	    	 $("#dGenderinfo").text("Please Select Gender");
	    	 return false;
	    }
	   
	    if (mobileNumber == null || mobileNumber.trim() == "" || mobileNumber.match(/^\d{10,16}$/)==null) {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("Please Enter MobileNumber");
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