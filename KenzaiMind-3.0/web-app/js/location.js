   $(document).ready(function(){
    
     $("#city").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#city").val() ){
		   	 
	   		$("#cityinfo").text("");
	     } else {
	    	 $("#cityinfo").text("Please enter City name");
	     }
	   	  });
     
    
     $("#street").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#street").val() ){
		   	 
	   		$("#streetinfo").text("");
	     } else {
	    	 $("#streetinfo").text("Please enter Street name");
	     }
	   	  });
	 
   });


  function validateForm() {
	 var city = document.forms["myform"]["city"].value;
	 var street = document.forms["myform"]["street"].value;

	 
	    
	    if (city == null || city == "") {
	    	document.getElementById('cityinfo').style.display = 'inline';
	    	 $("#cityinfo").text("Please enter City name");
	    	 return false;
	    }
         
	    
	    if (street == null || street == "") {
	    	document.getElementById('streetinfo').style.display = 'inline';
	    	 $("#streetinfo").text("Please enter Street name");
	    	 return false;
	    }
	   	    else{
	    	
	    	return true;
	    }
  }