$(document).ready(function(){

	 $("#patientId").focusout(function(){
		 
			$( this ).find( "span" ).css( "display", "inline" );	
	   		
		   	 if ( $("#patientId").val().trim().match('^[a-zA-Z0-9_.-]*$')!=null && $("#patientId").val().trim()!="") {
			   	 
		   		$("#patientIdinfo").text("");
		     } else {
		    	 $("#patientIdinfo").text("Please Select PatientId");
		     }
		   	  });
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
		 $("#address").focusout(function(){
		   		$( this ).find( "span" ).css( "display", "inline" );	
		   		
		   	 if( $("#address").val().trim().match(/^[a-zA-Z0-9-\-\,.;:@#$%^&*/_!]{3,100}$/) && $("#address").val().trim()!=""  ) {
			   	 
		   		$("#addressinfo").text("");
		     } else {
		    	 $("#addressinfo").text("Please Enter Address");
		     }
		   	  });
	 $("#nominee").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#nominee").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#nominee").val().trim()!=""){
		   	 
	   		$("#nomineeinfo").text("");
	     } else {
	    	 $("#nomineeinfo").text("Please Enter Nominee");
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
	 $("#alternateMobile").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#alternateMobile").val().trim().match(/^\d{10,16}$/) && $("#alternateMobile").val().trim()!="") {
		   	 
	   		$("#alternateMobileinfo").text("");
	     } else {
	    	 $("#alternateMobileinfo").text("Please Enter AlternateNumber");
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
	 $("#reference").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if( $("#reference").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#reference").val().trim()!="")  {
		   	 
	   		$("#referenceinfo").text("");
	     } else {
	    	 $("#referenceinfo").text("Please Enter Valid Reference");
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
	$("#serviceType").focusout(function(){
   		$( this ).find( "span" ).css( "display", "inline" );	
   	
   	 if ( $("#serviceType").val()){
	   	 
   		$("#serviceTypeinfo").text("");
     } else {
    	 $("#serviceTypeinfo").text("Please Select ServiceType");
     }
   	  });
	
	$("#roomNo").focusout(function(){
   		$( this ).find( "span" ).css( "display", "inline" );	
   		//alert($("#roomNo").val());
   	 if ( $("#roomNo").val()!="select"){
	   	 
   		$("#roomNoinfo").text("");
     } else {
    	 $("#roomNoinfo").text("Please Select RoomNo");
     }
   	  });
	$("#room1").focusout(function(){
   		$( this ).find( "span" ).css( "display", "inline" );	
   	
   	 if ( $("#room1").val()){
	   	 
   		$("#room1info").text("");
     } else {
    	 $("#room1info").text("Please Select RoomNo");
     }
   	  });
	$("#room2").focusout(function(){
   		$( this ).find( "span" ).css( "display", "inline" );	
   	
   	 if ( $("#room2").val()){
	   	 
   		$("#room2info").text("");
     } else {
    	 $("#room2info").text("Please select RoomNo");
     }
   	  });

    
   });


  function validateForm() {
	  
	 var patientId = document.forms["myform"]["patientId"].value; 
	 var pFirstname = document.forms["myform"]["pFirstname"].value;
	 var pLastname=  document.forms["myform"]["pLastname"].value;
	 var address = document.forms["myform"]["address"].value;
	 var nominee = document.forms["myform"]["nominee"].value;	
	 var mobileNumber = document.forms["myform"]["mobileNumber"].value;
	 var alternateMobile = document.forms["myform"]["alternateMobile"].value;	 	 
	 var email = document.forms["myform"]["email"].value;
	 var reference = document.forms["myform"]["reference"].value;
	 var modifiedBy = document.forms["myform"]["modifiedBy"].value;
	 var serviceType = document.forms["myform"]["serviceType"].value;
	 
	 var roomNo = document.forms["myform"]["roomNo"].value; //semi private
	 var room1 = document.forms["myform"]["room1"].value;// special
	 var room2 = document.forms["myform"]["room2"].value;//delux
	
	 
	  if (patientId == null || patientId.trim() == "" || patientId.match('^[a-zA-Z0-9_.-]*$') == null) {
		    document.getElementById('patientIdinfo').style.display = 'inline';	
	    	 $("#patientIdinfo").text("Please Select PatientId");	
	    	 return false;
		    	 }
	
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
	    if (address == null || address.trim() == "" || address.match(/^[a-zA-Z0-9-\-\,.;:@#$%^&*/_!  ]{3,100}$/)==null) {
	    	document.getElementById('addressinfo').style.display = 'inline';
	    	 $("#addressinfo").text("Please Enter Address");
	    	 return false;
	    }
	    if (nominee == null || nominee == "") {
	    	document.getElementById('nomineeinfo').style.display = 'inline';
	    	 $("#nomineeinfo").text("Please Select Nominee");
	    	 return false;
	    }
	   
	    if (mobileNumber == null || mobileNumber.trim() == "" || mobileNumber.match(/^\d{10,16}$/)==null)  {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("please enter MobileNumber");
	    	 return false;
	    }
	    if (alternateMobile == null || alternateMobile.trim() == "" || alternateMobile.match(/^\d{10,16}$/)==null) {
	    	document.getElementById('alternateMobileinfo').style.display = 'inline';
	    	 $("#alternateMobileinfo").text("Please Enter AlternateNumber");
	    	 return false;
	    }
	   
	    if (email == null || email == "") {
	    	document.getElementById('emailinfo').style.display = 'inline';
	    	 $("#emailinfo").text("Please Enter Email");
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
	    if (serviceType == null || serviceType == "") {
	    	document.getElementById('serviceTypeinfo').style.display = 'inline';
	    	 $("#serviceTypeinfo").text("Please Enter ServiceType");
	    	 return false;
	    }
	 
	    if (roomNo=="SemiPrivate" && roomNo == "select" && roomNo==null ) {
	    	
	    	    document.getElementById('roomNoinfo').style.display = 'inline';
	    	    $("#roomNoinfo").text("Please Enter RoomNo");
	    	    return false;
	    }
	 
		 if (room1=="Special" && room1=="select" && room1==null ) {
			
            	document.getElementById('room1info').style.display = 'inline';
		    	 $("#room1info").text("Please Enter RoomNo");
		    	 return false; 
		 }
	
	     if (room2 =="Delux" && room2 =="select" && room2 == null) {
	    	
		         document.getElementById('room2info').style.display = 'inline';
		         $("#room2info").text("Please Enter RoomNo");
		         return false;
	     }
	     else{	    	 
			return true;
		    }	
  }