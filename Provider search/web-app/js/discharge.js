
$(document).ready(function(){
	/*
	 $("#date").focusout(function(){
		 alert(date);
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#date").val().trim() {
		   	 
	   		$("#dateinfo").text("");
	     } else {
	    	 $("#dateinfo").text("Please Enter Valid Date");
	     }
	   	  });
	   */
     $("#datalist1").focusout(function(){
    	 alert(date);
	   		$( this ).find( "span" ).css( "display", "inline" );
    var x =  $("#patientId").val();
    var selectedval = $("#datalist1").val();
    var arrayid=new Array();
    var y = x.substring(1,x.length-1);
    var split= y.split(",");
    for(var i=0;i<split.length;i++){
    	arrayid.push(split[i].trim());
    }
    //alert(selectedval);
    //alert(arrayid.length);
    //alert(jQuery.inArray(selectedval,arrayid));
	   		
	   	 if ((jQuery.inArray(selectedval,arrayid)!="-1") ) {
		   	 
	   		$("#datalist1info").text("");
	     } else {
	    	 $("#datalist1info").text("Please Enter Valid Id");
	     }
	   	  });

	 $("#test1").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#pFirstname").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#pFirstname").val().trim()!="") {
		   	 
	   		$("#pFirstnameinfo").text("");
	     } else {
	    	 $("#pFirstnameinfo").text("Please Enter Valid Firstname");
	     }
	   	  });
	 $("#test2").focusout(function(){
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
	$("#test5").focusout(function(){
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
	   		
	   	 if ( $("#date2").val().trim() {
		   	 
	   		$("#date2info").text("");
	     } else {
	    	 $("#date2info").text("Please Enter Valid Date");
	     }
	   	  });
	 $("#datalist2").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   	 if ( $("#datalist2").val()){
		   	 
	   		$("#datalist2info").text("");
	     } else {
	    	 $("#datalist2info").text("Please Select TestName");
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
	   		
	   	 if ( $("#date3").val().trim() {
		   	 
	   		$("#date3info").text("");
	     } else {
	    	 $("#date3info").text("Please Enter Valid Date");
	     }
	   	  });
	 $("#datalist3").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#datalist3").val()){
		   	 
	   		$("#datalist3info").text("");
	     } else {
	    	 $("#datalist3info").text("Please Select TestName");
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
	   		
	   	 if ( $("#date4").val().trim() {
		   	 
	   		$("#date4info").text("");
	     } else {
	    	 $("#date4info").text("Please Enter Valid Date");
	     }
	   	  });
	 $("#datalist4").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#datalist4").val()){
		   	 
	   		$("#datalist4info").text("");
	     } else {
	    	 $("#datalist4info").text("Please Select TestName");
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
	   		
	   	 if ( $("#date5").val().trim() {
		   	 
	   		$("#date5info").text("");
	     } else {
	    	 $("#date5info").text("Please Enter Valid Date");
	     }
	   	  });
	 $("#datalist5").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#datalist5").val()){
		   	 
	   		$("#datalist5info").text("");
	     } else {
	    	 $("#datalist5info").text("Please Select TestName");
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
	 $("#datalist6").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#datalist6").val()){
		   	 
	   		$("#datalist6info").text("");
	     } else {
	    	 $("#datalist6info").text("Please Select TestName");
	     }
	   	  });


	
    
   });


   function validateForm() {
	// var date = document.forms["myform"]["date"].value;
     var datalist1 = document.forms["myform"]["datalist1"].value;
	 var pFirstname = document.forms["myform"]["pFirstname"].value;
	 var pLastname=  document.forms["myform"]["pLastname"].value;
	 var rate = document.forms["myform"]["rate"].value;
	 var quantity = document.forms["myform"]["quantity"].value;
	 var total = document.forms["myform"]["total"].value;
	 //var tax = document.forms["myform"]["tax"].value;
	// var grandTotal = document.forms["myform"]["grandTotal"].value;
	 //var pMode = document.forms["myform"]["pMode"].value;
	 var date2 = document.forms["myform"]["date2"].value;
	 var datalist2 = document.forms["myform"]["datalist2"].value;
	 var modifiedBy = document.forms["myform"]["modifiedBy"].value;
	 var rate2 = document.forms["myform"]["rate2"].value;
	 var quantity2 = document.forms["myform"]["quantity2"].value;
	 var total2 = document.forms["myform"]["total2"].value;
	 
	 var date3 = document.forms["myform"]["date3"].value;
	 var datalist3 = document.forms["myform"]["datalist3"].value; 
	 var rate3 = document.forms["myform"]["rate3"].value;
	 var quantity3 = document.forms["myform"]["quantity3"].value;
	 var total3 = document.forms["myform"]["total3"].value;
	 
	 var date4 = document.forms["myform"]["date4"].value;
	 var datalist4 = document.forms["myform"]["datalist4"].value;
	 var rate4 = document.forms["myform"]["rate4"].value;
	 var quantity4 = document.forms["myform"]["quantity4"].value;
	 var total4 = document.forms["myform"]["total4"].value;
	 
	 var date5 = document.forms["myform"]["date5"].value;
	 var datalist5 = document.forms["myform"]["datalist5"].value;
	 var rate5 = document.forms["myform"]["rate5"].value;
	 var quantity5 = document.forms["myform"]["quantity5"].value;
	 var total5 = document.forms["myform"]["total5"].value;
	 var datalist6 = document.forms["myform"]["datalist6"].value;


	 
	/* if (date == null || date == "") {
		    document.getElementById('dateinfo').style.display = 'inline';	
	    	 $("#dateinfo").text("Please Enter Date");	
	    	 return false;
		    	 }*/
	    if (datalist1 == null || datalist1 == "") {
		    document.getElementById('datalist1info').style.display = 'inline';	
	    	 $("#datalist1info").text("Please Enter Id");	
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
	   /* if (tax == null || tax.trim() == "" || tax.match('^[0-9]+$' ) == null) {
	    	document.getElementById('taxinfo').style.display = 'inline';
	    	 $("#taxinfo").text("Please Enter Tax");
	    	 return false;
	    }
	    if (grandTotal == null || grandTotal.trim() == "" || grandTotal.match('^[0-9]+$' ) == null) {
	    	document.getElementById('grandTotalinfo').style.display = 'inline';
	    	 $("#grandTotalinfo").text("Please Enter GrandTotal");
	    	 return false;
	    }
	    if (pMode == null || pMode == "") {
	    	document.getElementById('pModeinfo').style.display = 'inline';
	    	 $("#pModeinfo").text("Please Select Mode");
	    	 return false;
	    }*/
	    if (date2 == null || date2 == "") {
		    document.getElementById('date2info').style.display = 'inline';	
	    	 $("#date2info").text("Please Enter Date");	
	    	 return false;
		    	 }
	    if (datalist2 == null || datalist2.trim() == "" || datalist2.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('datalist2info').style.display = 'inline';
	    	 $("#datalist2info").text("Please Select TestName");
	    	 
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
	    	 return false;
		    	 }
	    if (datalist3 == null || datalist3.trim() == "" || datalist3.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('datalist3info').style.display = 'inline';
	    	 $("#datalist3info").text("Please Select TestName");
	    	 
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
	    	 return false;
		    	 }
	    if (datalist4 == null || datalist4.trim() == "" || datalist4.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('datalist4info').style.display = 'inline';
	    	 $("#datalist4info").text("Please Select TestName");
	    	 
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
	    	 return false;
		    	 }
	    if (datalist5 == null || datalist5.trim() == "" || datalist5.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('datalist5info').style.display = 'inline';
	    	 $("#datalist5info").text("Please Select TestName");
	    	 
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
	    if (datalist6 == null || datalist6.trim() == "" || datalist6.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('datalist6info').style.display = 'inline';
	    	 $("#datalist6info").text("Please Select TestName");
	    	 
	    }
	    
	    if (modifiedBy == null || modifiedBy.trim() == "" || modifiedBy.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    	document.getElementById('modifiedByinfo').style.display = 'inline';
	    	 $("#modifiedByinfo").text("Please Enter ModifiedBy");	    	
	    	 return false;
	    }else{
			return true;
		    }
	    
	  
  }
   
   
  
   
   
   