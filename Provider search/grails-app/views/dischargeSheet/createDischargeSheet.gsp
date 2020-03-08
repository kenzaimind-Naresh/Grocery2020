<html>
	<head>
	<style type="text/css">
      .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}  
        span{
  color:Crimson;
  }           
   </style>
	  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<%--<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  	    
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    
	
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	
  
	--%><script  src="${resource(dir: 'js', file: 'dischargesheet.js')}"></script>
<script type="text/javascript"><%--<%--

function myFunction() {
	  //alert("onselect");
	    
	   /* $("input[name='patientId']").on('input', function(e){
	   var $input = $(this),
	       val = $input.val();
	       list = $input.attr('list'),
	       match = $('#'+list + ' option').filter(function() {
	           return ($(this).val() === val);
	       });

	    if(match.length > 0) {
	        alert(value is in list)
	    } else {
	        alert(value is not in list)
	    }
	});*/
	
	    
	    var dlist=$('#datalist1').val();
        var x=$('#patientId');          
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
	    
	   /// var d=document.getElementById("patientId").value;
	    
	    var split=d.split("+");
	    document.getElementById("pFirstname").value =split[0];
  	document.getElementById("pLastname").value =split[1];
  	document.getElementById("patientId1").value =split[2];


  /*	var inputs = document.querySelectorAll('input[list]');
  	for (var i = 0; i < inputs.length; i++) {
  	  // When the value of the input changes...
  	  inputs[i].addEventListener('change', function() {
  	    var optionFound = false,
  	      datalist = this.list;
  	    // Determine whether an option exists with the current value of the input.
  	    for (var j = 0; j < datalist.options.length; j++) {
  	        if (this.value == datalist.options[j].value) {
  	            optionFound = true;
  	            break;
  	        }
  	    }
  	    // use the setCustomValidity function of the Validation API
  	    // to provide an user feedback if the value does not exist in the datalist
  	    if (optionFound) {
  	      this.setCustomValidity('');
  	    } else {
  	      this.setCustomValidity('Please select a valid value.');
  	    }
  	  });
  	}*/
  	     
	}
function myFunct() {
   
   var dlist=$('#datalist2').val();
        var x=$('#datalistService');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
        //alert(d)
    
    var split=d.split("+");
    //alert(split)
  document.getElementById("serviceName").value =split[0];
 
	document.getElementById("rate").value =split[1];
	
	     
}
function myFunct1() {
    
    //var d=document.getElementById("drugdetails2").value;
    
     var dlist=$('#datalist3').val();
        var x=$('#datalistService2');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
    
    var split=d.split("+");
    
  document.getElementById("serviceName2").value =split[0];
 
	document.getElementById("rate2").value =split[1];
		     
}
function myFunct2() {
   
    var dlist=$('#datalist4').val();
        var x=$('#datalistService3');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
    
    var split=d.split("+");
    
  document.getElementById("serviceName3").value =split[0];
 
	document.getElementById("rate3").value =split[1];
		     
}
function myFunct3() {
   
     var dlist=$('#datalist5').val();
        var x=$('#datalistService4');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
    
    var split=d.split("+");
    
  document.getElementById("serviceName4").value =split[0];
 
	document.getElementById("rate4").value =split[1];
		     
}
function myFunct4() {
   
     var dlist=$('#datalist6').val();
        var x=$('#datalistService5');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
    
    var split=d.split("+");
    
  document.getElementById("serviceName5").value =split[0];
 
	document.getElementById("rate5").value =split[1];
		     
}
--%>

function Multiply() {
    var inp1 = document.getElementById("rate").value;
    var inp2 = document.getElementById("quantity").value;
    var imp2 = inp2 * inp1;
    var tot=document.getElementById("total").value = imp2;
   // var c=parseInt(tot);
   // var a=document.getElementById("total").value;
   /// var d=parseInt(a);
   // var b=c+d;
   // var salesTax = c * (5 / 100);
    //document.getElementById("tax").value=salesTax;
    //document.getElementById("grandTotal").value=salesTax+c;   
}

function Multiply2() {
    var inp1 = document.getElementById("rate2").value;
    var inp2 = document.getElementById("quantity2").value;
   var imp2 = inp2 * inp1;
   var tot=document.getElementById("total2").value = imp2;
 ///  var c=parseInt(tot);
  // var a=document.getElementById("total").value;
  // var d=parseInt(a);
   ///var b=c+d;
   // var salesTax = b * (5 / 100);
   // document.getElementById("tax").value=salesTax;
   // document.getElementById("grandTotal").value=salesTax+b;   
}

function Multiply3() {
    var inp1 = document.getElementById("rate3").value;
   var inp2 = document.getElementById("quantity3").value;
   var imp2 = inp2 * inp1;
   var tot=document.getElementById("total3").value = imp2;
   //var d=parseInt(tot);
  // var a=document.getElementById("total").value;
  // var e=parseInt(a);
  // var b=document.getElementById("total2").value
  // var f=parseInt(b);
//var c=d+e+f
   
    //var salesTax = c * (5 / 100);
    //document.getElementById("tax").value=salesTax;
    //document.getElementById("grandTotal").value=salesTax+c;   
}

function Multiply4() {
    var inp1 = document.getElementById("rate4").value;
    var inp2 = document.getElementById("quantity4").value;
    var imp2 = inp2 * inp1;
   var tot=document.getElementById("total4").value = imp2;
   //var h=parseInt(tot);
   //var g=document.getElementById("total3").value;
   //var d=parseInt(g);
 //  var a=document.getElementById("total").value;
   //var e=parseInt(a);
   //var b=document.getElementById("total2").value
   //var f=parseInt(b);
//var c=h+d+e+f
   
   // var salesTax = c * (5 / 100);
   // document.getElementById("tax").value=salesTax;
   // document.getElementById("grandTotal").value=salesTax+c;   
}

function Multiply5() {
    var inp1 = document.getElementById("rate5").value;
    var inp2 = document.getElementById("quantity5").value;
    var imp2 = inp2 * inp1;
   var tot=document.getElementById("total5").value = imp2;
   //var j=parseInt(tot);
   //var i=document.getElementById("total4").value;
   //var h=parseInt(i);
   //var g=document.getElementById("total3").value;
   //var d=parseInt(g);
  // var a=document.getElementById("total").value;
  // var e=parseInt(a);
  // var b=document.getElementById("total2").value
   //var f=parseInt(b);
//var c=j+h+d+e+f
   
 // var salesTax = c * (5 / 100);
 //  document.getElementById("tax").value=salesTax;
  //document.getElementById("grandTotal").value=salesTax+c;   
}



$(document).ready(function(){
	$("#pinputs1").show();
    $("#pinputs2").hide();
    $("#pinputs3").hide();
    $("#pinputs4").hide();
    $("#pinputs5").hide();
    $("#ref1").hide();
    $("#ref2").hide();
    $("#ref3").hide();
    $("#ref4").hide();
    $("#hide").hide();
    $("#hide1").hide();
    $("#hide2").hide();
    $("#hide3").hide();
    $("#hide4").hide();
    

	
    $("#hide").click(function(){
        $("#pinputs2").hide();
        $("#ref1").hide();
        $("#hide").hide();
    });
    $("#show").click(function(){
        $("#pinputs2").show();
        $("#ref1").show();
        $("#hide").show();
    });
    $("#hide1").click(function(){
        $("#pinputs3").hide();
        $("#ref2").hide();
        $("#hide1").hide();
    });
    $("#show1").click(function(){
        $("#pinputs3").show();
        $("#ref2").show();
        $("#hide1").show();
    });
    $("#hide2").click(function(){
        $("#pinputs4").hide();
        $("#ref3").hide();
        $("#hide2").hide();
    });
    $("#show2").click(function(){
        $("#pinputs4").show();
        $("#ref3").show();
        $("#hide2").show();
    });
    $("#hide3").click(function(){
        $("#pinputs5").hide();
        $("#ref4").hide();
        $("#hide3").hide();
    });
    $("#show3").click(function(){
        $("#pinputs5").show();
        $("#ref4").hide();
        $("#hide3").show();
    });
   
   
});

history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
<%--
function getdata() {
	var patientId= document.getElementById("patientId").value
//alert(serviceName);
	var path = "/HospitalMgnt/Patient/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			patientId : patientId
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("pFirstname").value =result.split("#")[0];
		    document.getElementById("pLastname").value =result.split("#")[1];
		   
		},
		error : function() {
		}
	})
}

$(function() {
     $("#patientId").autocomplete({
    	
    	  source:[
    	<g:each in="${result.pat1}">
    	
        '${it.patientId}',
           
        </g:each>]
    });
  });


function getdata1() {
	var testName= document.getElementById("testName").value
  //alert(drugName);
	var path = "/HospitalMgnt/TestData/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			testName : testName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#testName").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
  });


function getdata2() {
	var testName= document.getElementById("testName2").value
//alert(drugName);
	var path = "/HospitalMgnt/TestData/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			testName : testName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate2").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#testName2").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
  });



function getdata3() {
	var testName= document.getElementById("testName3").value
//alert(drugName);
	var path = "/HospitalMgnt/TestData/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			testName : testName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate3").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#testName3").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
  });


function getdata4() {
	var testName= document.getElementById("testName4").value
//alert(drugName);
	var path = "/HospitalMgnt/TestData/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			testName : testName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate4").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#testName4").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
  });


function getdata5() {
	var testName= document.getElementById("testName5").value
//alert(drugName);
	var path = "/HospitalMgnt/TestData/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			testName : testName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate5").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#testName5").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
  });



function getdata() {
	var patientId= document.getElementById("patientId").value
//alert(serviceName);
	var path = "/HospitalMgnt/Patient/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			patientId : patientId
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("pFirstname").value =result.split("#")[0];
		    document.getElementById("pLastname").value =result.split("#")[1];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#patientId").autocomplete({
    	
    	  source:[
    	<g:each in="${result.pat}">
    	
        '${it.patientId}',
           
        </g:each>]
    });
  });
--%>


function getdata() {
	var patientId= document.getElementById("patientId").value
//alert(patientId);
	var path = "/HospitalMgnt/Inpatient/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			patientId : patientId
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("pFirstname").value =result.split("#")[0];
		    document.getElementById("pLastname").value =result.split("#")[1];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#patientId").autocomplete({
    	
    	  source:[
    	<g:each in="${result.pat}">
    	
        '${it.patientId}',
           
        </g:each>]
    });
  });


function getdata1() {
	var serviceName= document.getElementById("serviceName").value
  //alert(drugName);
	var path = "/HospitalMgnt/DischargeSheet/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			serviceName : serviceName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#serviceName").autocomplete({
    	
    	  source:[
    	<g:each in="${result.services}">
    	
        '${it.serviceName}',
           
        </g:each>]
    });
  });


function getdata2() {
	var serviceName= document.getElementById("serviceName2").value
//alert(serviceName);
	var path = "/HospitalMgnt/DischargeSheet/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			serviceName : serviceName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate2").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#serviceName2").autocomplete({
    	
    	  source:[
    	<g:each in="${result.services}">
    	
        '${it.serviceName}',
           
        </g:each>]
    });
  });



function getdata3() {
	var serviceName= document.getElementById("serviceName3").value
//alert(serviceName);
	var path = "/HospitalMgnt/DischargeSheet/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			serviceName : serviceName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate3").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#serviceName3").autocomplete({
    	
    	  source:[
    	<g:each in="${result.services}">
    	
        '${it.serviceName}',
           
        </g:each>]
    });
  });


function getdata4() {
	var serviceName= document.getElementById("serviceName4").value
//alert(serviceName);
	var path = "/HospitalMgnt/DischargeSheet/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			serviceName : serviceName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate4").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#serviceName4").autocomplete({
    	
    	  source:[
    	<g:each in="${result.services}">
    	
        '${it.serviceName}',
           
        </g:each>]
    });
  });


function getdata5() {
	var serviceName= document.getElementById("serviceName5").value
//alert(serviceName);
	var path = "/HospitalMgnt/DischargeSheet/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			serviceName : serviceName
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("rate5").value =result.split("#")[0];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#serviceName5").autocomplete({
    	
    	  source:[
    	<g:each in="${result.services}">
    	
        '${it.serviceName}',
           
        </g:each>]
    });
  });



</script>
<!--  <script>

 
$(function() {
 var x='${result.listId}'
  document.getElementById(x).className = "active";
});
</script>-->

<style>

.active a{
    color: white !important;
}

</style>

 </head>
 <body>
 <div id="wrapper">
 <g:render template="/user/header"/>

  
         <g:form controller="dischargeSheet" align="center" ID="myform" action="saveDischargeSheet"  nonvalidate="nonvalidate"> 
          <div id="page-wrapper"><br><br>
            <div class="row">
               
            </div>
            <div class="row" align="center">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                    
                     <div class="row" align="center">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header"  style="color:black;font-size:20px;">Billing Services</div>
                </div></div>
        
         <div class="panel-body" >
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
           
           <label for="patientId">PatientId: </label>
           <input type="text" id="patientId" name="patientId" onfocusout="getdata()" class="form-control"  style="height:27px;width:260px;border-radius:5px">
            <span id=patientIdinfo></span></div></div>
             
            <div class="col-lg-4">
                 <div class="fieldgroup">
             <label for="pFirstname">Firstname: </label>
            <input type="text" id="pFirstname" name="pFirstname" class="form-control" style="height:27px;width:260px;border-radius:5px">
            <span id=pFirstnameinfo></span></div></div>  
            <div class="col-lg-4">
                 <div class="fieldgroup">                       
            <label for="pLastname">Lastname: </label>
            <td id="test2"><input type="text" id="pLastname" name="pLastname" class="form-control" style="height:27px;width:260px;border-radius:5px">
            <span id=pLastnameinfo></span></div></div></div>
                        
     <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
      <th>Date</th>
      
      <th>ServiceName</th> 
    
      <th>Quantity</th>
      
      <th>Rate</th>
      
      <th>Total</th>
     
      </tr>
      </thead>
          <tbody>
            
            <tr class="fieldgroup" id="pinputs1">  
            <td id="test5"><input type="date" id="date" name="date" width="30" onkeyup="Multiply()" class="form-control" style="height:27px;width:162px;border-radius:5px">
            <span id=dateinfo STYLE="font-size: 10pt"></span></td>
                   
             <td id="test10">
           <input type="text" id="serviceName" name="serviceName"  onfocusout="getdata1()" class="form-control" style="height:27px;width:162px;border-radius:5px">
           <%--<datalist id="datalistService" onchange="myFunct()" style="height:27px;width:260px;border-radius:5px" >
           <option value="" >--select--</option>
           <g:each var="i" in="${responseData.services}"> 
           <option id="${i.serviceName}+${i.rate}" value="${i.serviceName}"></option>
           </g:each>
           </datalist><br>
           --%><span id=serviceNameinfo STYLE="font-size: 10pt"></span></td>
            
            <td id="test5"><input type="text" id="quantity" name="quantity" width="30" onkeyup="Multiply()" class="form-control" style="height:27px;width:162px;border-radius:5px">
            <span id=quantityinfo STYLE="font-size: 10pt" ></span></td>
            
             <td id="test3"><input type="text" id="rate" name="rate" width="30" onkeyup="Multiply()" class="form-control" style="height:27px;width:162px;border-radius:5px">
            <span id=rateinfo STYLE="font-size: 10pt" ></span></td>
            
             <td id="test6"><input type="text" id="total" name="total" width="30" class="form-control" style="height:27px;width:162px;border-radius:5px" >
            <span id=totalinfo STYLE="font-size: 10pt"></span></td></tr>
           <tr id="ref"><td>
           <a  id="show">Add</a>&nbsp;&nbsp;&nbsp;&nbsp;<a id="hide">Hide</a></td><td></td><td></td><td></td><td></td></tr>
         
     
      <tr class="fieldgroup" id="pinputs2">  
      <td id="test5"><input type="date" id="date2" name="date2" width="30" onkeyup="Multiply()" class="form-control" style="height:27px;width:162px;border-radius:5px">
            <span id=date2info STYLE="font-size: 10pt"></span></td>
                   
            <td id="test10"> 
          <input type="text" id="serviceName2" name="serviceName2" onfocusout="getdata2()" class="form-control" style="height:27px;width:162px;border-radius:5px">
          
         <%--<datalist id="datalistService2" width="30" onchange="myFunct1()" style="height:27px;width:260px;border-radius:5px" >
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.services}"> 
            <option id="${i.serviceName}+${i.rate}" value="${i.serviceName}"></option>
            </g:each>
            </datalist><br>--%>
            
            <span id=serviceName2info STYLE="font-size: 10pt"></span></td>
            
            <td id="test5"><input type="text" id="quantity2" name="quantity2" width="30" class="form-control" onkeyup="Multiply2()" style="height:27px;width:162px;border-radius:5px">
            <span id=quantity2info STYLE="font-size: 10pt" ></span></td>
                                    
             <td id="test3"><input type="text" id="rate2" name="rate2" width="30" class="form-control" onkeyup="Multiply2()" style="height:27px;width:162px;border-radius:5px">
            <span id=rate2info STYLE="font-size: 10pt"></span></td>
            
             <td id="test6"><input type="text" id="total2" name="total2" width="30" class="form-control" style="height:27px;width:162px;border-radius:5px">
            <span id=total2info STYLE="font-size: 10pt"></span></td>
            
          <tr id="ref1"><td>
           <a  id="show1">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide1">Hide</a></td><td></td><td></td><td></td><td></td></tr>
            
     
      <tr class="fieldgroup" id="pinputs3">         
             
            <td id="test5"><input type="date" id="date3" name="date3" width="30" onkeyup="Multiply()" class="form-control" style="height:27px;width:162px;border-radius:5px">
            <span id=date3info STYLE="font-size: 10pt"></span></td>
           <td id="test10">
          <input type="text" id="serviceName3" name="serviceName3" onfocusout="getdata3()" class="form-control" style="height:27px;width:162px;border-radius:5px">
          
          <%--<datalist name="datalistService3" id="datalistService3" width="30" class="form-control" style="width: 260px" onchange="myFunct2()"  >
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.services}"> 
            <option id="${i.serviceName}+${i.rate}" value="${i.serviceName}"></option>
            </g:each>
            </datalist><br>--%>
            
            <span id=serviceName3info STYLE="font-size: 10pt"></span></td>
            
          <td id="test5"><input type="text" id="quantity3" name="quantity3" class="form-control" width="30" onkeyup="Multiply3()" style="height:27px;width:162px;border-radius:5px">
            <span id=quantity3info STYLE="font-size: 10pt"></span></td>
                                      
             <td id="test3"><input type="text" id="rate3" name="rate3" class="form-control" width="30" onkeyup="Multiply3()" style="height:27px;width:162px;border-radius:5px">
            <span id=rate3info STYLE="font-size: 10pt"></span></td>
            
            <td id="test6"><input type="text" id="total3" name="total3" class="form-control" width="30" style="height:27px;width:162px;border-radius:5px">
            <span id=total3info STYLE="font-size: 10pt"></span></td>
             <tr id="ref2"><td>
           <a  id="show2">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide2">Hide</a>
         
       </div>
     <td></td><td></td><td></td><td></td></tr>
     
      <tr class="fieldgroup" id="pinputs4">         
             
            <td id="test5"><input type="date" id="date4" name="date4" width="30" class="form-control" onkeyup="Multiply()" style="height:27px;width:162px;border-radius:5px">
            <span id=date4info STYLE="font-size: 10pt"></span></td>
            <td id="test10">
          <input type="text" id="serviceName4" name="serviceName4" class="form-control" onfocusout="getdata4()" style="height:27px;width:162px;border-radius:5px">
         <%-- <datalist name="datalistService4" id="datalistService4" width="30" style="width: 260px" onchange="myFunct3()" style="height:27px;width:260px;border-radius:5px" >
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.services}"> 
            <option id="${i.serviceName}+${i.rate}" value="${i.serviceName}"></option>
            </g:each>
            </datalist><br>--%>
            
            <span id=serviceName4info STYLE="font-size: 10pt"></span></td>
            
            <td id="test5"><input type="text" id="quantity4" name="quantity4" width="30" class="form-control" onkeyup="Multiply4()" style="height:27px;width:162px;border-radius:5px">
            <span id=quantity4info STYLE="font-size: 10pt"></span></td> 
            
            <td id="test3"><input type="text" id="rate4" name="rate4" width="30" class="form-control" onkeyup="Multiply4()" style="height:27px;width:162px;border-radius:5px">
            <span id=rate4info STYLE="font-size: 10pt"></span></td>
            
             <td id="test6"><input type="text" id="total4" name="total4" width="30" class="form-control" style="height:27px;width:162px;border-radius:5px">
            <span id=total4info STYLE="font-size: 10pt"></span></td>
            
             <tr id="ref3"><td>
           <a  id="show3">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide3">Hide</a>
         
       </div>
     <td></td><td></td><td></td><td></td></tr>
     
      <tr class="fieldgroup" id="pinputs5">         
             
            <td id="test5"><input type="date" id="date5" name="date5" width="30" onkeyup="Multiply()" class="form-control" style="height:27px;width:162px;border-radius:5px">
            <span id=date5info STYLE="font-size: 10pt"></span></td>
            <td id="test10">
           <input type="text" id="serviceName5" name="serviceName5" onfocusout="getdata5()" class="form-control" style="height:27px;width:162px;border-radius:5px">
          <%--<datalist name="datalistService5" id="datalistService5" width="30" class="form-control" onchange="myFunct4()" style="height:27px;width:150px;border-radius:5px" >
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.services}"> 
            <option id="${i.serviceName}+${i.rate}" value="${i.serviceName}"></option>
            </g:each>
            </datalist><br>--%>
            
            <span id=serviceName5info STYLE="font-size: 10pt"></span></td>
            
             <td id="test5"><input type="text" id="quantity5" name="quantity5" width="30" class="form-control" onkeyup="Multiply5()" style="height:27px;width:162px;border-radius:5px">
            <span id=quantity5info STYLE="font-size: 10pt"></span></td> 
            
             <td id="test3"><input type="text" id="rate5" name="rate5" width="30" class="form-control" onkeyup="Multiply5()" style="height:27px;width:162px;border-radius:5px">
            <span id=rate5info STYLE="font-size: 10pt"></span></td>
           
             <td id="test6"><input type="text" id="total5" name="total5" class="form-control" width="30" style="height:27px;width:162px;border-radius:5px">
            <span id=total5info STYLE="font-size: 10pt"></span></td>  
            
            
         
          <tr id="ref4"><td>
           <a  id="show4">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide4">Hide</a>
       </div>
     <td></td><td></td><td></td><td></td></tr>
   <%--
        
            <tr class="fieldgroup">
            <td></td>
            <td></td>
            <td></td>
            <td><label for="tax">Tax: </label></td>
            <td id="test7"><input type="text" id="tax" name="tax" class="form-control" style="height:27px;width:240px;border-radius:5px">
            <span id=taxinfo ></span></td> </tr>
            
            
            
            <tr class="fieldgroup">
            <td></td>
            <td></td>
            <td></td>
            <td><label for="grandTotal">GrandTotal: </label></td>
            <td id="test8"><input type="text" id="grandTotal" name="grandTotal" class="form-control" style="height:27px;width:240px;border-radius:5px">
            <span id=grandTotalinfo ></span></td></tr>
            </table><br>
            
            --%><table align="center">
             <tr class="fieldgroup">
            <td><label for="modifiedBy">ModifiedBy: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</label></td>
            <td id="test11"><input type="text" id="modifiedBy" name="modifiedBy" class="form-control" value="${result.uname.username }" style="height:27px;width:260px;border-radius:5px">
            <span id=modifiedByinfo></span></td><%--
            <td><label for="pMode">Mode:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>            
            <td id="test9"><select name="pMode" id="pMode" onchange="myFunct()" class="form-control" style="height:27px;width:260px;border-radius:5px;text-align:center;font-size: 12px;" >   
            <option value="" >--select--</option>
            <option value="Cash" >Cash</option>
            <option value="Card" >Card</option>
            </select>
            <span id=pModeinfo></span></td></tr> 
              </tbody>
             </table>
                            </div>
                        </div>
            
            --%><tr class="fieldgroup">
            <td></td>
            
             <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <td><br><input type="submit" ID="btnsave" value="Save" class="btn btn-primary" onclick="return validateForm()" style="height:35px;width:120px;border-radius:5px"/></td></tr>
            
        
         </table>

       </g:form>
    </div>
  </body>
</html>