   $(document).ready(function(){
     $("#regId").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#regId").val().match('^[0-9]+$') ) {
		   	 
	   		$("#regIdinfo").text("");
	     } else {
	    	 $("#regIdinfo").text("Please Enter Valid Id");
	     }
	   	  });
     $("#clinicName").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#clinicName").val() ){
		   	 
	   		$("#clinicNameinfo").text("");
	     } else {
	    	 $("#clinicNameinfo").text("Please Enter ClinicName");
	     }
	   	  });
     $("#speciality").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#speciality").val().match('^[a-zA-Z]{3,16}$')){
		   	 
	   		$("#specialityinfo").text("");
	     } else {
	    	 $("#specialityinfo").text("Please Enter Speciality");
	     }
	   	  });
	  $("#experience").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#experience").val().match('^[0-9]+$')){
		   	 
	   		$("#experienceinfo").text("");
	     } else {
	    	 $("#experienceinfo").text("Please Enter Experience");
	     }
	   	  });
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
	 
	
	 $("#mobileNumber").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#mobileNumber").val().trim().match(/^\d{10,16}$/) && $("#mobileNumber").val().trim()!="") {
		   	 
	   		$("#mobileNumberinfo").text("");
	     } else {
	    	 $("#mobileNumberinfo").text("Please Enter Mobile Number");
	     }
	   	  });
	 $("#alternateMobile").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#alternateMobile").val().trim().match(/^\d{10,16}$/) && $("#alternateMobile").val().trim()!="") {
		   	 
	   		$("#alternateMobileinfo").text("");
	     } else {
	    	 $("#alternateMobileinfo").text("Please Enter Alternate Mobile");
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
	   		
	   	 if ( $("#password").val().trim().match('^[a-zA-Z]{6,16}$')){
		   	 
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
	 $("#qualifcation").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	 if ( $("#qualifcation").val()){
		   	 
	   		$("#qualifcationinfo").text("");
	     } else {
	    	 $("#qualifcationinfo").text("Please Select Qualification");
	     }
	   	  });
	  $("#fee").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#fee").val().match('^[0-9]{2,16}$')){
		   	 
	   		$("#feeinfo").text("");
	     } else {
	    	 $("#feeinfo").text("Please Enter Fee");
	     }
	   	  });
	   $("#reference").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#reference").val().match('^[a-zA-Z]{3,16}$')){
		   	 
	   		$("#referenceinfo").text("");
	     } else {
	    	 $("#referenceinfo").text("Please Enter Reference");
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
     var regId = document.forms["myform"]["regId"].value;     
	 var dFirstname = document.forms["myform"]["dFirstname"].value;
	 var dLastname=  document.forms["myform"]["dLastname"].value;
	 var dAge = document.forms["myform"]["dAge"].value;
	 var dGender = document.forms["myform"]["dGender"].value;
	 var mobileNumber = document.forms["myform"]["mobileNumber"].value;
	 var alternateMobile = document.forms["myform"]["alternateMobile"].value;
	 var address = document.forms["myform"]["address"].value;
	 var pin = document.forms["myform"]["pin"].value;
	 var email = document.forms["myform"]["email"].value;
	 var password = document.forms["myform"]["password"].value;
	 var speciality = document.forms["myform"]["speciality"].value;
	 var experience = document.forms["myform"]["experience"].value;
	 var reference = document.forms["myform"]["reference"].value;
	 var modifiedBy = document.forms["myform"]["modifiedBy"].value;
	 var clinicName = document.forms["myform"]["clinicName"].value;
	 var locality = document.forms["myform"]["locality"].value;
	 var city = document.forms["myform"]["city"].value;
	 var fee = document.forms["myform"]["fee"].value;
	 var qualifcation = document.forms["myform"]["qualifcation"].value;
	 
	    if (regId == null || regId == "") {
		    document.getElementById('regIdinfo').style.display = 'inline';	
	    	 $("#regIdinfo").text("Please Enter Id");	
	    	 return false;
		    	 }
	    if (clinicName == null || clinicName == "") {
	    	document.getElementById('clinicNameinfo').style.display = 'inline';
	    	 $("#clinicNameinfo").text("Please Enter ClinicName");
	    	 return false;
	    }

	     if (speciality == null || speciality == "") {
	    	document.getElementById('specialityinfo').style.display = 'inline';
	    	 $("#specialityinfo").text("Please Enter Speciality");
	    	 return false;
	    }
	     if (experience == null || experience == "") {
	    	document.getElementById('experienceinfo').style.display = 'inline';
	    	 $("#experienceinfo").text("Please Enter Experience");
	    	 return false; 
	    }
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
	    if (alternateMobile == null || alternateMobile.trim() == "" || alternateMobile.match(/^\d{10,16}$/)==null) {
	    	document.getElementById('alternateMobileinfo').style.display = 'inline';
	    	 $("#alternateMobileinfo").text("Please Enter AlternateNumber");
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
	    if (qualifcation == null || qualifcation == "") {
	    	document.getElementById('qualifcationinfo').style.display = 'inline';
	    	 $("#qualifcationinfo").text("Please Select Qualifcation");
	    	 return false;
	    }
	    if (fee == null || fee == "") {
	    	document.getElementById('feeinfo').style.display = 'inline';
	    	 $("#feeinfo").text("Please Enter Fee");
	    	 return false;
	    }
	     if (reference == null || reference == "") {
	    	document.getElementById('referenceinfo').style.display = 'inline';
	    	 $("#referenceinfo").text("Please Enter Reference");
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