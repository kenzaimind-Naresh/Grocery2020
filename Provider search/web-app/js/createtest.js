
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
	/* $("#icdCode").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode").val().trim().match('^[a-zA-Z0-9]*$' )!=null && $("#icdCode").val().trim()!=""){
		   	 
	   		$("#icdCodeinfo").text("");
	     } else {
	    	 $("#icdCodeinfo").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#t1").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		//var drugdetails=$('#drugdetails').val()
	   	 if ( $("#t1").val()){
		   	 
	   		$("#testNameinfo").text("");
	     } else {
	    	 $("#testNameinfo").text("Please Select TestName");
	     }
	   	  });
	 $("#test3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate1").val().trim().match('^[0-9]+$' )!=null && $("#rate1").val().trim()!=""){
		   	 
	   		$("#rateinfo").text("");
	     } else {
	    	 $("#rateinfo").text("Please Enter Rate");
	     }
	   	  });
/*	$("#test5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#quantity").val().trim().match('^[0-9]+$' )!=null && $("#quantity").val().trim()!="") {
		   	 
	   		$("#quantityinfo").text("");
	     } else {
	    	 $("#quantityinfo").text("Please Enter Quantity");
	     }
	   	  });*/
	 $("#test6").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total1").val().trim().match('^[0-9]+$' )!=null && $("#total1").val().trim()!="") {
		   	 
	   		$("#totalinfo").text("");
	     } else {
	    	 $("#totalinfo").text("Please Enter Total");
	     }
	   	  });
	
	 $("#test7").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#tax").val().trim().match('^(-?0[.]\\d+)$|^(-?[1-9]+\\d*([.]\\d+)?)$|^0$' )!=null && $("#tax").val().trim()!="") {
		   	 
	   		$("#taxinfo").text("");
	     } else {
	    	 $("#taxinfo").text("Please Enter Tax");
	     }
	   	  });
	 $("#test8").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#grandTotal").val().trim().match('^(-?0[.]\\d+)$|^(-?[1-9]+\\d*([.]\\d+)?)$|^0$' )!=null && $("#grandTotal").val().trim()!="") {
		   	 
	   		$("#grandTotalinfo").text("");
	     } else {
	    	 $("#grandTotalinfo").text("Please Enter GrandTotal");
	     }
	   	  });
	
	 $("#test9").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#pMode").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#pMode").val().trim()!="") {
		   	 
	   		$("#pModeinfo").text("");
	     } else {
	    	 $("#pModeinfo").text("Please Select Mode");
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
	/* $("#icdCode2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode2").val().trim() && $("#icdCode2").val().trim()!=""){
		   	 
	   		$("#icdCode2info").text("");
	     } else {
	    	 $("#icdCode2info").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#testName2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#testName2").val()){
		   	 
	   		$("#testName2info").text("");
	     } else {
	    	 $("#testName2info").text("Please Select TestName");
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

	 $("#total2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total2").val().trim().match('^[0-9]+$' )!=null && $("#total2").val().trim()!="") {
		   	 
	   		$("#total2info").text("");
	     } else {
	    	 $("#total2info").text("Please Enter Total");
	     }
	   	  });
	/*$("#icdCode3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode3").val().trim() && $("#icdCode3").val().trim()!=""){
		   	 
	   		$("#icdCode3info").text("");
	     } else {
	    	 $("#icdCode3info").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#testName3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#testName3").val()){
		   	 
	   		$("#testName3info").text("");
	     } else {
	    	 $("#testName3info").text("Please Select TestName");
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
	
	 $("#total3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#total3").val().trim().match('^[0-9]+$' )!=null && $("#total3").val().trim()!="") {
		   	 
	   		$("#total3info").text("");
	     } else {
	    	 $("#total3info").text("Please Enter Total");
	     }
	   	  });
	 /*$("#icdCode4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode4").val().trim() && $("#icdCode4").val().trim()!=""){
		   	 
	   		$("#icdCode4info").text("");
	     } else {
	    	 $("#icdCode4info").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#testName4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#testName4").val()){
		   	 
	   		$("#testName4info").text("");
	     } else {
	    	 $("#testName4info").text("Please Select TestName");
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
	/* $("#icdCode5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode5").val().trim() && $("#icdCode5").val().trim()!=""){
		   	 
	   		$("#icdCode5info").text("");
	     } else {
	    	 $("#icdCode5info").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#testName5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#testName5").val()){
		   	 
	   		$("#testName5info").text("");
	     } else {
	    	 $("#testName5info").text("Please Select TestName");
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

	 $("#total5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#total5").val().trim().match('^[0-9]+$' )!=null && $("#total5").val().trim()!="") {
		   	 
	   		$("#total5info").text("");
	     } else {
	    	 $("#total5info").text("Please Enter Total");
	     }
	   	  });
	
	/* $("#icdCode6").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode6").val().trim() && $("#icdCode6").val().trim()!=""){
		   	 
	   		$("#icdCode6info").text("");
	     } else {
	    	 $("#icdCode6info").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#testName6").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#testName6").val()){
		   	 
	   		$("#testName6info").text("");
	     } else {
	    	 $("#testName6info").text("Please Select TestName");
	     }
	   	  });
	
	 $("#rate6").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate6").val().trim().match('^[0-9]+$' )!=null && $("#rate6").val().trim()!=""){
		   	 
	   		$("#rate6info").text("");
	     } else {
	    	 $("#rate6info").text("Please Enter Rate");
	     }
	   	  });

	 $("#total6").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total6").val().trim().match('^[0-9]+$' )!=null && $("#total6").val().trim()!="") {
		   	 
	   		$("#total6info").text("");
	     } else {
	    	 $("#total6info").text("Please Enter Total");
	     }
	   	  });
	/* $("#icdCode7").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode7").val().trim() && $("#icdCode7").val().trim()!=""){
		   	 
	   		$("#icdCode7info").text("");
	     } else {
	    	 $("#icdCode7info").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#testName7").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#testName7").val()){
		   	 
	   		$("#testName7info").text("");
	     } else {
	    	 $("#testName7info").text("Please Select TestName");
	     }
	   	  });
	
	 $("#rate7").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate7").val().trim().match('^[0-9]+$' )!=null && $("#rate7").val().trim()!=""){
		   	 
	   		$("#rate7info").text("");
	     } else {
	    	 $("#rate7info").text("Please Enter Rate");
	     }
	   	  });

	 $("#total7").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total7").val().trim().match('^[0-9]+$' )!=null && $("#total7").val().trim()!="") {
		   	 
	   		$("#total7info").text("");
	     } else {
	    	 $("#total7info").text("Please Enter Total");
	     }
	   	  });

	/* $("#icdCode8").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode8").val().trim() && $("#icdCode8").val().trim()!=""){
		   	 
	   		$("#icdCode8info").text("");
	     } else {
	    	 $("#icdCode8info").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#testName8").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#testName8").val()){
		   	 
	   		$("#testName8info").text("");
	     } else {
	    	 $("#testName8info").text("Please Select TestName");
	     }
	   	  });
	
	 $("#rate8").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate8").val().trim().match('^[0-9]+$' )!=null && $("#rate8").val().trim()!=""){
		   	 
	   		$("#rate8info").text("");
	     } else {
	    	 $("#rate8info").text("Please Enter Rate");
	     }
	   	  });

	 $("#total8").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total8").val().trim().match('^[0-9]+$' )!=null && $("#total8").val().trim()!="") {
		   	 
	   		$("#total8info").text("");
	     } else {
	    	 $("#total8info").text("Please Enter Total");
	     }
	   	  });
	/* $("#icdCode9").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode9").val().trim() && $("#icdCode9").val().trim()!=""){
		   	 
	   		$("#icdCode9info").text("");
	     } else {
	    	 $("#icdCode9info").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#testName9").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#testName9").val()){
		   	 
	   		$("#testName9info").text("");
	     } else {
	    	 $("#testName9info").text("Please Select TestName");
	     }
	   	  });
	
	 $("#rate9").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate9").val().trim().match('^[0-9]+$' )!=null && $("#rate9").val().trim()!=""){
		   	 
	   		$("#rate9info").text("");
	     } else {
	    	 $("#rate2info").text("Please Enter Rate");
	     }
	   	  });

	 $("#total9").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total9").val().trim().match('^[0-9]+$' )!=null && $("#total9").val().trim()!="") {
		   	 
	   		$("#total9info").text("");
	     } else {
	    	 $("#total9info").text("Please Enter Total");
	     }
	   	  });
      
	/* $("#icdCode0").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#icdCode0").val().trim() && $("#icdCode0").val().trim()!=""){
		   	 
	   		$("#icdCode0info").text("");
	     } else {
	    	 $("#icdCode0info").text("Please Enter IcdCode");
	     }
	   	  });*/
	 $("#testName0").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#testName0").val()){
		   	 
	   		$("#testName0info").text("");
	     } else {
	    	 $("#testName0info").text("Please Select TestName");
	     }
	   	  });
	
	 $("#rate0").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#rate0").val().trim().match('^[0-9]+$' )!=null && $("#rate0").val().trim()!=""){
		   	 
	   		$("#rate0info").text("");
	     } else {
	    	 $("#rate0info").text("Please Enter Rate");
	     }
	   	  });

	 $("#total0").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total0").val().trim().match('^[0-9]+$' )!=null && $("#total0").val().trim()!="") {
		   	 
	   		$("#total0info").text("");
	     } else {
	    	 $("#total0info").text("Please Enter Total");
	     }
	   	  });

	
    
   });


   function validateForm() {
	   var patientId = document.getElementById("patientId").value
	 var pFirstname = document.getElementById("pFirstname").value
	 var pLastname=  document.getElementById("pLastname").value
	 var icdCode = document.getElementById("icdCode").value
	 var testName = document.getElementById("t1").value;

	 alert(testName);
	 var tax = document.forms["myform"]["tax"].value;
	 var grandTotal = document.forms["myform"]["grandTotal"].value;
	 var pMode = document.forms["myform"]["pMode"].value;
	  var modifiedBy = document.forms["myform"]["modifiedBy"].value;
	  
	//  var icdCode2 = document.forms["myform"]["icdCode2"].value;
	  var testName2 = document.forms["myform"]["testName2"].value;
	 var rate2 = document.forms["myform"]["rate2"].value;
	// var quantity2 = document.forms["myform"]["quantity2"].value;
	 var total2 = document.forms["myform"]["total2"].value;
	
	
	// var icdCode3 = document.forms["myform"]["icdCode3"].value;
	 var testName3 = document.forms["myform"]["testName3"].value;
	 var rate3 = document.forms["myform"]["rate3"].value;
	// var quantity3 = document.forms["myform"]["quantity3"].value;
	 var total3 = document.forms["myform"]["total3"].value;
	
	
	// var icdCode4 = document.forms["myform"]["icdCode4"].value;
	 var testName4 = document.forms["myform"]["testName4"].value;
	 var rate4 = document.forms["myform"]["rate4"].value;
	// var quantity4 = document.forms["myform"]["quantity4"].value;
	 var total4 = document.forms["myform"]["total4"].value;
	 
	 
	// var icdCode5 = document.forms["myform"]["icdCode5"].value;
	 var testName5 = document.forms["myform"]["testName5"].value;
	 var rate5 = document.forms["myform"]["rate5"].value;
	// var quantity5 = document.forms["myform"]["quantity5"].value;
	 var total5 = document.forms["myform"]["total5"].value;
	 
	// var icdCode6 = document.forms["myform"]["icdCode6"].value;
	 var testName6 = document.forms["myform"]["testName6"].value;
	 var rate6 = document.forms["myform"]["rate6"].value;
	// var quantity5 = document.forms["myform"]["quantity5"].value;
	 var total6 = document.forms["myform"]["total6"].value;
	 
	 //var icdCode7 = document.forms["myform"]["icdCode7"].value;
	 var testName7 = document.forms["myform"]["testName7"].value;
	 var rate7 = document.forms["myform"]["rate7"].value;
	// var quantity5 = document.forms["myform"]["quantity5"].value;
	 var total7 = document.forms["myform"]["total7"].value;
	 
	// var icdCode8 = document.forms["myform"]["icdCode8"].value;
	 var testName8 = document.forms["myform"]["testName8"].value;
	 var rate8 = document.forms["myform"]["rate8"].value;
	// var quantity5 = document.forms["myform"]["quantity5"].value;
	 var total8 = document.forms["myform"]["total8"].value;
	 
	// var icdCode9 = document.forms["myform"]["icdCode9"].value;
	 var testName9 = document.forms["myform"]["testName9"].value;
	 var rate9 = document.forms["myform"]["rate9"].value;
	// var quantity5 = document.forms["myform"]["quantity5"].value;
	 var total9 = document.forms["myform"]["total9"].value;
	 
	 //var icdCode0 = document.forms["myform"]["icdCode0"].value;
	 var testName0 = document.forms["myform"]["testName0"].value;
	 var rate0 = document.forms["myform"]["rate0"].value;
	// var quantity5 = document.forms["myform"]["quantity5"].value;
	 var total0 = document.forms["myform"]["total0"].value;
	 
	 


	 
	/* 
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
	  if (icdCode == null || icdCode.trim() == "") {
	    	document.getElementById('icdCodeinfo').style.display = 'inline';
	    	 $("#icdCodeinfo").text("Please Select IcdCode");
	    	 return false;
	    }
	    if (testName == null || testName.trim() == "" || testName.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testNameinfo').style.display = 'inline';
	    	 $("#testNameinfo").text("Please Select TestName");
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
	    if (tax == null || tax.trim() == "" || tax.match('^(-?0[.]\\d+)$|^(-?[1-9]+\\d*([.]\\d+)?)$|^0$' ) == null) {
	    	document.getElementById('taxinfo').style.display = 'inline';
	    	 $("#taxinfo").text("Please Enter Tax");
	    	 return false;
	    }
	    if (grandTotal == null || grandTotal.trim() == "" || grandTotal.match('^(-?0[.]\\d+)$|^(-?[1-9]+\\d*([.]\\d+)?)$|^0$' ) == null) {
	    	document.getElementById('grandTotalinfo').style.display = 'inline';
	    	 $("#grandTotalinfo").text("Please Enter GrandTotal");
	    	 return false;
	    }
	    if (pMode == null || pMode == "") {
	    	document.getElementById('pModeinfo').style.display = 'inline';
	    	 $("#pModeinfo").text("Please Select Mode");
	    	 return false;
	    }
	    if (icdCode2 == null || icdCode2.trim() == "" ) {
	    	document.getElementById('icdCode2info').style.display = 'inline';
	    	 $("#icdCode2info").text("Please Select IcdCode");
	    	 return false;
	    }
	   
	    
	    if (testName2 == null || testName2.trim() == "" || testName2.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testName2info').style.display = 'inline';
	    	 $("#testName2info").text("Please Select TestName");
	    	 return false;
	    }
	   
	    if (rate2 == null || rate2.trim() == "" || rate2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate2info').style.display = 'inline';
	    	 $("#rate2info").text("Please Enter Rate");
	    	 return false;
	    }
	    if (quantity2 == null || quantity2.trim() == "" || quantity2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity2info').style.display = 'inline';
	    	 $("#quantity2info").text("Please Enter Quantity");
	    	 
	    }
	   
	    if (total2 == null || total2.trim() == "" || total2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total2info').style.display = 'inline';
	    	 $("#total2info").text("Please Enter total");
	    	 return false;
	    }
	   
	    if (icdCode3 == null || icdCode3.trim() == "") {
	    	document.getElementById('icdCode3info').style.display = 'inline';
	    	 $("#icdCode3info").text("Please Select IcdCode");
	    	 return false;
	    }
	    
	    if (rate3 == null || rate3.trim() == "" || rate3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate3info').style.display = 'inline';
	    	 $("#rate3info").text("Please Enter Rate");
	    	 return false;
	    }
	    if (testName3 == null || testName3.trim() == "" || testName3.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testName3info').style.display = 'inline';
	    	 $("#testName3info").text("Please Select TestName");
	    	 return false;
	    }
	    if (quantity3 == null || quantity3.trim() == "" || quantity3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity3info').style.display = 'inline';
	    	 $("#quantity3info").text("Please Select Quantity");
	    	 
	    }
	   
	    if (total3 == null || total3.trim() == "" || total3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total3info').style.display = 'inline';
	    	 $("#total3info").text("Please Enter Total");
	    	 return false;
	    }
	    if (icdCode4 == null || icdCode4.trim() == "") {
	    	document.getElementById('icdCode4info').style.display = 'inline';
	    	 $("#icdCode4info").text("Please Select IcdCode");
	    	 return false;
	    }
	    if (testName4 == null || testName4.trim() == "" || testName4.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testName4info').style.display = 'inline';
	    	 $("#testName4info").text("Please Select TestName");
	    	 return false;
	    }
	    
	    if (rate4 == null || rate4.trim() == "" || rate4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate4info').style.display = 'inline';
	    	 $("#rate4info").text("Please Enter Rate");
	    	 return false;
	    }
	    if (quantity4 == null || quantity4.trim() == "" || quantity4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity4info').style.display = 'inline';
	    	 $("#quantity4info").text("Please Enter Quantity");
	    	 
	    }
	   
	    if (total4 == null || total4.trim() == "" || total4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total4info').style.display = 'inline';
	    	 $("#total4info").text("Please Enter total");
	    	 return false;
	    }
	    if (icdCode5 == null || icdCode5.trim() == "") {
	    	document.getElementById('icdCode5info').style.display = 'inline';
	    	 $("#icdCode5info").text("Please Select IcdCode");
	    	 return false;
	    }
	    if (testName5 == null || testName5.trim() == "" || testName5.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testName5info').style.display = 'inline';
	    	 $("#testName5info").text("Please Select TestName");
	    	 return false;
	    }
	    
	    if (rate5 == null || rate5.trim() == "" || rate5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate5info').style.display = 'inline';
	    	 $("#rate5info").text("Please Enter Rate");
	    	 return false;
	    }
	   
	    if (quantity5 == null || quantity5.trim() == "" || quantity5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity5info').style.display = 'inline';
	    	 $("#quantity5info").text("Please Select Quantity");
	    	 
	    }
	   
	    if (total5 == null || total5.trim() == "" || total5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total5info').style.display = 'inline';
	    	 $("#total5info").text("Please Enter Total");
	    	 return false; 
	    }
	    if (icdCode6 == null || icdCode6.trim() == "") {
	    	document.getElementById('icdCode6info').style.display = 'inline';
	    	 $("#icdCode6info").text("Please Select IcdCode");
	    	 return false;
	    }
	    if (testName6 == null || testName6.trim() == "" || testName6.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testName6info').style.display = 'inline';
	    	 $("#testName6info").text("Please Select TestName");
	    	 return false;
	    }
	    
	    if (rate6 == null || rate6.trim() == "" || rate6.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate6info').style.display = 'inline';
	    	 $("#rate6info").text("Please Enter Rate");
	    	 return false;
	    }
	   
	    if (quantity5 == null || quantity5.trim() == "" || quantity5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity5info').style.display = 'inline';
	    	 $("#quantity5info").text("Please Select Quantity");
	    	 
	    }
	   
	    if (total6 == null || total6.trim() == "" || total6.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total6info').style.display = 'inline';
	    	 $("#total6info").text("Please Enter Total");
	    	 return false; 
	    }
	    
	    if (icdCode7 == null || icdCode7.trim() == "") {
	    	document.getElementById('icdCode7info').style.display = 'inline';
	    	 $("#icdCode7info").text("Please Select IcdCode");
	    	 return false;
	    }
	    if (testName7 == null || testName7.trim() == "" || testName7.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testName7info').style.display = 'inline';
	    	 $("#testName7info").text("Please Select TestName");
	    	 return false;
	    }
	    
	    if (rate7 == null || rate7.trim() == "" || rate7.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate7info').style.display = 'inline';
	    	 $("#rate7info").text("Please Enter Rate");
	    	 return false;
	    }
	   
	    if (quantity5 == null || quantity5.trim() == "" || quantity5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity5info').style.display = 'inline';
	    	 $("#quantity5info").text("Please Select Quantity");
	    	 
	    }
	   
	    if (total7 == null || total7.trim() == "" || total7.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total7info').style.display = 'inline';
	    	 $("#total7info").text("Please Enter Total");
	    	 return false; 
	    }
	    if (icdCode8 == null || icdCode8.trim() == "") {
	    	document.getElementById('icdCode8info').style.display = 'inline';
	    	 $("#icdCode8info").text("Please Select IcdCode");
	    	 return false;
	    }
	    if (testName8 == null || testName8.trim() == "" || testName8.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testName8info').style.display = 'inline';
	    	 $("#testName8info").text("Please Select TestName");
	    	 return false;
	    }
	    
	    if (rate8 == null || rate8.trim() == "" || rate8.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate8info').style.display = 'inline';
	    	 $("#rate8info").text("Please Enter Rate");
	    	 return false;
	    }
	   
	    if (quantity5 == null || quantity5.trim() == "" || quantity5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity5info').style.display = 'inline';
	    	 $("#quantity5info").text("Please Select Quantity");
	    	 
	    }
	   
	    if (total8 == null || total8.trim() == "" || total8.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total8info').style.display = 'inline';
	    	 $("#total8info").text("Please Enter Total");
	    	 return false; 
	    }
	    if (icdCode9 == null || icdCode9.trim() == "") {
	    	document.getElementById('icdCode9info').style.display = 'inline';
	    	 $("#icdCode9info").text("Please Select IcdCode");
	    	 return false;
	    }
	    if (testName9 == null || testName9.trim() == "" || testName9.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testName9info').style.display = 'inline';
	    	 $("#testName9info").text("Please Select TestName");
	    	 return false;
	    }
	    
	    if (rate9 == null || rate9.trim() == "" || rate9.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate9info').style.display = 'inline';
	    	 $("#rate9info").text("Please Enter Rate");
	    	 return false;
	    }
	   
	    if (quantity5 == null || quantity5.trim() == "" || quantity5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity5info').style.display = 'inline';
	    	 $("#quantity5info").text("Please Select Quantity");
	    	 
	    }
	   
	    if (total9 == null || total9.trim() == "" || total9.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total9info').style.display = 'inline';
	    	 $("#total9info").text("Please Enter Total");
	    	 return false; 
	    }
	    if (icdCode0 == null || icdCode0.trim() == "") {
	    	document.getElementById('icdCode0info').style.display = 'inline';
	    	 $("#icdCode0info").text("Please Select IcdCode");
	    	 return false;
	    }
	    if (testName0 == null || testName0.trim() == "" || testName0.match('^[a-zA-Z0-9_ ]*$') == null) {
	    	document.getElementById('testName0info').style.display = 'inline';
	    	 $("#testName0info").text("Please Select TestName");
	    	 return false;
	    }
	    
	    if (rate0 == null || rate0.trim() == "" || rate0.match('^[0-9]+$' ) == null) {
	    	document.getElementById('rate0info').style.display = 'inline';
	    	 $("#rate0info").text("Please Enter Rate");
	    	 return false;
	    }
	   
	    if (quantity5 == null || quantity5.trim() == "" || quantity5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity5info').style.display = 'inline';
	    	 $("#quantity5info").text("Please Select Quantity");
	    	 
	    }
	   
	    if (total0 == null || total0.trim() == "" || total0.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total0info').style.display = 'inline';
	    	 $("#total0info").text("Please Enter Total");
	    	 return false; 
	    }
	   

	    if (modifiedBy == null || modifiedBy.trim() == "" || modifiedBy.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('modifiedByinfo').style.display = 'inline';
	    	 $("#modifiedByinfo").text("Please Enter ModifiedBy");	    	
	    	 return false;
	    }else{
			return true;
		    }*/
	    
	  
  }
   
   
  
   
   
   