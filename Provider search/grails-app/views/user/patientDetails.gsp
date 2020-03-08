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
	
	<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css"> 
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>--%>
        
  
   


<script type="text/javascript">

$(document).ready(function(){

	/*$("#patientId").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
			
var confirmPwd = $("#patientId").val();	
			
			if (patientId.val() != confirmPwd) {
	             $("#patientIdinfo").text("Please enter valid patientId");

			
	 } else {
		 $("#patientIdinfo").text("please enter valid PatientId");
	 }
		  });*/
	 $("#patientId").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#patientId").val()){
		   	 
	   		$("#patientIdinfo").text("");
	     } else {
	    	 $("#patientIdinfo").text("Please Enter Valid Id");
	     }
	   	  });

	});

function validateForm() {
	var x = document.forms["myform"]["patientId"].value;
	
	

	if (x == null || x == "") {
	    document.getElementById('patientIdinfo').style.display = 'inline';	
		 $("#patientIdinfo").text("Please Select PatientId");	
		 return false;
    }else{
		return true;
	    }	
}


$(function() {
	$('input[type=radio][name=bedStatus]').change(function() {
	        if (this.value == 'allot') {

    $("#patientId").autocomplete({
    	 
    	  source:[
    	<g:each in="${result.pat1}">
    	
        '${it}',
        
        </g:each>]
 	        
    });
	        }else if (this.value == 'transfer'){
	        	  $("#patientId").autocomplete({
	        	    	 
	            	  source:[
	            	<g:each in="${result.roomNo}">
	            	
	                '${it}',
	               
	                </g:each>]
	         	        
	            });
	}
  });
	
});

history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
 
 </script>

</head>
<%--<script>

 
$(function() {
 var x='${result.listId}'
  document.getElementById(x).className = "active";
});
</script>

<style>

.active a{
    color: white !important;
}

--%></style>

<body>
<div id="wrapper">

 <g:render template="/user/header"/> 
   <g:form  controller="user" align="center" Id="myform" name="myform" action="patientDetails1" method="POST" nonvalidate="nonvalidate">
               <div id="page-wrapper" align="center"><br><br>
            <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default"><br>
                    
                    
             <div class="row" align="center">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header"  style="color:black;font-size:20px;">Search</div>
                </div></div>
 
  
           <input type="radio" name="bedStatus" id="allot" value="allot">ByPatientId
           <input type="radio" name="bedStatus" id="transfer" value="transfer">ByRoomNo
          
  <div class="panel-body">
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
             <div class="fieldgroup">
            <label for="patientId">PatientId: </label>
            <input type="text" id="patientId" name="patientId" class="form-control" style="height:27px;width:205px;border-radius:5px">             
           <span id=patientIdinfo></span>
           </div></div></div><br>
           
            
            <div class="fieldgroup"> 
            <input type="hidden" id="mode" name="mode" value="web">
            <div align="center"> 
           <input type="submit" ID="btnsave" value="Search" class="btn btn-primary" onclick="return validateForm()" onclick="return check()" style="height:35px;width:100px;border-radius:5px"/>
            </div>
            <p style="font-Size:15px;color:red">${result.getAt("message") }</p>
            
            
            
            <%--
            
     <table style="width:40%" align="center" height="10">
  <tr>
    <th>PatientId</th>
    <th>Name</th>
    <th>Age</th>
    <th>MobileNumber</th>
    <th>Address</th>
  </tr>
  <tr>
    <td>${responseData.pat.patientId}</td>
    
    <td><g:link controller="inpatient" action="updateinpatient" >${responseData.pat.pFirstname} ${responseData.pat.pLastname}</g:link></td>
    <td>${responseData.pat.pAge}</td>
   <td> ${responseData.pat.mobileNumber}</td>
    <td>${responseData.pat.address}</td>
  </tr>
        
          </table>
            
        --%> </div></div></div></div></div></div>
        </g:form>  
        
        </div>
 
</body>
</html>