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
	
  
	--%><script  src="${resource(dir: 'js', file: 'createtest.js')}"></script>

<style>
.active a{
    color: white !important;
}
span{
  color:Crimson;
  }
</style>
<script type="text/javascript">
function validateForm1() {
	  alert("#$%^&*")
	 
	 var testName = document.getElementById("t1").value;
alert(testName)
}
</script>

<script type="text/javascript">
$(document).ready(function(){
	$("#pinputs1").show();
    $("#pinputs2").hide();
    $("#pinputs3").hide();
    $("#pinputs4").hide();
    $("#pinputs5").hide();
    $("#pinputs6").hide();
    $("#pinputs7").hide();
    $("#pinputs8").hide();
    $("#pinputs9").hide();
    $("#pinputs0").hide();
    $("#ref1").hide();
    $("#ref2").hide();
    $("#ref3").hide();
    $("#ref4").hide();
    $("#ref5").hide();
    $("#ref6").hide();
    $("#ref7").hide();
    $("#ref8").hide();
    $("#ref9").hide();
    $("#hide").hide();
    $("#hide1").hide();
    $("#hide2").hide();
    $("#hide3").hide();
    $("#hide4").hide();
    $("#hide5").hide();
    $("#hide6").hide();
    $("#hide7").hide();
    $("#hide8").hide();
    $("#hide9").hide();
    

	
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
        $("#ref4").show();
        $("#hide3").show();
    });
    $("#hide4").click(function(){
        $("#pinputs6").hide();
        $("#ref5").hide();
        $("#hide4").hide();
    });
    $("#show4").click(function(){
        $("#pinputs6").show();
        $("#ref5").show();
        $("#hide4").show();
    });
    $("#hide5").click(function(){
        $("#pinputs7").hide();
        $("#ref6").hide();
        $("#hide5").hide();
    });
    $("#show5").click(function(){
        $("#pinputs7").show();
        $("#ref6").show();
        $("#hide5").show();
    });
    $("#hide6").click(function(){
        $("#pinputs8").hide();
        $("#ref7").hide();
        $("#hide6").hide();
    });
    $("#show6").click(function(){
        $("#pinputs8").show();
        $("#ref7").show();
        $("#hide6").show();
    });
    $("#hide7").click(function(){
        $("#pinputs9").hide();
        $("#ref8").hide();
        $("#hide7").hide();
    });
    $("#show7").click(function(){
        $("#pinputs9").show();
        $("#ref8").show();
        $("#hide7").show();
    });
    $("#hide8").click(function(){
        $("#pinputs0").hide();
        $("#ref9").hide();
        $("#hide8").hide();
    });
    $("#show8").click(function(){
        $("#pinputs0").show();
        $("#ref9").hide();
        $("#hide8").show();
    });
   
   
});


function Multiply() {
    var inp1 = document.getElementById("rate1").value;
    var tot=document.getElementById("total1").value = inp1;
    var c=parseInt(tot);
    var a=document.getElementById("total1").value=c;
   /// var d=parseInt(a);
   // var b=c+d;
    var salesTax = c * (5 / 100);
    document.getElementById("tax").value=salesTax;
    document.getElementById("grandTotal").value=salesTax+c;   
}

function Multiply2() {
    var inp1 = document.getElementById("rate2").value;
   // var inp2 = document.getElementById("quantity2").value;
    //var imp2 = inp2 * inp1;
   var tot=document.getElementById("total2").value = inp1;
   var c=parseInt(tot);
   var a=document.getElementById("total1").value;
   var d=parseInt(a);
   var b=c+d;
    var salesTax = b * (5 / 100);
    document.getElementById("tax").value=salesTax;
    document.getElementById("grandTotal").value=salesTax+b;   
}

function Multiply3() {
    var inp1 = document.getElementById("rate3").value;
   // var inp2 = document.getElementById("quantity3").value;
   // var imp2 = inp2 * inp1;
   var tot=document.getElementById("total3").value = inp1;
   var d=parseInt(tot);
   var a=document.getElementById("total1").value;
   var e=parseInt(a);
   var b=document.getElementById("total2").value
   var f=parseInt(b);
var c=d+e+f
   
    var salesTax = c * (5 / 100);
    document.getElementById("tax").value=salesTax;
    document.getElementById("grandTotal").value=salesTax+c;   
}

function Multiply4() {
    var inp1 = document.getElementById("rate4").value;
    //var inp2 = document.getElementById("quantity4").value;
   // var imp2 = inp2 * inp1;
   var tot=document.getElementById("total4").value = inp1;
   var h=parseInt(tot);
   var g=document.getElementById("total3").value;
   var d=parseInt(g);
   var a=document.getElementById("total1").value;
   var e=parseInt(a);
   var b=document.getElementById("total2").value
   var f=parseInt(b);
var c=h+d+e+f
   
    var salesTax = c * (5 / 100);
    document.getElementById("tax").value=salesTax;
    document.getElementById("grandTotal").value=salesTax+c;   
}

function Multiply5() {
    var inp1 = document.getElementById("rate5").value;
   // var inp2 = document.getElementById("quantity5").value;
    //var imp2 = inp2 * inp1;
   var tot=document.getElementById("total5").value = inp1;
   var j=parseInt(tot);
   var i=document.getElementById("total4").value;
   var h=parseInt(i);
   var g=document.getElementById("total3").value;
   var d=parseInt(g);
   var a=document.getElementById("total1").value;
   var e=parseInt(a);
   var b=document.getElementById("total2").value
   var f=parseInt(b);
var c=j+h+d+e+f
   
  var salesTax = c * (5 / 100);
   document.getElementById("tax").value=salesTax;
  document.getElementById("grandTotal").value=salesTax+c;   
}

function Multiply6() {
    var inp1 = document.getElementById("rate6").value;
   // var inp2 = document.getElementById("quantity5").value;
    //var imp2 = inp2 * inp1;
   var tot=document.getElementById("total6").value = inp1;
   var j=parseInt(tot);
   var i1=document.getElementById("total5").value;
   var h1=parseInt(i1);
   var i=document.getElementById("total4").value;
   var h=parseInt(i);
   var g=document.getElementById("total3").value;
   var d=parseInt(g);
   var a=document.getElementById("total1").value;
   var e=parseInt(a);
   var b=document.getElementById("total2").value
   var f=parseInt(b);
var c=j+h+h1+d+e+f
   
  var salesTax = c * (5 / 100);
   document.getElementById("tax").value=salesTax;
  document.getElementById("grandTotal").value=salesTax+c;   
}


function Multiply7() {
    var inp1 = document.getElementById("rate7").value;
   // var inp2 = document.getElementById("quantity5").value;
    //var imp2 = inp2 * inp1;
   var tot=document.getElementById("total7").value = inp1;
   var j=parseInt(tot);
   var i2=document.getElementById("total6").value;
   var h2=parseInt(i2);
   var i1=document.getElementById("total5").value;
   var h1=parseInt(i1);
   var i=document.getElementById("total4").value;
   var h=parseInt(i);
   var g=document.getElementById("total3").value;
   var d=parseInt(g);
   var a=document.getElementById("total1").value;
   var e=parseInt(a);
   var b=document.getElementById("total2").value
   var f=parseInt(b);
var c=j+h+h1+h2+d+e+f
   
  var salesTax = c * (5 / 100);
   document.getElementById("tax").value=salesTax;
  document.getElementById("grandTotal").value=salesTax+c;   
}


function Multiply8() {
    var inp1 = document.getElementById("rate8").value;
   // var inp2 = document.getElementById("quantity5").value;
    //var imp2 = inp2 * inp1;
   var tot=document.getElementById("total8").value = inp1;
   var j=parseInt(tot);
   var i3=document.getElementById("total7").value;
   var h3=parseInt(i3);
   var i2=document.getElementById("total6").value;
   var h2=parseInt(i2);
   var i1=document.getElementById("total5").value;
   var h1=parseInt(i1);
   var i=document.getElementById("total4").value;
   var h=parseInt(i);
   var g=document.getElementById("total3").value;
   var d=parseInt(g);
   var a=document.getElementById("total1").value;
   var e=parseInt(a);
   var b=document.getElementById("total2").value
   var f=parseInt(b);
var c=j+h+h1+h2+h3+d+e+f
   
  var salesTax = c * (5 / 100);
   document.getElementById("tax").value=salesTax;
  document.getElementById("grandTotal").value=salesTax+c;   
}

function Multiply9() {
    var inp1 = document.getElementById("rate9").value;
   // var inp2 = document.getElementById("quantity5").value;
    //var imp2 = inp2 * inp1;
   var tot=document.getElementById("total9").value = inp1;
   var j=parseInt(tot);
   var i4=document.getElementById("total8").value;
   var h4=parseInt(i4);
   var i3=document.getElementById("total7").value;
   var h3=parseInt(i3);
   var i2=document.getElementById("total6").value;
   var h2=parseInt(i2);
   var i1=document.getElementById("total5").value;
   var h1=parseInt(i1);
   var i=document.getElementById("total4").value;
   var h=parseInt(i);
   var g=document.getElementById("total3").value;
   var d=parseInt(g);
   var a=document.getElementById("total1").value;
   var e=parseInt(a);
   var b=document.getElementById("total2").value
   var f=parseInt(b);
var c=j+h+h1+h2+h3+h4+d+e+f
   
  var salesTax = c * (5 / 100);
   document.getElementById("tax").value=salesTax;
  document.getElementById("grandTotal").value=salesTax+c;   
}

function Multiply0() {
    var inp1 = document.getElementById("rate0").value;
   // var inp2 = document.getElementById("quantity5").value;
    //var imp2 = inp2 * inp1;
   var tot=document.getElementById("total0").value = inp1;
   var j=parseInt(tot);
   var i5=document.getElementById("total9").value;
   var h5=parseInt(i5);
   var i4=document.getElementById("total8").value;
   var h4=parseInt(i4);
   var i3=document.getElementById("total7").value;
   var h3=parseInt(i3);
   var i2=document.getElementById("total6").value;
   var h2=parseInt(i2);
   var i1=document.getElementById("total5").value;
   var h1=parseInt(i1);
   var i=document.getElementById("total4").value;
   var h=parseInt(i);
   var g=document.getElementById("total3").value;
   var d=parseInt(g);
   var a=document.getElementById("total1").value;
   var e=parseInt(a);
   var b=document.getElementById("total2").value
   var f=parseInt(b);
var c=j+h+h1+h2+h3+h4+h5+d+e+f
   
  var salesTax = c * (5 / 100);
   document.getElementById("tax").value=salesTax;
  document.getElementById("grandTotal").value=salesTax+c;   
}


function getinput()
{
var DrugName="<input type='text' name='drugdetails' id='drugdetails'>";
var Quantity="<input type='text' name='quantity' id='quantity'>";
var Rate="<input type='text' name='rate' id='rate'>";
var Total="<input type='text' name='total' id='total'>";
$("#pinputs1").append(DrugName,Quantity,Rate,Total);
return false;
}


history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};


function getdata() {
	var patientId= document.getElementById("patientId").value
//alert(serviceName);
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
    	<g:each in="${result.pat1}">
    	
        '${it.patientId}',
           
        </g:each>]
    });
  });

function getdata1() {
	var testName= document.getElementById("t1").value
	var path = "/HospitalMgnt/TestData/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			testName : testName
		},
		success : function(result) {
		    document.getElementById("icdCode1").value =result.split("#")[0];
		    document.getElementById("rate1").value =result.split("#")[1];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#t1").autocomplete({
    	
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
			document.getElementById("icdCode2").value =result.split("#")[0];
		    document.getElementById("rate2").value =result.split("#")[1];
		   
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
			document.getElementById("icdCode3").value =result.split("#")[0];
		    document.getElementById("rate3").value =result.split("#")[1];
		   
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
			document.getElementById("icdCode4").value =result.split("#")[0];
		    document.getElementById("rate4").value =result.split("#")[1];
		   
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

function getdata5(){
	var testName= document.getElementById("testName5").value
	var path = "/HospitalMgnt/TestData/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			testName : testName
		},
		success : function(result) {
			//alert(result);
			document.getElementById("icdCode5").value =result.split("#")[0];
		    document.getElementById("rate5").value =result.split("#")[1];
		   
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

  
function getdata6() {
	var testName= document.getElementById("testName6").value
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
			document.getElementById("icdCode6").value =result.split("#")[0];
		    document.getElementById("rate6").value =result.split("#")[1];
		   
		},
		error : function() {
		}
	})
}

$(function() {

    $("#testName6").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
 });

function getdata7() {
	var testName= document.getElementById("testName7").value
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
			document.getElementById("icdCode7").value =result.split("#")[0];
		    document.getElementById("rate7").value =result.split("#")[1];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#testName7").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
  });
  
  
function getdata8() {
	var testName= document.getElementById("testName8").value
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
			document.getElementById("icdCode8").value =result.split("#")[0];
		    document.getElementById("rate8").value =result.split("#")[1];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#testName8").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
  });
  

function getdata9() {
	var testName= document.getElementById("testName9").value
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
			document.getElementById("icdCode9").value =result.split("#")[0];
		    document.getElementById("rate9").value =result.split("#")[1];
		   
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#testName9").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
  });


function getdata0() {
	var testName= document.getElementById("testName0").value
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
			document.getElementById("icdCode0").value =result.split("#")[0];
		    document.getElementById("rate0").value =result.split("#")[1];
		   
		},
		error : function() {
		}
	})
}

$(function() {

    $("#testName0").autocomplete({
    	
    	  source:[
    	<g:each in="${result.diag}">
    	
        '${it.testName}',
           
        </g:each>]
    });
  });


</script>

 </head>
  <body>
   
    <div id="wrapper">
   <g:render template="/user/header"/>
         <g:form controller="testData" align="center" Id="myform" name="myform" action="saveTestData"  nonvalidate="nonvalidate"> <br><br>
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
                    <div class="page-header"  style="color:black;font-size:20px;">Billing DiagnosticTest</div>
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
      <th>Test Name</th>  
                                      
      <th>ICD Code</th>  
     
      <th>Rate</th>
      
      <th>Total</th>
     
      </tr>
      </thead>
          <tbody>
            
            <tr class="fieldgroup" id="pinputs1">  
     
             <td id="test10">
           <input type="text" id="t1" name="t1"  class="form-control" onfocusout="getdata1()"  style="height:27px;width:203px;border-radius:5px">
           <span id=testNameinfo></span></td>
            <td id="test20">
           <input type="text" id="icdCode1" name="icdCode1" onkeyup="Multiply()" class="form-control" style="height:27px;width:203px;border-radius:5px">
           <span id=icdCodeinfo></span></td>
            
             <td id="test3"><input type="text" id="rate1" name="rate1" width="30" class="form-control" style="height:27px;width:203px;border-radius:5px">
            <span id=rateinfo ></span></td>
            
             <td id="test6"><input type="text" id="total1" name="total1" width="30" class="form-control" style="height:27px;width:203px;border-radius:5px" >
            <span id=totalinfo ></span></td></tr>
           <tr id="ref"><td>
           <a  id="show">Add</a>&nbsp;&nbsp;&nbsp;&nbsp;<a id="hide">Hide</a></td><td></td><td></td><td></td></tr>
         
     
      <tr class="fieldgroup" id="pinputs2"> 
            
            <td id="test10"> 
          <input type="text" id="testName2" name="testName2"  class="form-control" onfocusout="getdata2()"  style="height:27px;width:203px;border-radius:5px"><%--
          <datalist id="testName2" width="30" onchange="myFunct1()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.diag}"> 
            <option id="${i.testName}+${i.rate}" value="${i.testName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=testName2info></span></td>
             <td id="test20">
           <input type="text" id="icdCode2" name="icdCode2" onkeyup="Multiply2()" class="form-control" style="height:27px;width:203px;border-radius:5px">
          <span id=icdCode2info></span></td>  
            
             <td id="test3"><input type="text" id="rate2" name="rate2" width="30" class="form-control" style="height:27px;width:203px;border-radius:5px">
            <span id=rate2info ></span></td>
           
             <td id="test6"><input type="text" id="total2" name="total2" width="30" class="form-control" style="height:27px;width:203px;border-radius:5px">
            <span id=total2info ></span></td>
            
          <tr id="ref1"><td>
           <a  id="show1">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide1">Hide</a></td><td></td><td></td><td></td></tr>
            
     
      <tr class="fieldgroup" id="pinputs3">
                
            <td id="test10"> 
          <input type="text" id="testName3" name="testName3"   class="form-control" onfocusout="getdata3()"  style="height:27px;width:203px;border-radius:5px"><%--
          <datalist name="testName3" id="testName3" width="30" style="width: 260px" onchange="myFunct2()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.diag}"> 
            <option id="${i.testName}+${i.rate}" value="${i.testName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=testName3info></span></td>
             <td id="test20">
           <input type="text" id="icdCode3" name="icdCode3" onkeyup="Multiply3()"  class="form-control" style="height:27px;width:203px;border-radius:5px">
          <span id=icdCode3info></span></td>  
            
    
                                    
             <td id="test3"><input type="text" id="rate3" name="rate3" width="30" class="form-control" style="height:27px;width:203px;border-radius:5px">
            <span id=rate3info ></span></td>
           
            <td id="test6"><input type="text" id="total3" name="total3" width="30" class="form-control" style="height:27px;width:203px;border-radius:5px">
            <span id=total3info ></span></td>
             <tr id="ref2"><td>
           <a  id="show2">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide2">Hide</a>
         
       </div>
     <td></td><td></td><td></td></tr>
     
      <tr class="fieldgroup" id="pinputs4">  
                
            <td id="test10"> 
          <input type="text" id="testName4" name="testName4" class="form-control" onfocusout="getdata4()"  style="height:27px;width:203px;border-radius:5px"><%--
          <datalist name="testName4" id="testName4" width="30" style="width: 260px" onchange="myFunct3()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.diag}"> 
            <option id="${i.testName}+${i.rate}" value="${i.testName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=testName4info></span></td>
             <td id="test20">
           <input type="text" id="icdCode4" name="icdCode4"  class="form-control" onkeyup="Multiply4()" style="height:27px;width:203px;border-radius:5px">
          <span id=icdCode4info></span></td>
            
     <!--       <td id="test5"><input type="text" id="quantity4" name="quantity4" width="30" class="form-control" onkeyup="Multiply4()" style="height:27px;width:203px;border-radius:5px">
            <span id=quantity4info ></span></td> --> 
            
            <td id="test3"><input type="text" id="rate4" name="rate4" width="30" class="form-control" style="height:27px;width:203px;border-radius:5px">
            <span id=rate4info ></span></td>
            
             <td id="test6"><input type="text" id="total4" name="total4" width="30" class="form-control" style="height:27px;width:203px;border-radius:5px">
            <span id=total4info ></span></td>
            
             <tr id="ref3"><td>
           <a  id="show3">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide3">Hide</a>
         
       </div>
     <td></td><td></td><td></td></tr>
     
      <tr class="fieldgroup" id="pinputs5">   
                
            <td id="test10"> 
           <input type="text" id="testName5" name="testName5" class="form-control" onfocusout="getdata5()" style="height:27px;width:203px;border-radius:5px"><%--
          <datalist name="testName5" id="testName5" width="30" onchange="myFunct4()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.diag}"> 
            <option id="${i.testName}+${i.rate}" value="${i.testName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=testName5info></span></td>
            <td id="test20">
           <input type="text" id="icdCode5" name="icdCode5" class="form-control" onkeyup="Multiply5()" style="height:27px;width:203px;border-radius:5px">
          <span id=icdCode5info></span></td>
            
     <!--        <td id="test5"><input type="text" id="quantity5" name="quantity5" width="30" class="form-control" onkeyup="Multiply5()" style="height:27px;width:203px;border-radius:5px">
            <span id=quantity5info ></span></td> -->

             <td id="test3"><input type="text" id="rate5" name="rate5" width="30" class="form-control"  style="height:27px;width:203px;border-radius:5px">
            <span id=rate5info ></span></td>
            
             <td id="test6"><input type="text" id="total5" name="total5" width="30" class="form-control"  onkeyup="gtotal()" style="height:27px;width:203px;border-radius:5px">
            <span id=total5info ></span></td>  
            
            
         
          <tr id="ref4"><td>
           <a  id="show4">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide4">Hide</a>
       </div>
     <td></td><td></td><td></td></tr>
       <tr class="fieldgroup" id="pinputs6">   
                
            <td id="test10"> 
           <input type="text" id="testName6" name="testName6" class="form-control" onfocusout="getdata6()" style="height:27px;width:203px;border-radius:5px">
           <span id=testName5info></span></td>
            <td id="test20">
           <input type="text" id="icdCode6" name="icdCode6" class="form-control" onkeyup="Multiply6()" style="height:27px;width:203px;border-radius:5px">
          <span id=icdCode6info></span></td>
            
 

             <td id="test3"><input type="text" id="rate6" name="rate6" width="30" class="form-control"  style="height:27px;width:203px;border-radius:5px">
            <span id=rate6info ></span></td>
            
             <td id="test6"><input type="text" id="total6" name="total6" width="30" class="form-control"  onkeyup="gtotal()" style="height:27px;width:203px;border-radius:5px">
            <span id=total6info ></span></td>  
            
            
         
          <tr id="ref5"><td>
           <a  id="show5">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide5">Hide</a>
       </div>
     <td></td><td></td><td></td></tr>
       <tr class="fieldgroup" id="pinputs7">   
                
            <td id="test10"> 
           <input type="text" id="testName7" name="testName7" class="form-control" onfocusout="getdata7()" style="height:27px;width:203px;border-radius:5px"><%--
          <datalist name="testName5" id="testName5" width="30" onchange="myFunct4()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.diag}"> 
            <option id="${i.testName}+${i.rate}" value="${i.testName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=testName7info></span></td>
            <td id="test20">
           <input type="text" id="icdCode7" name="icdCode7" class="form-control" onkeyup="Multiply7()" style="height:27px;width:203px;border-radius:5px">
          <span id=icdCode7info></span></td>
            
     <!--        <td id="test5"><input type="text" id="quantity5" name="quantity5" width="30" class="form-control" onkeyup="Multiply5()" style="height:27px;width:203px;border-radius:5px">
            <span id=quantity5info ></span></td> -->

             <td id="test3"><input type="text" id="rate7" name="rate7" width="30" class="form-control"  style="height:27px;width:203px;border-radius:5px">
            <span id=rate7info ></span></td>
            
             <td id="test6"><input type="text" id="total7" name="total7" width="30" class="form-control"  onkeyup="gtotal()" style="height:27px;width:203px;border-radius:5px">
            <span id=total7info ></span></td>  
            
            
         
          <tr id="ref6"><td>
           <a  id="show6">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide6">Hide</a>
       </div>
     <td></td><td></td><td></td></tr>
       <tr class="fieldgroup" id="pinputs8">   
                
            <td id="test10"> 
           <input type="text" id="testName8" name="testName8" class="form-control" onfocusout="getdata8()" style="height:27px;width:203px;border-radius:5px"><%--
          <datalist name="testName5" id="testName5" width="30" onchange="myFunct4()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.diag}"> 
            <option id="${i.testName}+${i.rate}" value="${i.testName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=testName5info></span></td>
            <td id="test20">
           <input type="text" id="icdCode8" name="icdCode8" class="form-control" onkeyup="Multiply8()" style="height:27px;width:203px;border-radius:5px">
          <span id=icdCode8info></span></td>
            
     <!--        <td id="test5"><input type="text" id="quantity5" name="quantity5" width="30" class="form-control" onkeyup="Multiply5()" style="height:27px;width:203px;border-radius:5px">
            <span id=quantity5info ></span></td> -->

             <td id="test3"><input type="text" id="rate8" name="rate8" width="30" class="form-control"  style="height:27px;width:203px;border-radius:5px">
            <span id=rate8info ></span></td>
            
             <td id="test6"><input type="text" id="total8" name="total8" width="30" class="form-control"  onkeyup="gtotal()" style="height:27px;width:203px;border-radius:5px">
            <span id=total8info ></span></td>  
            
            
         
          <tr id="ref7"><td>
           <a  id="show7">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide7">Hide</a>
       </div>
     <td></td><td></td><td></td></tr>
       <tr class="fieldgroup" id="pinputs9">   
                
            <td id="test10"> 
           <input type="text" id="testName9" name="testName9" class="form-control" onfocusout="getdata9()" style="height:27px;width:203px;border-radius:5px"><%--
          <datalist name="testName5" id="testName5" width="30" onchange="myFunct4()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.diag}"> 
            <option id="${i.testName}+${i.rate}" value="${i.testName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=testName9info></span></td>
            <td id="test20">
           <input type="text" id="icdCode9" name="icdCode9" class="form-control" onkeyup="Multiply9()" style="height:27px;width:203px;border-radius:5px">
          <span id=icdCode9info></span></td>
            
     <!--        <td id="test5"><input type="text" id="quantity5" name="quantity5" width="30" class="form-control" onkeyup="Multiply5()" style="height:27px;width:203px;border-radius:5px">
            <span id=quantity5info ></span></td> -->

             <td id="test3"><input type="text" id="rate9" name="rate9" width="30" class="form-control"  style="height:27px;width:203px;border-radius:5px">
            <span id=rate9info ></span></td>
            
             <td id="test6"><input type="text" id="total9" name="total9" width="30" class="form-control"  onkeyup="gtotal()" style="height:27px;width:203px;border-radius:5px">
            <span id=total9info ></span></td>  
            
            
         
          <tr id="ref8"><td>
           <a  id="show8">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide8">Hide</a>
       </div>
     <td></td><td></td><td></td></tr>
       <tr class="fieldgroup" id="pinputs0">   
                
            <td id="test10"> 
           <input type="text" id="testName0" name="testName0" class="form-control" onfocusout="getdata0()" style="height:27px;width:203px;border-radius:5px"><%--
          <datalist name="testName5" id="testName5" width="30" onchange="myFunct4()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.diag}"> 
            <option id="${i.testName}+${i.rate}" value="${i.testName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=testName0info></span></td>
            <td id="test20">
           <input type="text" id="icdCode0" name="icdCode0" class="form-control" onkeyup="Multiply0()" style="height:27px;width:203px;border-radius:5px">
          <span id=icdCode5info></span></td>
            
     <!--        <td id="test5"><input type="text" id="quantity5" name="quantity5" width="30" class="form-control" onkeyup="Multiply5()" style="height:27px;width:203px;border-radius:5px">
            <span id=quantity5info ></span></td> -->

             <td id="test3"><input type="text" id="rate0" name="rate0" width="30" class="form-control"  style="height:27px;width:203px;border-radius:5px">
            <span id=rate0info ></span></td>
            
             <td id="test6"><input type="text" id="total0" name="total0" width="30" class="form-control"  onkeyup="gtotal()" style="height:27px;width:203px;border-radius:5px">
            <span id=total0info ></span></td>  
            
            
         
          <tr id="ref9"><td>
           <a  id="show9">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide9">Hide</a>
       </div>
     <td></td><td></td><td></td></tr>
     
     
     
   </tbody>
        
            <tr class="fieldgroup">
            <td></td>
            <td></td>
            
            <td><label for="tax">Tax: </label></td>
            <td id="test7"><input type="text" id="tax" name="tax" class="form-control" style="height:27px;width:203px;border-radius:5px">
            <span id=taxinfo ></span></td> </tr>
            
            
            
            <tr class="fieldgroup">
            <td></td>
            <td></td>
           
            <td><label for="grandTotal">GrandTotal: </label></td>
            <td id="test8"><input type="text" id="grandTotal" name="grandTotal" class="form-control" style="height:27px;width:203px;border-radius:5px">
            <span id=grandTotalinfo ></span></td></tr>
            </table><br>
            
            <table align="center">
             <tr class="fieldgroup">
            <td><label for="modifiedBy">ModifiedBy: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</label></td>
            <td id="test11"><input type="text" id="modifiedBy" name="modifiedBy" class="form-control" value="${result.uname.username }" style="height:27px;width:260px;border-radius:5px">
            <span id=modifiedByinfo></span></td>
            <td>&nbsp;&nbsp;<label for="pMode">Mode:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>            
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
            <tr class="fieldgroup">
            <td></td><td></td>
            
             <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
            
            <input type="submit" id="btnsave" value="Save" class="btn btn-primary" onclick="return validateForm()" style="height:35px;width:120px;border-radius:5px"/></td><td></td></tr>
            
          <!--    <input type="hidden" id="patientId1" name="patientId1" onchange="sum()" style="height:27px;width:260px;border-radius:5px" >-->
            <input type="hidden" id="testName1" name="testName1" onchange="sum()" style="height:27px;width:260px;border-radius:5px" >
             <input type="hidden" id="testName21" name="testName21" onchange="sum()" style="height:27px;width:260px;border-radius:5px">
              <input type="hidden" id="testName31" name="testName31" onchange="sum()" style="height:27px;width:260px;border-radius:5px">
               <input type="hidden" id="testName41" name="testName41" onchange="sum()" style="height:27px;width:260px;border-radius:5px" >
                <input type="hidden" id="testName51" name="testName51" onchange="sum()" style="height:27px;width:260px;border-radius:5px" >
            

         </table>
        </g:form>
   
  </body>
</html>