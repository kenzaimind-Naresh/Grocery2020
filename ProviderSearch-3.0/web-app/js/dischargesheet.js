
$(document).ready(function(){
	
	 $("#date").focusout(function(){
		// alert(date);
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#date").val().trim()) {
		   	 
	   		$("#dateinfo").text("");
	     } else {
	    	 $("#dateinfo").text("Please Enter Valid Date");
	     }
	   	  });
	   
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
	 $("#test3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate").val().trim().match('^[0-9]+$' )!=null && $("#rate").val().trim()!=""){
		   	 
	   		$("#rateinfo").text("");
	     } else {
	    	 $("#rateinfo").text("Please Enter Rate");
	     }
	   	  });
	$("#quantity").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#quantity").val().trim().match('^[0-9]+$' )!=null && $("#quantity").val().trim()!="") {
		   	 
	   		$("#quantityinfo").text("");
	     } else {
	    	 $("#quantityinfo").text("Please Enter Quantity");
	     }
	   	  });
	 $("#test6").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total").val().trim().match('^[0-9]+$' )!=null && $("#total").val().trim()!="") {
		   	 
	   		$("#totalinfo").text("");
	     } else {
	    	 $("#totalinfo").text("Please Enter Total");
	     }
	   	  });
	
	 $("#date2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#date2").val().trim()) {
		   	 
	   		$("#date2info").text("");
	     } else {
	    	 $("#date2info").text("Please Enter Valid Date");
	     }
	   	  });
	 $("#serviceName").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	 if ( $("#serviceName").val()){
		   	 
	   		$("#serviceNameinfo").text("");
	     } else {
	    	 $("#serviceNameinfo").text("Please Select TestName");
	     }
	   	  });
	
	$("#test11").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#modifiedBy").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#modifiedBy").val().trim()!=""){
		   	 
	   		$("#modifiedByinfo").text("");
	     } else {
	    	 $("#modifiedByinfo").text("Please Enter ModifiedBy");
	     }
	   	  });
	
	 $("#rate2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate2").val().trim().match('^[0-9]+$' )!=null && $("#rate2").val().trim()!=""){
		   	 
	   		$("#rate2info").text("");
	     } else {
	    	 $("#rate2info").text("Please Enter Rate");
	     }
	   	  });
	$("#quantity2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#quantity2").val().trim().match('^[0-9]+$' )!=null && $("#quantity2").val().trim()!="") {
		   	 
	   		$("#quantity2info").text("");
	     } else {
	    	 $("#quantity2info").text("Please Enter Quantity");
	     }
	   	  });
	 $("#total2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total2").val().trim().match('^[0-9]+$' )!=null && $("#total2").val().trim()!="") {
		   	 
	   		$("#total2info").text("");
	     } else {
	    	 $("#total2info").text("Please Enter Total");
	     }
	   	  });
	 $("#date3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#date3").val().trim()) {
		   	 
	   		$("#date3info").text("");
	     } else {
	    	 $("#date3info").text("Please Enter Valid Date");
	     }
	   	  });
	 $("#serviceName2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#serviceName2").val()){
		   	 
	   		$("#serviceName2info").text("");
	     } else {
	    	 $("#serviceName2info").text("Please Select TestName");
	     }
	   	  });
	 $("#rate3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate3").val().trim().match('^[0-9]+$' )!=null && $("#rate3").val().trim()!=""){
		   	 
	   		$("#rate3info").text("");
	     } else {
	    	 $("#rate3info").text("Please Enter Rate");
	     }
	   	  });
	 $("#quantity3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#quantity3").val().trim().match('^[0-9]+$' )!=null && $("#quantity3").val().trim()!="") {
		   	 
	   		$("#quantity3info").text("");
	     } else {
	    	 $("#quantity3info").text("Please Enter Quantity");
	     }
	   	  });
	 $("#total3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#total3").val().trim().match('^[0-9]+$' )!=null && $("#total3").val().trim()!="") {
		   	 
	   		$("#total3info").text("");
	     } else {
	    	 $("#total3info").text("Please Enter Total");
	     }
	   	  });
	 $("#date4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#date4").val().trim()) {
		   	 
	   		$("#date4info").text("");
	     } else {
	    	 $("#date4info").text("Please Enter Valid Date");
	     }
	   	  });
	 $("#serviceName3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#serviceName3").val()){
		   	 
	   		$("#serviceName3info").text("");
	     } else {
	    	 $("#serviceName3info").text("Please Select TestName");
	     }
	   	  });
	 $("#rate4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate4").val().trim().match('^[0-9]+$' )!=null && $("#rate4").val().trim()!=""){
		   	 
	   		$("#rate4info").text("");
	     } else {
	    	 $("#rate4info").text("Please Enter Rate");
	     }
	   	  });
 	$("#quantity4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#quantity4").val().trim().match('^[0-9]+$' )!=null && $("#quantity4").val().trim()!="") {
		   	 
	   		$("#quantity4info").text("");
	     } else {
	    	 $("#quantity4info").text("Please Enter Quantity");
	     }
	   	  });
	 $("#total4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#total4").val().trim().match('^[0-9]+$' )!=null && $("#total4").val().trim()!="") {
		   	 
	   		$("#total4info").text("");
	     } else {
	    	 $("#total4info").text("Please Enter Total");
	     }
	   	  });
	 $("#date5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#date5").val().trim()) {
		   	 
	   		$("#date5info").text("");
	     } else {
	    	 $("#date5info").text("Please Enter Valid Date");
	     }
	   	  });
	 $("#serviceName4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#serviceName4").val()){
		   	 
	   		$("#serviceName4info").text("");
	     } else {
	    	 $("#serviceName4info").text("Please Select TestName");
	     }
	   	  });
	 $("#rate5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate5").val().trim().match('^[0-9]+$' )!=null && $("#rate5").val().trim()!=""){
		   	 
	   		$("#rate5info").text("");
	     } else {
	    	 $("#rate5info").text("Please Enter Rate");
	     }
	   	  });
	$("#quantity5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#quantity5").val().trim().match('^[0-9]+$' )!=null && $("#quantity5").val().trim()!="") {
		   	 
	   		$("#quantity5info").text("");
	     } else {
	    	 $("#quantity5info").text("Please Enter Quantity");
	     }
	   	  });
	 $("#total5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#total5").val().trim().match('^[0-9]+$' )!=null && $("#total5").val().trim()!="") {
		   	 
	   		$("#total5info").text("");
	     } else {
	    	 $("#total5info").text("Please Enter Total");
	     }
	   	  });
	 $("#serviceName5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#serviceName5").val()){
		   	 
	   		$("#serviceName5info").text("");
	     } else {
	    	 $("#serviceName5info").text("Please Select TestName");
	     }
	   	  });


	
    
   });


   function validateForm() {
	 var date = document.forms["myform"]["date"].value;
	 var patientId = document.forms["myform"]["patientId"].value;
	 var pFirstname = document.forms["myform"]["pFirstname"].value;
	 var pLastname=  document.forms["myform"]["pLastname"].value;
	 var rate = document.forms["myform"]["rate"].value;
	 var quantity = document.forms["myform"]["quantity"].value;
	 var total = document.forms["myform"]["total"].value;
	 var date2 = document.forms["myform"]["date2"].value;
	 var serviceName = document.forms["myform"]["serviceName"].value;
	 var modifiedBy = document.forms["myform"]["modifiedBy"].value;
	 var rate2 = document.forms["myform"]["rate2"].value;
	 var quantity2 = document.forms["myform"]["quantity2"].value;
	 var total2 = document.forms["myform"]["total2"].value;
	 
	 var date3 = document.forms["myform"]["date3"].value;
	 var serviceName2 = document.forms["myform"]["serviceName2"].value; 
	 var rate3 = document.forms["myform"]["rate3"].value;
	 var quantity3 = document.forms["myform"]["quantity3"].value;
	 var total3 = document.forms["myform"]["total3"].value;
	 
	 var date4 = document.forms["myform"]["date4"].value;
	 var serviceName3 = document.forms["myform"]["serviceName3"].value;
	 var rate4 = document.forms["myform"]["rate4"].value;
	 var quantity4 = document.forms["myform"]["quantity4"].value;
	 var total4 = document.forms["myform"]["total4"].value;
	 
	 var date5 = document.forms["myform"]["date5"].value;
	 var serviceName4 = document.forms["myform"]["serviceName4"].value;
	 var rate5 = document.forms["myform"]["rate5"].value;
	 var quantity5 = document.forms["myform"]["quantity5"].value;
	 var total5 = document.forms["myform"]["total5"].value;
	 var serviceName5 = document.forms["myform"]["serviceName5"].value;


	 
	 if (date == null || date == "") {
		    document.getElementById('dateinfo').style.display = 'inline';	
	    	 $("#dateinfo").text("Please Enter Date");	
	    	 return false;
		    	 }
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
	    if (rate == null || rate.trim() == "" || rate.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rateinfo').style.display = 'inline';
	    	 $("#rateinfo").text("Please Enter Rate");
	    	 return false;
	    }
	   if (quantity == null || quantity.trim() == "" || quantity.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantityinfo').style.display = 'inline';
	    	 $("#quantityinfo").text("Please Enter Quantity");
	    	 return false;
	    }
	   
	    if (total == null || total.trim() == "" || total.match('^[0-9]+$' ) == null) {
	    	document.getElementById('totalinfo').style.display = 'inline';
	    	 $("#totalinfo").text("Please Enter Total");
	    	 return false;
	    }
	    if (date2 == null || date2 == "") {
		    document.getElementById('date2info').style.display = 'inline';	
	    	 $("#date2info").text("Please Enter Date");	
	    	 
		    	 }
	    if (serviceName == null || serviceName.trim() == "" || serviceName.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('serviceNameinfo').style.display = 'inline';
	    	 $("#serviceNameinfo").text("Please Select TestName");
	    	 
	    }
	    if (rate2 == null || rate2.trim() == "" || rate2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate2info').style.display = 'inline';
	    	 $("#rate2info").text("Please Enter Rate");
	    	 
	    }
	    if (quantity2 == null || quantity2.trim() == "" || quantity2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity2info').style.display = 'inline';
	    	 $("#quantity2info").text("Please Enter Quantity");
	    	
	    }
	   
	    if (total2 == null || total2.trim() == "" || total2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total2info').style.display = 'inline';
	    	 $("#total2info").text("Please Enter total");
	    	
	    }
	    if (date3 == null || date3 == "") {
		    document.getElementById('date3info').style.display = 'inline';	
	    	 $("#date3info").text("Please Enter Date");	
	    	 
		    	 }
	    if (serviceName2 == null || serviceName2.trim() == "" || serviceName2.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('serviceName2info').style.display = 'inline';
	    	 $("#serviceName2info").text("Please Select TestName");
	    	
	    }
	    
	    if (rate3 == null || rate3.trim() == "" || rate3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate3info').style.display = 'inline';
	    	 $("#rate3info").text("Please Enter Rate");
	    	 
	    }
	    if (quantity3 == null || quantity3.trim() == "" || quantity3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity3info').style.display = 'inline';
	    	 $("#quantity3info").text("Please Select Quantity");
	    	
	    }
	   
	    if (total3 == null || total3.trim() == "" || total3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total3info').style.display = 'inline';
	    	 $("#total3info").text("Please Enter Total");
	    	 
	    }
	    if (date4 == null || date4 == "") {
		    document.getElementById('date4info').style.display = 'inline';	
	    	 $("#date4info").text("Please Enter Date");	
	    	 
		    	 }
	    if (serviceName3 == null || serviceName3.trim() == "" || serviceName3.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('serviceName3info').style.display = 'inline';
	    	 $("#serviceName3info").text("Please Select TestName");
	    	
	    }
	    
	    if (rate4 == null || rate4.trim() == "" || rate4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate4info').style.display = 'inline';
	    	 $("#rate4info").text("Please Enter Rate");
	    	 
	    }
	    if (quantity4 == null || quantity4.trim() == "" || quantity4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity4info').style.display = 'inline';
	    	 $("#quantity4info").text("Please Enter Quantity");
	    	 
	    }
	   
	    if (total4 == null || total4.trim() == "" || total4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total4info').style.display = 'inline';
	    	 $("#total4info").text("Please Enter total");
	    	
	    }
	    if (date5 == null || date5 == "") {
		    document.getElementById('date5info').style.display = 'inline';	
	    	 $("#date5info").text("Please Enter Date");	
	    	
		    	 }
	    if (serviceName4 == null || serviceName4.trim() == "" || serviceName4.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('serviceName4info').style.display = 'inline';
	    	 $("#serviceName4info").text("Please Select TestName");
	    	
	    }
	    
	    if (rate5 == null || rate5.trim() == "" || rate5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate5info').style.display = 'inline';
	    	 $("#rate5info").text("Please Enter Rate");
	    	 
	    }
	    if (quantity5 == null || quantity5.trim() == "" || quantity5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity5info').style.display = 'inline';
	    	 $("#quantity5info").text("Please Select Quantity");
	    	
	    }
	   
	    if (total5 == null || total5.trim() == "" || total5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total5info').style.display = 'inline';
	    	 $("#total5info").text("Please Enter Total");
	    	
	    }
	    if (serviceName5 == null || serviceName5.trim() == "" || serviceName5.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('serviceName5info').style.display = 'inline';
	    	 $("#serviceName5info").text("Please Select TestName");
	    	
	    }
	    
	    if (modifiedBy == null || modifiedBy.trim() == "" || modifiedBy.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('modifiedByinfo').style.display = 'inline';
	    	 $("#modifiedByinfo").text("Please Enter ModifiedBy");	    	
	    	 return false;
	    }else{
			return true;
		    }
	    
	  
  }
   
   
  
   
   
   