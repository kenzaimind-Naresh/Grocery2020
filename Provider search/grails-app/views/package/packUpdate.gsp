<html>
	<head>
	<style type="text/css">
    
.ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;} 
                   
   </style>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	

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
		
		if ( $("#packPrice").val().trim().match('^[a-zA-Z0-9]*$' )!=null && $("#packPrice").val().trim()!=""){
   	 
		$("#packPriceinfo").text("");
 } else {
	 $("#packPriceinfo").text("Please Enter PackPrice");
 }
	  });

$("#duration").focusout(function(){
	$( this ).find( "span" ).css( "display", "inline" );	
	
	if ( $("#duration").val().trim() !=null && $("#duration").val().trim()!=""){
	 
	$("#durationinfo").text("");
} else {
 $("#durationinfo").text("Please Enter Duration");
}
  });

$("#createdBy").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	

		if ( $("#createdBy").val().trim().match('^[a-zA-Z]*$')!=null && $("#createdBy").val().trim()!="") {
		
		$("#createdByinfo").text("");
 } else {
	 $("#createdByinfo").text("Please Enter CreatedBy");
 }
	  });

});
function validateForm() {
var packName = document.forms["myform"]["packName"].value;
var packPrice = document.forms["myform"]["packPrice"].value;
var duration = document.forms["myform"]["duration"].value;
var createdBy = document.forms["myform"]["createdBy"].value;

if (packName == null || packName.trim() == "" || packName.match('^[a-zA-Z]*$') == null) {
    document.getElementById('packNameinfo').style.display = 'inline';	
	 $("#packNameinfo").text("Please Enter PackName");	
	 return false;
    	 }

if (packPrice == null || packPrice.trim() == "" || packPrice.match('^[a-zA-Z0-9]*$') == null) {
	document.getElementById('packPriceinfo').style.display = 'inline';
	 $("#packPriceinfo").text("Please Select PackPrice");
	 return false;
}

if (duration == null || duration.trim() == "") {
	document.getElementById('durationinfo').style.display = 'inline';
	 $("#durationinfo").text("Please Select Duration");
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

$(document).ready(function(){
var duration = '${result.pack.duration}';
document.getElementById("duration").value = duration;
});
</script>

 </head>
 <body>
 
 <g:render template="/user/aDashboard"/>
<div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Package Update</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-archive pull-right dashicon"></i>
            </div>
        </div>  
         <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
         <g:form class="form-horizontal" controller="package" id="myform" action="updatepackage"  nonvalidate="nonvalidate"> 
            <div class="form-group">
             <div class="col-md-4 col-sm-4">
            <label>PackName: </label>
            <input type="text" id="packName" name="packName" class="form-control" value="${result.pack.packName}" />
            <span id=packNameinfo></span>
            </div></div>
            
            
             <div class="form-group">
                            <div class="col-md-4 col-sm-4">
            <label>PackPrice(INR): </label>
            <input type="text" id="packPrice" name="packPrice" class="form-control" value="${result.pack.packPrice}" />
            <span id=packPriceinfo></span>
            </div></div>
            
             <div class="form-group">
                            <div class="col-md-4 col-sm-4">
            <label >Duration: </label>
            <select id="duration" name="duration" class="form-control">
            	<option value="1month">1month</option>
            	<option value="2month">2month</option>
            	<option value="3month">3month</option>
            	<option value="4month">4month</option>
            	<option value="5month">5month</option>
            	<option value="6month">6month</option>
            	<option value="7month">7month</option>
            	<option value="8month">8month</option>
            	<option value="9month">9month</option>
            	<option value="10month">10month</option>
            	<option value="11month">11month</option>
            	<option value="12month">12month</option>
            </select>
            <span id=durationinfo></span>
            </div></div>
            
            <div class="form-group">
                            <div class="col-md-4 col-sm-4">
            <label>CreatedBy: </label>
            <input type="text" id="createdBy1" name="createdBy1" disabled class="form-control" value="${result.user.username }" />
            <span id=createdByinfo></span>
           </div></div>
              
             <input type="hidden" id="myaction" name="myaction" value="update">
              <input type="hidden" id="createdBy" name="createdBy" value="${result.user.username }">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <div align="center">
            <input type="submit" ID="btnsave" value="Update" onclick="return validateForm()" class="btn btn-primary" / />
           </div></g:form>
           </div></div></div></div>
           
            <div class="footer site-footer">
        <div class="container copy-foot">
            <div class="row">
                <div class="col-xs-12 col-md-6">
                    <ul>
                        <li><a href="#">Terms and Conditions</a></li>
                        <li class="foot-vert-line">|</li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-md-6">
                    <p>Copyright © 2017. Provider Search. All right reserved.</p>
                </div>
            </div>
        </div>
        </div>
  </body>
</html>