<!DOCTYPE html>
<html>
<head>
 	<style type="text/css">
    
.ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;} 
                   
   </style>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
<%-- <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
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
	 
--%>
<script type="text/javascript">
$(document).ready(function(){

$("#packName").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	
	
	 if ( $("#packName").val().trim().match('^[a-zA-Z]*$')!=null && $("#packName").val().trim()!="") {
   	 
		$("#packNameinfo").text("");
 } else {
	 $("#packNameinfo").text("Please Enter Valid PackName");
 }
	  });
$("#packPrice").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	
		
		if ( $("#packPrice").val().trim().match('^[0-9]*$' )!=null && $("#packPrice").val().trim()!=""){
   	 
		$("#packPriceinfo").text("");
 } else {
	 $("#packPriceinfo").text("Please Enter PackPrice");
 }
	  });

$("#createdBy").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	

		if ( $("#createdBy").val().trim().match('^[a-zA-Z]*$')!=null && $("#createdBy").va l().trim()!="") {
		
		$("#createdByinfo").text("");
 } else {
	 $("#createdByinfo").text("Please Enter CreatedBy");
 }
	  });

});
function validateForm() {
var packName = document.forms["myform"]["packName"].value;
var packPrice = document.forms["myform"]["packPrice"].value;
var createdBy = document.forms["myform"]["createdBy"].value;

if (packName == null || packName.trim() == "" || packName.match('^[a-zA-Z]*$') == null) {
    document.getElementById('packNameinfo').style.display = 'inline';	
	 $("#packNameinfo").text("Please Enter PackName");	
	 return false;
    	 }

if (packPrice == null || packPrice.trim() == "" || packPrice.match('^[0-9]*$') == null) {
	document.getElementById('packPriceinfo').style.display = 'inline';
	 $("#packPriceinfo").text("Please Select PackPrice");
	 return false;
}

if (createdBy == null || createdBy.trim() == "" || createdBy.match('^[a-zA-Z]*$') == null) {
	document.getElementById('createdByinfo').style.display = 'inline';
	 $("#createdByinfo").text("Please Enter CreatedBy");
	 return false;
}else{
	return true;
    }
}
</script>
<%--<style>

.active a{
    color: white !important;
}

</style>

 --%></head>
 <body>
         <div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Payee</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-key pull-right dashicon"></i>
            </div>
        </div>
     
       <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                <g:form class="form-horizontal" id="myform" name="myform" controller="test" method="post" action="paymentdo">
                 <div class="form-group">
                 <div class="col-sm-6">
            <label for="dFirstname1" style="padding-right:130px">FirstName: </label>
            <input type="text" id="dFirstname1" name="dFirstname1" class="form-control" disabled value="Manoj" />
            <span id=packNameinfo></span>
            </div></div>
            
         <div class="form-group">
                 <div class="col-sm-6">
            <label for="packName" style="padding-right:130px">PackName: </label>
            <input type="text" id="packName1" name="packName1" class="form-control" disabled value="similar" />
            <span id=packNameinfo></span>
            </div></div>
      
  <div class="form-group">
                 <div class="col-sm-6">
    <label for="packPrice" style="padding-right:130px">Pack Price </label>
    <input type="text" class="form-control" id="packPrice1" disabled name="packPrice1" value="3" />
  <span id="packPriceinfo" style="color:red"></span>
  </div>
  </div>
  
  <div class="form-group">
                 <div class="col-sm-6">
    <label for="phone" style="padding-right:155px">Phone </label>
    <input type="text" class="form-control" id="phone1" name="phone1" disabled value="9652702097"/>
  <span id="phoneinfo" style="color:red"></span>
  </div>
  </div>
  
			
			  <div class="form-group ic-no-mgbottom">
                            <div class="col-sm-6 text-center">     
    <button type="submit" id="btnsave" class="btn btn-primary"  novalidate="novalidate">Pay now</button>
    </div></div>
    
    
    <input type="hidden" name="productinfo" value="test" > 
                      <input  type="hidden" name="email" id="email" value="nmandaloji@gmail.com"   />
                        <input  type="hidden" name="phone" id="phone" value="9652702097"   />
                         <input  type="hidden" name="packName" id="packName" value="similar"   />
                          <input  type="hidden" name="amount" id="amount" value="3"   />
                            <input  type="hidden" name="firstname" id="firstname" value="Manoj"   />
                    <input type="hidden" name="surl"  value="http://localhost:9001/ProviderSearch/user/doctorDashboard" size="64"  />
                    <input type="hidden" name="furl" value="http://localhost:9001/ProviderSearch/user/doctorDashboard"  size="64" />
                    <input type="hidden" name="service_provider" value="payu_paisa" />
             <input type="hidden" id="key" name="key" value="rjQUPktU" />
            <input type="hidden" name="hash_string" value="" />
            <input type="hidden" name="hash" />

            <input type="hidden" name="txnid"/>
    </g:form></div></div></div></div>       
</body>
</html>
