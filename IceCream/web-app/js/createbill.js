 
$(document).ready(function(){
	
	 $("#customerName").focusout(function(){
		 
			$( this ).find( "span" ).css( "display", "inline" );	
	   		
		   	 if ( $("#customerName").val().trim().match('^[a-zA-Z0-9_.-]*$')!=null && $("#customerName").val().trim()!="") {
			   	 
		   		$("#customerNameinfo").text("");
		     } else {
		    	 $("#customerNameinfo").text("Please Select Customer Name");
		     }
		   	  });

	 $("#mobileNumber").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#mobileNumber").val().trim().match(/^\d{10}$/) && $("#mobileNumber").val().trim()!="") {
		   	 
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
	 
	 $("#productDesc1").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	

	   		if ( $("#productDesc1").val().trim()!=null && $("#productDesc1").val().trim()!="") {
		   	 
	   		$("#productDesc1info").text("");
	     } else {
	    	 $("#productDesc1info").text("Please Select Product Description");
	     }
	   	  });
	 
	 
	 $("#weight1").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#weight1").val().trim()!=null && $("#weight1").val().trim()!=""){
		   	 
	   		$("#weight1info").text("");
	     } else {
	    	 $("#weight1info").text("Please Enter Weight");
	     }
	   	  });
	 
	 $("#quantity1").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#quantity1").val().trim().match('^[0-9]+$' )!=null && $("#quantity1").val().trim()!="") {
		   	 
	   		$("#quantity1info").text("");
	     } else {
	    	 $("#quantity1info").text("Please Enter Quantity");
	     }
	   	  });
	 
	 $("#billingType1").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#billingType1").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#billingType1").val().trim()!=""){
		   	 
	   		$("#billingType1info").text("");
	     } else {
	    	 $("#billingType1info").text("Please Enter Billing Type");
	     }
	   	  });
	 
	 $("#price1").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#price1").val().trim().match('^[0-9]+$' )!=null && $("#price1").val().trim()!=""){
		   	 
	   		$("#price1info").text("");
	     } else {
	    	 $("#price1info").text("Please Enter Price");
	     }
	   	  });
	 
	 $("#offerPercentage1").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#offerPercentage1").val().trim().match('^[0-9]+$' )!=null && $("#offerPercentage1").val().trim()!=""){
		   	 
	   		$("#offerPercentage1info").text("");
	     } else {
	    	 $("#offerPercentage1info").text("Please Enter Offer(%)");
	     }
	   	  });
	 
	 $("#total1").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#total1").val().trim().match('^[0-9]+$' )!=null && $("#total1").val().trim()!="") {
		   	 
	   		$("#total1info").text("");
	     } else {
	    	 $("#total1info").text("Please Enter Total");
	     }
	   	  });
	 
	 
	 $("#productDesc2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#productDesc2").val().trim()!=null && $("#productDesc2").val().trim()!="") {
		   	 
	   		$("#productDesc2info").text("");
	     } else {
	    	 $("#productDesc2info").text("Please Select Product Description");
	     }
	   	  });
	 
	 $("#weight2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#weight2").val().trim()!=null && $("#weight2").val().trim()!=""){
		   	 
	   		$("#weight2info").text("");
	     } else {
	    	 $("#weight2info").text("Please Enter Weight");
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
	 
	 $("#billingType2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#billingType2").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#billingType2").val().trim()!=""){
		   	 
	   		$("#billingType2info").text("");
	     } else {
	    	 $("#billingType2info").text("Please Enter Billing Type");
	     }
	   	  });
	 
	 $("#price2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#price2").val().trim().match('^[0-9]+$' )!=null && $("#price2").val().trim()!=""){
		   	 
	   		$("#price2info").text("");
	     } else {
	    	 $("#price2info").text("Please Enter Price");
	     }
	   	  });
	 
	 $("#offerPercentage2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#offerPercentage2").val().trim().match('^[0-9]+$' )!=null && $("#offerPercentage2").val().trim()!=""){
		   	 
	   		$("#offerPercentage2info").text("");
	     } else {
	    	 $("#offerPercentage2info").text("Please Enter Offer(%)");
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
	 
	 $("#productDesc3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#productDesc3").val().trim()!=null && $("#productDesc3").val().trim()!="") {
		   	 
	   		$("#productDesc3info").text("");
	     } else {
	    	 $("#productDesc3info").text("Please Select Product Description");
	     }
	   	  });
	 
	 $("#weight3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#weight3").val().trim()!=null && $("#weight3").val().trim()!=""){
		   	 
	   		$("#weight3info").text("");
	     } else {
	    	 $("#weight3info").text("Please Enter Weight");
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
	 
	 $("#billingType3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#billingType3").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#billingType3").val().trim()!=""){
		   	 
	   		$("#billingType3info").text("");
	     } else {
	    	 $("#billingType3info").text("Please Enter Billing Type");
	     }
	   	  });
	 
	 $("#price3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#price3").val().trim().match('^[0-9]+$' )!=null && $("#price3").val().trim()!="") {
		   	 
	   		$("#price3info").text("");
	     } else {
	    	 $("#price3info").text("Please Enter Price");
	     }
	   	  });

	 $("#offerPercentage3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#offerPercentage3").val().trim().match('^[0-9]+$' )!=null && $("#offerPercentage3").val().trim()!=""){
		   	 
	   		$("#offerPercentage3info").text("");
	     } else {
	    	 $("#offerPercentage3info").text("Please Enter Offer(%)");
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
	 
	 $("#productDesc4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#productDesc4").val().trim()!=null && $("#productDesc4").val().trim()!="") {
		   	 
	   		$("#productDesc4info").text("");
	     } else {
	    	 $("#productDesc4info").text("Please Select Product Description");
	     }
	   	  });
	 
	 $("#weight4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#weight4").val().trim()!=null && $("#weight4").val().trim()!=""){
		   	 
	   		$("#weight4info").text("");
	     } else {
	    	 $("#weight4info").text("Please Enter Weight");
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
	 
	 $("#billingType4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	
	   	 if ( $("#billingType4").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#billingType4").val().trim()!=""){
		   	 
	   		$("#billingType4info").text("");
	     } else {
	    	 $("#billingType4info").text("Please Enter Billing Type");
	     }
	   	  });
	 
	 $("#price4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#price4").val().trim().match('^[0-9]+$' )!=null && $("#price4").val().trim()!=""){
		   	 
	   		$("#price4info").text("");
	     } else {
	    	 $("#price4info").text("Please Enter Price");
	     }
	 });
	 
	 $("#offerPercentage4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#offerPercentage4").val().trim().match('^[0-9]+$' )!=null && $("#offerPercentage4").val().trim()!=""){
		   	 
	   		$("#offerPercentage4info").text("");
	     } else {
	    	 $("#offerPercentage4info").text("Please Enter Offer(%)");
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
	 
	 $("#productDesc5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#productDesc5").val().trim()!=null && $("#productDesc5").val().trim()!="") {
		   	 
	   		$("#productDesc5info").text("");
	     } else {
	    	 $("#productDesc5info").text("Please Select Product Description");
	     }
	   	  });
	 
	 $("#weight5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#weight5").val().trim()!=null && $("#weight5").val().trim()!=""){
		   	 
	   		$("#weight5info").text("");
	     } else {
	    	 $("#weight5info").text("Please Enter Weight");
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
	
	$("#billingType5").focusout(function(){
   		$( this ).find( "span" ).css( "display", "inline" );	
   	
   	 if ( $("#billingType5").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#billingType5").val().trim()!=""){
	   	 
   		$("#billingType5info").text("");
     } else {
    	 $("#billingType5info").text("Please Enter Billing Type");
     }
   	  });
	
	 $("#price5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#price5").val().trim().match('^[0-9]+$' )!=null && $("#price5").val().trim()!="") {
		   	 
	   		$("#price5info").text("");
	     } else {
	    	 $("#price5info").text("Please Enter Price");
	     }
	   	  });
	
	
	$("#offerPercentage5").focusout(function(){
   		$( this ).find( "span" ).css( "display", "inline" );	
   		
   		if ( $("#offerPercentage5").val().trim().match('^[0-9]+$' )!=null && $("#offerPercentage5").val().trim()!=""){
	   	 
   		$("#offerPercentage5info").text("");
     } else {
    	 $("#offerPercentage5info").text("Please Enter Offer(%)");
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
	
	 $("#paymentMode").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#paymentMode").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#paymentMode").val().trim()!="") {
		   	 
	   		$("#paymentModeinfo").text("");
	     } else {
	    	 $("#paymentModeinfo").text("Please Select Mode");
	     }
	   	  });
	
	 $("#grandTotal").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#grandTotal").val().trim().match('^(-?0[.]\\d+)$|^(-?[1-9]+\\d*([.]\\d+)?)$|^0$' )!=null && $("#grandTotal").val().trim()!="") {
		   	 
	   		$("#grandTotalinfo").text("");
	     } else {
	    	 $("#grandTotalinfo").text("Please Enter Grand Total");
	     }
	   	  });
	
   });


   function validateForm() {
	   var customerName = document.forms["myform"]["customerName"].value;
	 var mobileNumber=  document.forms["myform"]["mobileNumber"].value;
	 var address = document.forms["myform"]["address"].value;
	 
	 var productDesc1 = document.forms["myform"]["productDesc1"].value;
	 var weight1 = document.forms["myform"]["weight1"].value;
	 var quantity1 = document.forms["myform"]["quantity1"].value;
	 var billingType1 = document.forms["myform"]["billingType1"].value;
	 var price1 = document.forms["myform"]["price1"].value;
	 var offerPercentage1 = document.forms["myform"]["offerPercentage1"].value;
	 var total1 = document.forms["myform"]["total1"].value;
	 
	 var productDesc2 = document.forms["myform"]["productDesc2"].value;
	 var weight2 = document.forms["myform"]["weight2"].value;
	 var quantity2 = document.forms["myform"]["quantity2"].value;
	 var billingType2 = document.forms["myform"]["billingType2"].value;
	 var price2 = document.forms["myform"]["price1"].value;
	 var offerPercentage2 = document.forms["myform"]["offerPercentage2"].value;
	 var total2 = document.forms["myform"]["total2"].value;
	 
	 var productDesc3 = document.forms["myform"]["productDesc3"].value;
	 var weight3 = document.forms["myform"]["weight3"].value;
	 var quantity3 = document.forms["myform"]["quantity3"].value;
	 var billingType3 = document.forms["myform"]["billingType3"].value;
	 var price3 = document.forms["myform"]["price3"].value;
	 var offerPercentage3 = document.forms["myform"]["offerPercentage3"].value;
	 var total3 = document.forms["myform"]["total3"].value;
	
	 var productDesc4 = document.forms["myform"]["productDesc4"].value;
	 var weight4 = document.forms["myform"]["weight4"].value;
	 var quantity4 = document.forms["myform"]["quantity4"].value;
	 var billingType4 = document.forms["myform"]["billingType4"].value;
	 var price4 = document.forms["myform"]["price4"].value;
	 var offerPercentage4 = document.forms["myform"]["offerPercentage4"].value;
	 var total4 = document.forms["myform"]["total4"].value;

	 var productDesc5 = document.forms["myform"]["productDesc5"].value;
	 var weight5 = document.forms["myform"]["weight5"].value;
	 var quantity5 = document.forms["myform"]["quantity5"].value;
	 var billingType5 = document.forms["myform"]["billingType5"].value;
	 var price5 = document.forms["myform"]["price5"].value;
	 var offerPercentage5 = document.forms["myform"]["offerPercentage5"].value;
	 var total5 = document.forms["myform"]["total5"].value;
	 
	 var paymentMode = document.forms["myform"]["paymentMode"].value;
	 var grandTotal = document.forms["myform"]["grandTotal"].value;

	
	    if (customerName == null || customerName.trim() == "" || customerName.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('customerNameinfo').style.display = 'inline';	
	    	 $("#customerNameinfo").text("Please Enter Customer Name");	
	    	 return false;
		    	 }
	    if (mobileNumber == null || mobileNumber.trim() == "" || mobileNumber.match(/^\d{10}$/)==null) {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("Please Enter Mobile Number");
	    	 return false;
	    }
	    if (address == null || address.trim() == "" || address.match(/^[a-zA-Z0-9-\-\,.;:@#$%^&*/_!]{3,100}$/)==null) {
	    	document.getElementById('addressinfo').style.display = 'inline';
	    	 $("#addressinfo").text("Please Enter Address");
	    	 return false;
	    }
	
	    if ( productDesc1.trim() == "" ) {
		    document.getElementById('productDesc1info').style.display = 'inline';	
	    	 $("#productDesc1info").text("Please Enter Product Description");	
	    	 return false;
		    	 }
	    if ( weight1.trim() == "") {
	    	document.getElementById('weight1info').style.display = 'inline';
	    	 $("#weight1info").text("Please Enter Weight");
	    	 return false;
	    }
	    if (quantity1 == null || quantity1.trim() == "" || quantity1.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity1info').style.display = 'inline';
	    	 $("#quantity1info").text("Please Enter Quantity");
	    	 return false;
	    }
	    if (billingType1 == null || billingType1.trim() == "" || billingType1.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('billingType1info').style.display = 'inline';
	    	 $("#billingType1info").text("Please Enter Billing Type");
	    	 return false;
	    }
	    if (price1 == null || price1.trim() == "" || price1.match('^[0-9]+$' ) == null) {
	    	document.getElementById('price1info').style.display = 'inline';
	    	 $("#price1info").text("Please Enter Price");
	    	 return false;
	    }
	    if (offerPercentage1 == null || offerPercentage1.trim() == "" || offerPercentage1.match('^[0-9]+$' ) == null) {
	    	document.getElementById('offerPercentage1info').style.display = 'inline';
	    	 $("#offerPercentage1info").text("Please Enter Offer(%)");
	    	 return false;
	    }
	    if (total1 == null || total1.trim() == "" || total1.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total1info').style.display = 'inline';
	    	 $("#total1info").text("Please Enter Total");
	    	 return false;
	    }
	    
/*	    if (productDesc2 == null || productDesc2.trim() == "" ) {
		    document.getElementById('productDesc2info').style.display = 'inline';	
	    	 $("#productDesc2info").text("Please Enter Product Description");	
	    	 return false;
		    	 }*/
	    
	    if (productDesc2.trim() != "" ) {
	    if (weight2 == null || weight2.trim() == "" ) {
	    	document.getElementById('weight2info').style.display = 'inline';
	    	 $("#weight2info").text("Please Enter Weight");
	    	 return false;
	    }
	    if ( quantity2.trim() == "" || quantity2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity2info').style.display = 'inline';
	    	 $("#quantity2info").text("Please Enter Quantity");
	    	 return false;
	    }
	    if (billingType2 == null || billingTypetrim() == "" || billingType2.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('billingType2info').style.display = 'inline';
	    	 $("#billingType2info").text("Please Enter Billing Type");
	    	 return false;
	    }
	    if (price2 == null || price2.trim() == "" || price2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('price2info').style.display = 'inline';
	    	 $("#price2info").text("Please Enter Price");
	    	 return false;
	    }
	    if (offerPercentage2 == null || offerPercentage2.trim() == "" || offerPercentage2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('offerPercentage2info').style.display = 'inline';
	    	 $("#offerPercentage2info").text("Please Enter Offer(%)");
	    	 return false;
	    }
	    if (total2 == null || total2.trim() == "" || total2.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total2info').style.display = 'inline';
	    	 $("#total2info").text("Please Enter Total");
	    	 return false;
	    }
	    }
	    if ( productDesc3.trim() != "" ) {
	    if ( productDesc3.trim() == "" ) {
		    document.getElementById('productDesc3info').style.display = 'inline';	
	    	 $("#productDesc3info").text("Please Enter Product Description");	
	    	 return false;
		    	 }
	    if ( weight3.trim() == "" ) {
	    	document.getElementById('weight3info').style.display = 'inline';
	    	 $("#weight3info").text("Please Enter Weight");
	    	 return false;
	    }
	    if (quantity3 == null || quantity3.trim() == "" || quantity3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity3info').style.display = 'inline';
	    	 $("#quantity3info").text("Please Enter Quantity");
	    	 return false;
	    }
	    if (billingType3 == null || billingType3.trim() == "" || billingType3.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('billingType3info').style.display = 'inline';
	    	 $("#billingType3info").text("Please Enter Billing Type");
	    	 return false;
	    }
	    if (price3 == null || price3.trim() == "" || price3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('price3info').style.display = 'inline';
	    	 $("#price3info").text("Please Enter Price");
	    	 return false;
	    }
	    if (offerPercentage3 == null || offerPercentage3.trim() == "" || offerPercentage3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('offerPercentage3info').style.display = 'inline';
	    	 $("#offerPercentage3info").text("Please Enter Offer(%)");
	    	 return false;
	    }
	    if (total3 == null || total3.trim() == "" || total3.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total3info').style.display = 'inline';
	    	 $("#total3info").text("Please Enter Total");
	    	 return false;
	    }
	    }
	    if ( productDesc4.trim() != "" ) {
	    
	    if ( productDesc4.trim() == "" ) {
		    document.getElementById('productDesc4info').style.display = 'inline';	
	    	 $("#productDesc4info").text("Please Enter Product Description");	
	    	 return false;
		    	 }
	    if ( weight4.trim() == "" ) {
	    	document.getElementById('weight4info').style.display = 'inline';
	    	 $("#weight4info").text("Please Enter Weight");
	    	 return false;
	    }
	    if (quantity4 == null || quantity4.trim() == "" || quantity4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity4info').style.display = 'inline';
	    	 $("#quantity4info").text("Please Enter Quantity");
	    	 return false;
	    }
	    if (billingType4 == null || billingType4.trim() == "" || billingType4.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('billingType4info').style.display = 'inline';
	    	 $("#billingType4info").text("Please Enter BillingType");
	    	 return false;
	    }
	    if (price4 == null || price4.trim() == "" || price4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('price4info').style.display = 'inline';
	    	 $("#price4info").text("Please Enter Price");
	    	 return false;
	    }
	    if (offerPercentage4 == null || offerPercentage4.trim() == "" || offerPercentage4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('offerPercentage4info').style.display = 'inline';
	    	 $("#offerPercentage4info").text("Please Enter Offer(%)");
	    	 return false;
	    }
	    if (total4 == null || total4.trim() == "" || total4.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total4info').style.display = 'inline';
	    	 $("#total4info").text("Please Enter Total");
	    	 return false;
	    }
	    }
	    if ( productDesc5.trim() != "" ) {
	    
	    if (productDesc5.trim() == "" ) {
		    document.getElementById('productDesc5info').style.display = 'inline';	
	    	 $("#productDesc5info").text("Please Enter Product Description");	
	    	 return false;
		    	 }
	    if (weight5 == null || weight5.trim() == "" ) {
	    	document.getElementById('weight5info').style.display = 'inline';
	    	 $("#weight5info").text("Please Enter Weight");
	    	 return false;
	    }
	    if (quantity5 == null || quantity5.trim() == "" || quantity5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantity5info').style.display = 'inline';
	    	 $("#quantity5info").text("Please Enter Quantity");
	    	 return false;
	    }
	    if (billingType5 == null || billingType5.trim() == "" || billingType5.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('billingType5info').style.display = 'inline';
	    	 $("#billingType5info").text("Please Enter BillingType");
	    	 return false;
	    }
	    if (price5 == null || price5.trim() == "" || price5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('price5info').style.display = 'inline';
	    	 $("#price5info").text("Please Enter Price");
	    	 return false;
	    }
	    if (offerPercentage5 == null || offerPercentage5.trim() == "" || offerPercentage5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('offerPercentage5info').style.display = 'inline';
	    	 $("#offerPercentage5info").text("Please Enter Offer(%)");
	    	 return false;
	    }
	    if (total5 == null || total5.trim() == "" || total5.match('^[0-9]+$' ) == null) {
	    	document.getElementById('total5info').style.display = 'inline';
	    	 $("#total5info").text("Please Enter Total");
	    	 return false;
	    }
	    }
	    
	    if (paymentMode == null || paymentMode == "") {
	    	document.getElementById('paymentModeinfo').style.display = 'inline';
	    	 $("#paymentModeinfo").text("Please Select Mode");
	    	 return false;
	    }
	    
	    if (grandTotal == null || grandTotal.trim() == "" || grandTotal.match('^(-?0[.]\\d+)$|^(-?[1-9]+\\d*([.]\\d+)?)$|^0$' ) == null) {
	    	document.getElementById('grandTotalinfo').style.display = 'inline';
	    	 $("#grandTotalinfo").text("Please Enter Grand Total");
	    	 return false;
	    }
	    
	   else{
			return true;
		    }
	    
	  
  }
   
   
  
   
   
   