
$(document).ready(function(){
	
	 $("#materialId").focusout(function(){
		 
			$( this ).find( "span" ).css( "display", "inline" );	
	   		
		   	 if ( $("#materialId").val().trim().match('^[a-zA-Z0-9_.-]*$')!=null && $("#materialId").val().trim()!="") {
			   	 
		   		$("#materialIdinfo").text("");
		     } else {
		    	 $("#materialIdinfo").text("Please Select MaterialId");
		     }
		   	  });

	 $("#productDesc").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#productDesc").val().trim()!=null && $("#productDesc").val().trim()!="") {
		   	 
	   		$("#productDescinfo").text("");
	     } else {
	    	 $("#productDescinfo").text("Please Select Product Description");
	     }
	   	  });
	 $("#icecreamType").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#icecreamType").val().trim()!=null && $("#icecreamType").val().trim()!="") {
		   	 
	   		$("#icecreamTypeinfo").text("");
	     } else {
	    	 $("#icecreamTypeinfo").text("Please Select Icecream Type");
	     }
	   	  });
	 $("#weight").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   		if ( $("#weight").val().trim()!=null && $("#weight").val().trim()!=""){
		   	 
	   		$("#weightinfo").text("");
	     } else {
	    	 $("#weightinfo").text("Please Enter Weight");
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
	 $("#retailPrice").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#retailPrice").val().trim().match('^[0-9]+$' )!=null && $("#retailPrice").val().trim()!="") {
		   	 
	   		$("#retailPriceinfo").text("");
	     } else {
	    	 $("#retailPriceinfo").text("Please Enter RetailPrice");
	     }
	   	  });
	
	 $("#wholesalePrice").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#wholesalePrice").val().trim().match('^[0-9]+$' )!=null && $("#wholesalePrice").val().trim()!="") {
		   	 
	   		$("#wholesalePriceinfo").text("");
	     } else {
	    	 $("#wholesalePriceinfo").text("Please Enter WholesalePrice");
	     }
	   	  });
	 
   });


   function validateForm() {
	 var materialId = document.forms["myform"]["materialId"].value;
	 var productDesc = document.forms["myform"]["productDesc"].value;
	 var icecreamType=  document.forms["myform"]["icecreamType"].value;
	 var weight = document.forms["myform"]["weight"].value;
	 var quantity = document.forms["myform"]["quantity"].value;
	 var retailPrice = document.forms["myform"]["retailPrice"].value;
	 var wholesalePrice = document.forms["myform"]["wholesalePrice"].value;

	 
	 if (materialId == null || materialId.trim() == "" || materialId.match('^[a-zA-Z0-9_.-]*$') == null) {
		    document.getElementById('materialIdinfo').style.display = 'inline';	
	    	 $("#materialIdinfo").text("Please Select MaterialId");	
	    	 return false;
		    	 }
	    if (productDesc == null || productDesc.trim() == "") {
		    document.getElementById('productDescinfo').style.display = 'inline';	
	    	 $("#productDescinfo").text("Please Enter Product Description");	
	    	 return false;
		    	 }
	    if (icecreamType == null || icecreamType.trim() == "" ) {
		    document.getElementById('icecreamTypeinfo').style.display = 'inline';
	    	 $("#icecreamTypeinfo").text("Please Enter Icecream Type");
	    	 return false;
	    }
	    if (weight == null || weight.trim() == "") {
	    	document.getElementById('weightinfo').style.display = 'inline';
	    	 $("#weightinfo").text("Please Enter Weight");
	    	 return false;
	    }
	    if (quantity == null || quantity.trim() == "" || quantity.match('^[0-9]+$' ) == null) {
	    	document.getElementById('quantityinfo').style.display = 'inline';
	    	 $("#quantityinfo").text("Please Enter Quantity");
	    	 return false;
	    }
	   
	    if (retailPrice == null || retailPrice.trim() == "" || retailPrice.match('^[0-9]+$' ) == null) {
	    	document.getElementById('retailPriceinfo').style.display = 'inline';
	    	 $("#retailPriceinfo").text("Please Enter Retail Price");
	    	 return false;
	    }
	    if (wholesalePrice == null || wholesalePrice.trim() == "" || wholesalePrice.match('^[0-9]+$' ) == null) {
	    	document.getElementById('wholesalePriceinfo').style.display = 'inline';
	    	 $("#wholesalePriceinfo").text("Please Enter Wholesale Price");
	    	 return false;
	    }
	    else{
			return true;
		    }
	    
	  
  }
   
   
  
   
   
   