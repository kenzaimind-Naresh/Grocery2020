<html>
	<head>
	<style type="text/css">
	 span{
  color:Crimson;
  }       
     .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}                  
   </style>
   
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	
	<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
   


--%><script type="text/javascript">


$(document).ready(function(){

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

<%--

function check()
{
    if (!myform.patientId.value)
    {
        alert ("Please Enter a PatientId");
        return (false);
    }
    return (true);
}
--%>


$(function() {
	
    $("#patientId").autocomplete({
    	 
    	  source:[
    	<g:each in="${result.pat1}">
    	
        '${it}',
           
        </g:each>]
 	        
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

--%><style>

.active a{
    color: white !important;
}

</style>

<body>
<div id="wrapper">
<g:render template="/user/header"/>
   <g:form  controller="user"  Id="myform" name="myform" action="dischargeSheet1" method="POST" nonvalidate="nonvalidate">
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
                    <div class="page-header"  style="color:black;font-size:20px;">DischargeSheet Search</div>
                </div></div>
            

  <div class="panel-body">
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
             <div class="fieldgroup">
            <label for="patientId">PatientId: </label>
            <input type="text" id="patientId" name="patientId" class="form-control" style="height:27px;width:205px;border-radius:5px">             
           <span id=patientIdinfo></span>
           </div></div></div><br>
            
            
            
            <input type="hidden" id="mode" name="mode" value="web"> 
            <div align="center">
            <input type="submit" ID="btnsave" value="Search" class="btn btn-primary" onclick="return validateForm()" onclick="return check()" style="height:35px;width:100px;border-radius:5px"/>
            </div>
            <p style="font-Size:15px;color:red">${result.getAt("message") }</p><br><br><br>
            
     
            
        </g:form>   
        </div>
       
      
       <g:if  test="${result.dischargedata !=[]}">
    
 
     
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
      
    <tr>
    <th>PatientId</th>
    <th>Date</th>
    <th>ServiceName</th>
    <th>Quantity</th>
    <th>Rate</th>
    <th>Total</th>
    </tr>
      <g:each var="i" in="${result.dischargedata}">
    
        
    <tr>
    <td>${i.patientId}</td>
    <td>${i.date}</td>
    <td>${i.serviceName}</td>
    <td>${i.quantity}</td>
    <td>${i.rate}</td>
    <td>${i.total}</td>
    </tr>
           </g:each>
          </table>
          </div></div>
          </g:if><br><br>
      
       <p align="center" >
       <g:if test="${result.offset > 0}">
     <button style="height:35px;width:100px;border-radius:5px"><g:link type="button" controller="user" action="offsetlist" params="${[offset:result.offset-10]}" value="Previous">Previous</g:link></button>
    </g:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    <g:if test="${result.offset/10 < (result.totalcount)/10-1}">
     <button style="height:35px;width:100px;border-radius:5px"> <g:link type="button" controller="user" action="offsetlist"   params="${[offset: result.offset+10]}" value="Next" style="height:35px;width:100px;border-radius:5px">Next</g:link></button>
       
       </g:if>   
 </p></div></div></div></div></div></div></div></div></div>
  </body>
</html>


