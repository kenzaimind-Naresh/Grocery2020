   $(document).ready(function(){

	 $("#pFirstname").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#pFirstname").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#pFirstname").val().trim()!="") {
		   	 
	   		$("#pFirstnameinfo").text("");
	     } else {
	    	 $("#pFirstnameinfo").text("Please Enter Valid Firstname");
	     }
	   	  });
	 $("#pLastname").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#pLastname").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#pLastname").val().trim()!="") {
		   	 
	   		$("#pLastnameinfo").text("");
	     } else {
	    	 $("#pLastnameinfo").text("Please Enter Valid Lastname");
	     }
	   	  });
	 $("#pAge").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	 if ( $("#pAge").val().trim().match(/^\d{1,2}$/) ){
		   	 
	   		$("#pAgeinfo").text("");
	     } else {
	    	 $("#pAgeinfo").text("Please Enter Valid Age");
	     }
	   	  });
	 $("#pGender").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#pGender").val()){
		   	 
	   		$("#pGenderinfo").text("");
	     } else {
	    	 $("#pGenderinfo").text("Please Select Gender");
	     }
	   	  });
	
	 $("#mobileNumber").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#mobileNumber").val().trim().match(/^\d{10,16}$/) && $("#mobileNumber").val().trim()!="") {
		   	 
	   		$("#mobileNumberinfo").text("");
	     } else {
	    	 $("#mobileNumberinfo").text("Please Enter MobileNumber");
	     }
	   	  });
	 $("#email").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#email").val().trim().match('^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@(gmail|yahoo|ymail|rediff|outlook|hotmail|icloud)(\\.com|.in)$') ) {
		   	 
	   		$("#emailinfo").text("");
	     } else {
	    	 $("#emailinfo").text("Please Enter Valid Email");
	     }
	   	  });
	
	 $("#address").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if( $("#address").val().trim().match(/^[a-zA-Z0-9-\-\,.;:@#$%^&*/_!]{3,100}$/) && $("#address").val().trim()!=""  ) {
		   	 
	   		$("#addressinfo").text("");
	     } else {
	    	 $("#addressinfo").text("Please Enter Address");
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
	 $("#reason").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#reason").val()) {
		   	 
	   		$("#reasoninfo").text("");
	     } else {
	    	 $("#reasoninfo").text("Please Enter Reason");
	     }
	   	  });
	 $("#fee").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#fee").val().match('^[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*$.')){
		   	 
	   		$("#feeinfo").text("");
	     } else {
	    	 $("#feeinfo").text("Please Enter Fee");
	     }
	   	  });
	 $("#alternateMobile").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#alternateMobile").val().trim().match(/^\d{10,16}$/) && $("#alternateMobile").val().trim()!="") {
		   	 
	   		$("#alternateMobileinfo").text("");
	     } else {
	    	 $("#alternateMobileinfo").text("Please Enter AlternateNumber");
	     }
	   	  });
	$("#modifiedBy").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#modifiedBy").val().match('^[a-zA-Z]{3,16}$')){
		   	 
	   		$("#modifiedByinfo").text("");
	     } else {
	    	 $("#modifiedByinfo").text("Please Enter ModifiedBy");
	     }
	   	  });
    
   });


  function validateForm() {
	  
	 var pFirstname = document.forms["myform"]["pFirstname"].value;
	 var pLastname=  document.forms["myform"]["pLastname"].value;
	 var pAge = document.forms["myform"]["pAge"].value;
	 var pGender = document.forms["myform"]["pGender"].value;
	
	 var mobileNumber = document.forms["myform"]["mobileNumber"].value;
	 var alternateMobile = document.forms["myform"]["alternateMobile"].value;
	 var address = document.forms["myform"]["address"].value;
	var pin = document.forms["myform"]["pin"].value;
	var reason = document.forms["myform"]["reason"].value;
	 var fee = document.forms["myform"]["fee"].value;
	 var email = document.forms["myform"]["email"].value;
	 var modifiedBy = document.forms["myform"]["modifiedBy"].value;
	 
	 
	
	    if (pFirstname == null || pFirstname.trim() == "" || pFirstname.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('pFirstnameinfo').style.display = 'inline';	
	    	 $("#pFirstnameinfo").text("Please Enter Firstname");
	    	return false;
		    	 }
	    if (pLastname == null || pLastname.trim() == "" || pLastname.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('pLastnameinfo').style.display = 'inline';
	    	 $("#pLastnameinfo").text("Please Enter Lastname");
	    	 return false;
	    }
	    if (pAge == null || pAge == "" || pAge.match(/^\d{1,2}$/)==null) {
	    	document.getElementById('pAgeinfo').style.display = 'inline';
	    	 $("#pAgeinfo").text("Please Enter Age");
	    	 return false;
	    }
	    if (pGender == null || pGender == "") {
	    	document.getElementById('pGenderinfo').style.display = 'inline';
	    	 $("#pGenderinfo").text("Please Select Gender");
	    	 return false;
	    }
	   
	    if (mobileNumber == null || mobileNumber.trim() == "" || mobileNumber.match(/^\d{10,16}$/)==null) {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("Please Enter MobileNumber");
	    	 return false;
	    }
	    if (email == null || email == "") {
	    	document.getElementById('emailinfo').style.display = 'inline';
	    	 $("#emailinfo").text("Please Enter Email");
	    	 return false;
	    }
	   
	    if (address == null || address.trim() == "" || address.match(/^[a-zA-Z0-9-\-\,.;:@#$%^&*/_!  ]{3,100}$/)==null) {
	    	document.getElementById('addressinfo').style.display = 'inline';
	    	 $("#addressinfo").text("Please Enter Address");
	    	 return false;
	    }
	    if (pin == null || pin == "") {
	    	document.getElementById('pininfo').style.display = 'inline';
	    	 $("#pininfo").text("Please Enter Pin Code");
	    	 return false;
	    }
	    if (reason == null || reason == "") {
	    	document.getElementById('reasoninfo').style.display = 'inline';
	    	 $("#reasoninfo").text("Please Enter reason");
	    	 return false;
	    }
	   
	    if (fee == null || fee == "") {
	    	document.getElementById('feeinfo').style.display = 'inline';
	    	 $("#feeinfo").text("Please Enter Fee");
	    	 return false;
	    }
	    if (alternateMobile == null || alternateMobile.trim() == "" || alternateMobile.match(/^\d{10,16}$/)==null) {
	    	document.getElementById('alternateMobileinfo').style.display = 'inline';
	    	 $("#alternateMobileinfo").text("Please Enter AlternateNumber");
	    	 return false;
	    }
	    if (modifiedBy == null || modifiedBy == "") {
	    	document.getElementById('modifiedByinfo').style.display = 'inline';
	    	 $("#modifiedByinfo").text("Please Enter ModifiedBy");
	    	 return false;
	    }else{
			return true;
		    }	
  }