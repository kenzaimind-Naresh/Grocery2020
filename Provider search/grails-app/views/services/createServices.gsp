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
  <link rel="stylesheet" href="/resources/demos/style.css">     
	
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	 
--%><script type="text/javascript">
$(document).ready(function(){

$("#serviceName").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	
		
	 if ( $("#serviceName").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#serviceName").val().trim()!="") {
   	 
		$("#serviceNameinfo").text("");
 } else {
	 $("#serviceNameinfo").text("Please Enter Valid ServiceName");
 }
	  });

$("#rate").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	

		if ( $("#rate").val().trim().match('^[0-9]+$' )!=null && $("#rate").val().trim()!="") {
		
		$("#rateinfo").text("");
 } else {
	 $("#rateinfo").text("Please Enter Rate");
 }
	  });
$("#modifiedBy").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	
	
	 if ( $("#modifiedBy").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#modifiedBy").val().trim()!=""){
   	 
		$("#modifiedByinfo").text("");
 } else {
	 $("#modifiedByinfo").text("Please Enter ModifiedBy");
 }
	  });

});
function validateForm() {
var serviceName = document.forms["myform"]["serviceName"].value;
var rate = document.forms["myform"]["rate"].value;
var modifiedBy = document.forms["myform"]["modifiedBy"].value;

if (serviceName == null || serviceName.trim() == "" || serviceName.match('^[a-zA-Z\ \]{3,30}$') == null) {
    document.getElementById('serviceNameinfo').style.display = 'inline';	
	 $("#serviceNameinfo").text("Please Enter ServiceName");	
	 return false;
    	 }

if (rate == null || rate.trim() == "" || rate.match('^[0-9]+$' ) == null) {
	document.getElementById('rateinfo').style.display = 'inline';
	 $("#rateinfo").text("Please Enter Rate");
	 return false;
}

if (modifiedBy == null || modifiedBy.trim() == "" || modifiedBy.match('^[a-zA-Z\ \]{3,30}$') == null) {
	document.getElementById('modifiedByinfo').style.display = 'inline';
	 $("#modifiedByinfo").text("Please Enter ModifiedBy");
 	 return false;
}else{
	return true;
    }
}


function myFunction() {
	    
	    var dlist=$('#serviceName').val();
        var x=$('#datalist1');          
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
	    
	   /// var d=document.getElementById("patientId").value;
	    
	    var split=d.split("+");
	    document.getElementById("rate").value =split[1];
  	//document.getElementById("pLastname").value =split[1];
 	////document.getElementById("testName1").value =split[0];
  	     
	}


history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};

function getdata() {
	var serviceName= document.getElementById("serviceName").value
//alert(serviceName);
	var path = "/HospitalMgnt/Services/getdata";
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

</script>
<%--<script>

 
$(function() {
 var x='${result.listId}'
  document.getElementById(x).className = "active";
});
</script>

--%><style>

.active a{
    color: white !important;
}

</style>

 </head>
 <body>
 <div id="wrapper">
<g:render template="/user/header"/>

 
         <g:form controller="services" align="center" ID="myform" action="saveServices"  nonvalidate="nonvalidate"> 
            <div id="page-wrapper" align="center"><br><br>
            <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
            
             <div class="row" align="center">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header"  style="color:black;font-size:20px;">Add Services</div>
                </div></div>
           
            <div class="panel-body">
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
             <div class="fieldgroup">
            <label for="serviceName">Service Name: </label></tab4>
            <input type="text"  name="serviceName" id="serviceName" onfocusout="getdata()" class="form-control" style="height:27px;width:205px;border-radius:5px" />
            <span id=serviceNameinfo></span>
            </div></div></div>
            
            <div class="panel-body">
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
            <div class="fieldgroup">
            <label for="rate">Rate: </label>
            <input type="text" id="rate" name="rate" class="form-control" style="height:27px;width:205px;border-radius:5px">
            <span id=rateinfo></span>
            </div></div></div>
            
            <div class="panel-body">
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
            <div class="fieldgroup">
            <label for="modifiedBy">Modified By: </label>
            <input type="text" id="modifiedBy" name="modifiedBy" value="${result.uname.username }" class="form-control" style="height:27px;width:205px;border-radius:5px">
            <span id=modifiedByinfo></span>
            </div></div></div><br>
              
             <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <div align="center">
            <input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="btn btn-primary" style="height:35px;width:100px;border-radius:5px"/>
            </div></div>
            
        
         </div></div></div></div></div>
         </div>
       </g:form>
    </div>
  </body>
</html>