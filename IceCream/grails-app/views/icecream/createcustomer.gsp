<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
		
  		

<title>MedicalCare</title>

 <!-- Bootstrap core CSS-->
    <link href="/MedicalCare/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/MedicalCare/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/MedicalCare/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/MedicalCare/website/css/sb-admin.css" rel="stylesheet">

<style>
.site-footer{
clear: both;
height: 40px;
width: 100%;
text-align: center;
margin: 0px 0px 0px 0px;
font-family: arial, helvetica;
color:white;
font-size: 15px;
 background-color:black

}

</style>


<script type="text/javascript">


function myFunction() {
	  
	    
	    var dlist=$('#datalist1').val();
        var x=$('#patientId');          
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
	    
	   /// var d=document.getElementById("patientId").value;
	    
	    var split=d.split("+");
	    document.getElementById("pFirstname").value =split[0];
  	document.getElementById("pLastname").value =split[1];
  	document.getElementById("patientId1").value =split[2];
  	     
	}
function myFunct() {
    
   // var d=document.getElementById("drugdetails").value;
  
   var dlist=$('#datalist2').val();
        var x=$('#drugdetails');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
        //alert(d)
    
    var split=d.split("+");
    
  document.getElementById("drugdetails1").value =split[0];
 
	document.getElementById("rate").value =split[1];
	
	     
}
function myFunct1() {
    
    //var d=document.getElementById("drugdetails2").value;
    
     var dlist=$('#datalist3').val();
        var x=$('#drugdetails2');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
    
    var split=d.split("+");
    
  document.getElementById("drugdetails21").value =split[0];
 
	document.getElementById("rate2").value =split[1];
		     
}
function myFunct2() {
   
   // var d=document.getElementById("drugdetails3").value;
   
    var dlist=$('#datalist4').val();
        var x=$('#drugdetails3');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
    
    var split=d.split("+");
    
  document.getElementById("drugdetails31").value =split[0];
 
	document.getElementById("rate3").value =split[1];
		     
}
function myFunct3() {
   
    //var d=document.getElementById("drugdetails4").value;
    
     var dlist=$('#datalist5').val();
        var x=$('#drugdetails4');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
    
    var split=d.split("+");
    
  document.getElementById("drugdetails41").value =split[0];
 
	document.getElementById("rate4").value =split[1];
		     
}
function myFunct4() {
 
    //var d=document.getElementById("drugdetails5").value;
    
     var dlist=$('#datalist6').val();
        var x=$('#drugdetails5');    
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
    
    var split=d.split("+");
    
  document.getElementById("drugdetails51").value =split[0];
 
	document.getElementById("rate5").value =split[1];
		     
}


function Multiply() {
    var inp1 = document.getElementById("rate").value;
    var inp2 = document.getElementById("quantity").value;
    var imp2 = inp2 * inp1;
    var tot=document.getElementById("total").value = imp2;
    var salesTax = tot * (5 / 100);
    document.getElementById("tax").value=salesTax;
    document.getElementById("grandTotal").value=salesTax+tot;   
}

function Multiply2() {
    var inp1 = document.getElementById("rate2").value;
    var inp2 = document.getElementById("quantity2").value;
    var imp2 = inp2 * inp1;
   var tot=document.getElementById("total2").value = imp2;
   var c=parseInt(tot);
   var a=document.getElementById("total").value;
   var d=parseInt(a);
   var b=c+d;
    var salesTax = b * (5 / 100);
    document.getElementById("tax").value=salesTax;
    document.getElementById("grandTotal").value=salesTax+b;   
}

function Multiply3() {
   var inp1 = document.getElementById("rate3").value;
   var inp2 = document.getElementById("quantity3").value;
   var imp2 = inp2 * inp1;
   var tot=document.getElementById("total3").value = imp2;
   var d=parseInt(tot);
   var a=document.getElementById("total").value;
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
    var inp2 = document.getElementById("quantity4").value;
    var imp2 = inp2 * inp1;
   var tot=document.getElementById("total4").value = imp2;
   var h=parseInt(tot);
   var g=document.getElementById("total3").value;
   var d=parseInt(g);
   var a=document.getElementById("total").value;
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
    var inp2 = document.getElementById("quantity5").value;
    var imp2 = inp2 * inp1;
   var tot=document.getElementById("total5").value = imp2;
   var j=parseInt(tot);
   var i=document.getElementById("total4").value;
   var h=parseInt(i);
   var g=document.getElementById("total3").value;
   var d=parseInt(g);
   var a=document.getElementById("total").value;
   var e=parseInt(a);
   var b=document.getElementById("total2").value
   var f=parseInt(b);
var c=j+h+d+e+f
   
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


function getdata() {
	var patientId= document.getElementById("patientId").value
//alert(patientId);
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
	var drugName= document.getElementById("drugdetails").value
//alert(drugName);
	var path = "/HospitalMgnt/Drugs/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			drugName : drugName
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
	

    $("#drugdetails").autocomplete({
    	
    	  source:[
    	<g:each in="${result.drug}">
    	
        '${it.drugName}',
           
        </g:each>]
    });
  });


function getdata2() {
	var drugName= document.getElementById("drugdetails2").value
//alert(drugName);
	var path = "/HospitalMgnt/Drugs/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			drugName : drugName
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
	

    $("#drugdetails2").autocomplete({
    	
    	  source:[
    	<g:each in="${result.drug}">
    	
        '${it.drugName}',
           
        </g:each>]
    });
  });



function getdata3() {
	var drugName= document.getElementById("drugdetails3").value
//alert(drugName);
	var path = "/HospitalMgnt/Drugs/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			drugName : drugName
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
	

    $("#drugdetails3").autocomplete({
    	
    	  source:[
    	<g:each in="${result.drug}">
    	
        '${it.drugName}',
           
        </g:each>]
    });
  });


function getdata4() {
	var drugName= document.getElementById("drugdetails4").value
//alert(drugName);
	var path = "/HospitalMgnt/Drugs/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			drugName : drugName
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
	

    $("#drugdetails4").autocomplete({
    	
    	  source:[
    	<g:each in="${result.drug}">
    	
        '${it.drugName}',
           
        </g:each>]
    });
  });


function getdata5() {
	var drugName= document.getElementById("drugdetails5").value
//alert(drugName);
	var path = "/HospitalMgnt/Drugs/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			drugName : drugName
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
	

    $("#drugdetails5").autocomplete({
    	
    	  source:[
    	<g:each in="${result.drug}">
    	
        '${it.drugName}',
           
        </g:each>]
    });
  });




</script>
<script>

 
$(function() {
 var x='${result.listId}'
  document.getElementById(x).className = "active";
});
</script>

<style>

.active a{
    color: white !important;
}

</style>



 </head>
  <body>
   <g:render template="/user/header"/>
         <g:form controller="pharmacy" align="center" Id="myform" name="myform" action="savepharmacy"  nonvalidate="nonvalidate" method="POST"> <br><br>
          <table align="center">
          
         <col width="150">
         <col width="30">
         <col width="150">
         <col width="30">
         
            <tr class="fieldgroup">
            <td><label for="patientId">PatientId: </label></td>
           <tab21> <td id="test"><tab20><input type="text" id="patientId" name="patientId" onfocusout="getdata()"  style="height:27px;width:260px;border-radius:5px"></tab20><%--
            <datalist name="patientId" id="patientId" " width="30" style="height:27px;width:260px;border-radius:5px"> 
            <option value="" >--select--</option>
            <g:each var="i" in="${responseData.pat1}">
            <option id="${i.pFirstname}+${i.pLastname}+${i.patientId}" value="${i.patientId}"></option>
            </g:each>
            </datalist><br>                              
            --%><span id=patientIdinfo></span></td></tab21><td></td><td></td></tr>
             <p style="font-Size:15px;color:red">${result.getAt("message") }</p>
            <tr class="fieldgroup">
             <td><label for="pFirstname">Firstname: </label></td>
            <td id="test1"><input type="text" id="pFirstname" name="pFirstname" style="height:27px;width:260px;border-radius:5px"><br> 
            <span id=pFirstnameinfo></span></td>                       
            <td>&nbsp;&nbsp;<label for="pLastname">Lastname: </label></td>
            <td id="test2"><input type="text" id="pLastname" name="pLastname" style="height:27px;width:260px;border-radius:5px"><br>
            <span id=pLastnameinfo></span></td></tr>
            
             <table align="center">
     <thead>
      <tr>
      <th>DrugName</th>
      <th>Quantity</th>
      <th>Rate</th>
      <th>Total</th>
     
      </tr>
      </thead>
          <tbody>
            
            <tr class="fieldgroup" id="pinputs1">         
             <td id="test10">
           <input type="text" id="drugdetails" name="drugdetails" onfocusout="getdata1()" style="height:27px;width:203px;border-radius:5px"><br><%--
           <datalist id="drugdetails" onchange="myFunct()" style="height:27px;width:260px;border-radius:5px" >
           <option value="" >--select--</option>
           <g:each var="i" in="${responseData.drug}"> 
           <option id="${i.drugName}+${i.rate}" value="${i.drugName}"></option>
           </g:each>
           </datalist><br>
           --%><span id=drugdetailsinfo></span></td>
            
            <td id="test5"><input type="text" id="quantity" name="quantity" width="30" onkeyup="Multiply()" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=quantityinfo ></span></td>
            
             <td id="test3"><input type="text" id="rate" name="rate" width="30" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=rateinfo ></span></td>
            
             <td id="test6"><input type="text" id="total" name="total" width="30" style="height:27px;width:203px;border-radius:5px" ><br>
            <span id=totalinfo ></span></td></tr>
           <tr id="ref"><td>
           <a  id="show">Add</a>&nbsp;&nbsp;&nbsp;&nbsp;<a id="hide">Hide</a></td><td></td><td></td><td></td></tr>
         
     
      <tr class="fieldgroup" id="pinputs2">         
            <td id="test10"> 
            
             <input type="text" id="drugdetails2" name="drugdetails2" onfocusout="getdata2()" style="height:27px;width:203px;border-radius:5px"><br><%--
           <datalist id="drugdetails" onchange="myFunct()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
           <g:each var="i" in="${responseData.drug}"> 
           <option id="${i.drugName}+${i.rate}" value="${i.drugName}"></option>
           </g:each>
           </datalist><br>
          <%--<input type="text" id="datalist3" name="datalist3" list="drugdetails2" onchange="myFunct1()" style="height:27px;width:203px;border-radius:5px">
          <datalist id="drugdetails2" width="30" onchange="myFunct1()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.drug}"> 
            <option id="${i.drugName}+${i.rate}" value="${i.drugName}"></option>
            </g:each>
            </datalist><br>
            
            --%>
            <span id=drugdetails2info></span></td>
            
            <td id="test5"><input type="text" id="quantity2" name="quantity2" width="30" onkeyup="Multiply2()" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=quantity2info ></span></td>
                                    
             <td id="test3"><input type="text" id="rate2" name="rate2" width="30" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=rate2info ></span></td>
            
             <td id="test6"><input type="text" id="total2" name="total2" width="30" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=total2info ></span></td>
            
          <tr id="ref1"><td>
           <a  id="show1">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide1">Hide</a></td><td></td><td></td><td></td></tr>
            
     
      <tr class="fieldgroup" id="pinputs3">         
            <td id="test10"> 
             <input type="text" id="drugdetails3" name="drugdetails3" onfocusout="getdata3()" style="height:27px;width:203px;border-radius:5px"><br><%--
           <datalist id="drugdetails" onchange="myFunct()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
           <g:each var="i" in="${responseData.drug}"> 
           <option id="${i.drugName}+${i.rate}" value="${i.drugName}"></option>
           </g:each>
           </datalist><br>
          <%--<input type="text" id="datalist4" name="datalist4" list="drugdetails3" onchange="myFunct2()" style="height:27px;width:203px;border-radius:5px">
          <datalist name="drugdetails3" id="drugdetails3" width="30" style="width: 260px" onchange="myFunct2()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.drug}"> 
            <option id="${i.drugName}+${i.rate}" value="${i.drugName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=drugdetails3info></span></td>
            
            <td id="test5"><input type="text" id="quantity3" name="quantity3" width="30" onkeyup="Multiply3()" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=quantity3info ></span></td>
                                      
             <td id="test3"><input type="text" id="rate3" name="rate3" width="30" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=rate3info ></span></td>
            
            <td id="test6"><input type="text" id="total3" name="total3" width="30" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=total3info ></span></td>
             <tr id="ref2"><td>
           <a  id="show2">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide2">Hide</a>
         
       </div>
     <td></td><td></td><td></td></tr>
     
      <tr class="fieldgroup" id="pinputs4">         
            <td id="test10">
             <input type="text" id="drugdetails4" name="drugdetails4" onfocusout="getdata4()" style="height:27px;width:203px;border-radius:5px"><br><%--
           <datalist id="drugdetails" onchange="myFunct()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
           <g:each var="i" in="${responseData.drug}"> 
           <option id="${i.drugName}+${i.rate}" value="${i.drugName}"></option>
           </g:each>
           </datalist><br>
            <%-- 
          <input type="text" id="datalist5" name="datalist5" list="drugdetails4" onchange="myFunct3()" style="height:27px;width:203px;border-radius:5px">
          <datalist name="drugdetails4" id="drugdetails4" width="30" style="width: 260px" onchange="myFunct3()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.drug}"> 
            <option id="${i.drugName}+${i.rate}" value="${i.drugName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=drugdetails4info></span></td>
            
            <td id="test5"><input type="text" id="quantity4" name="quantity4" width="30" onkeyup="Multiply4()" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=quantity4info ></span></td>
            
            <td id="test3"><input type="text" id="rate4" name="rate4" width="30" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=rate4info ></span></td>
            
             <td id="test6"><input type="text" id="total4" name="total4" width="30" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=total4info ></span></td>
            
             <tr id="ref3"><td>
           <a  id="show3">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide3">Hide</a>
         
       </div>
    <td></td><td></td><td></td> </tr>
     
      <tr class="fieldgroup" id="pinputs5">         
            <td id="test10">
             <input type="text" id="drugdetails5" name="drugdetails5" onfocusout="getdata5()" style="height:27px;width:203px;border-radius:5px"><br><%--
           <datalist id="drugdetails" onchange="myFunct()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
           <g:each var="i" in="${responseData.drug}"> 
           <option id="${i.drugName}+${i.rate}" value="${i.drugName}"></option>
           </g:each>
           </datalist><br>
            <%-- 
           <input type="text" id="datalist6" name="datalist6" list="drugdetails5" onchange="myFunct4()" style="height:27px;width:203px;border-radius:5px">
          <datalist name="drugdetails5" id="drugdetails5" width="30" onchange="myFunct4()" style="height:27px;width:260px;border-radius:5px" ><br>
           <option value="" >--select--</option>
            <g:each var="i" in="${responseData.drug}"> 
            <option id="${i.drugName}+${i.rate}" value="${i.drugName}"></option>
            </g:each>
            </datalist><br>
            
            --%><span id=drugdetails5info></span></td>
            
            <td id="test5"><input type="text" id="quantity5" name="quantity5" width="30" onkeyup="Multiply5()" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=quantity5info ></span></td>
            
             <td id="test3"><input type="text" id="rate5" name="rate5" width="30" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=rate5info ></span></td>
            
             <td id="test6"><input type="text" id="total5" name="total5" width="30"  onkeyup="gtotal()" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=total5info ></span></td>  
            
            
         
          <tr id="ref4"><td>
           <a  id="show4">Add</a>
           
          &nbsp;&nbsp;&nbsp;&nbsp;<a id="hide4">Hide</a>
       </div>
     <td></td><td></td><td></td></tr>
   </tbody>
        
            <tr class="fieldgroup">
            <td></td>
            <td></td>
            <td>&nbsp;&nbsp;<label for="tax">Tax: </label></td>
            <td id="test7"><input type="text" id="tax" name="tax" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=taxinfo ></span></td> </tr>
            
            
            
            <tr class="fieldgroup">
            <td></td>
            <td></td>
            <td>&nbsp;&nbsp;<label for="grandTotal">GrandTotal: </label></td>
            <td id="test8"><input type="text" id="grandTotal" name="grandTotal" style="height:27px;width:203px;border-radius:5px"><br>
            <span id=grandTotalinfo ></span></td></tr>
            </table><br>
            
            <table align="center">
             <tr class="fieldgroup">
            <td><label for="modifiedBy">ModifiedBy: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</label></td>
            <td id="test11"><input type="text" id="modifiedBy" name="modifiedBy" value="${result.uname.username }" style="height:27px;width:260px;border-radius:5px"><br>
            <span id=modifiedByinfo></span></td>
            <td>&nbsp;&nbsp;<label for="pMode">Mode:</label></td>            
            <td id="test9"><select name="pMode" id="pMode" onchange="myFunct()" style="height:27px;width:260px;border-radius:5px;text-align:center;font-size: 12px;" ><br>   
            <option value="" >--select--</option>
            <option value="Cash" >Cash</option>
            <option value="Card" >Card</option>
            </select><br>
            <span id=pModeinfo></span></td></tr> 
             
            
            <tr class="fieldgroup">
            <td></td><td></td>
            
             <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <td><br><input type="submit" ID="btnsave" value="Save" class="submit" onclick="return validateForm()" style="height:35px;width:120px;border-radius:5px"/></td><td></td></tr>
            
          <!--    <input type="hidden" id="patientId1" name="patientId1" onchange="sum()" style="height:27px;width:260px;border-radius:5px" >
            <input type="hidden" id="drugdetails1" name="drugdetails1" onchange="sum()" style="height:27px;width:260px;border-radius:5px" >
             <input type="hidden" id="drugdetails21" name="drugdetails21" onchange="sum()" style="height:27px;width:260px;border-radius:5px">
              <input type="hidden" id="drugdetails31" name="drugdetails31" onchange="sum()" style="height:27px;width:260px;border-radius:5px">
               <input type="hidden" id="drugdetails41" name="drugdetails41" onchange="sum()" style="height:27px;width:260px;border-radius:5px" >
                <input type="hidden" id="drugdetails51" name="drugdetails51" onchange="sum()" style="height:27px;width:260px;border-radius:5px" >-->
            

         </table>
         </table>
        </g:form>
  
<br><br>
<div class="footer site-footer">
<div align="center">
<p>Copyright © 2018. MedicalCare. All right reserved.</p>
</div>
</div>
<!-- Bootstrap core JavaScript-->
    <script src="/MedicalCare/website/vendor/jquery/jquery.min.js"></script>
    <script src="/MedicalCare/website/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/MedicalCare/website/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="/MedicalCare/website/vendor/chart.js/Chart.min.js"></script>
    <script src="/MedicalCare/website/vendor/datatables/jquery.dataTables.js"></script>
    <script src="/MedicalCare/website/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/MedicalCare/website/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="/MedicalCare/website/js/demo/datatables-demo.js"></script>
    <script src="/MedicalCare/website/js/demo/chart-area-demo.js"></script>
    
    
		</body>
			</html>