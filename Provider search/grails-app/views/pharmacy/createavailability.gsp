<html>
	<head>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
  
  .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}
  </style>

<script type="text/javascript">
$(document).ready(function(){
	if(document.getElementById("choice1").checked == true){
		document.getElementById("status").value = "1";
	}else{
		document.getElementById("status").value = "0";
		}
});

function check() {
	if(document.getElementById("choice1").checked == true){
		document.getElementById("status").value = "1";
	}else{
		document.getElementById("status").value = "0";
		}
}
</script>

<script>
  $( function() {
	  $("#drugName").autocomplete({
	       source:[
	     <g:each in="${result.drug}">
	     
	     '${it.drugName}', 
	           
	        </g:each>]
	    });

	  } );

  function getdata() {
		 var drugName= document.getElementById("drugName").value
		 var path = "/ProviderSearch/pharmacy/getdata";
		 $.ajax({
		  url : path,
		  type : "get",
		  data :{
		   drugName : drugName,
		  },
		  success : function(res) {
			  document.getElementById("drugId").value =res.split("#")[0];
			  document.getElementById("rate").value =res.split("#")[1];
			  if(res.split("#")[2] =="1"){
				  document.getElementById("choice1").checked = true
				  }else{
					  document.getElementById("choice1").checked = false
					  }
		  }
		 })
		} 
</script>

<style>

input[type='checkbox'] {
	-webkit-font-smoothing: antialiased;
	text-rendering: optimizeSpeed;
	width: 15px;
	height: 15px;
	margin: 0;
	margin-right: 1px;
	display: block;
	float: right;
	position: relative;
	cursor: pointer;
}

input[type='checkbox']:after {
	content: "";
	vertical-align: middle;
	text-align: center;
	line-height: 15px;
	position: absolute;
	cursor: pointer;
	height: 15px;
	width: 15px;
	left: 0;
	top: 0;
	font-size: 13px;
	-webkit-box-shadow: inset 0 1px 1px #5F95FC, 0 1px 0 #44a081;
	-moz-box-shadow: inset 0 1px 1px #5F95FC, 0 1px 0 #44a081;
	box-shadow: inset 0 1px 1px #5F95FC, 0 1px 0 #44a081;
	background: #44a081;
}

input[type='checkbox']:hover:after, input[type='checkbox']:checked:hover:after {
	background: #44a081;
	content: '\2714';
	color: white;
}

input[type='checkbox']:checked:after {
	background: #44a081;
	content: '\2714';
	color: #fff;
}


</style>

 </head>

  <body>
<g:render template="/user/pDashboard"/> 
	<div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Drug Availability</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-medkit pull-right dashicon"></i>
            </div>
        </div>
        
        
        
        
        
   
    <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                
    
         <g:form class="form-horizontal" controller="pharmacy" id="myform" action="saveavailability"  nonvalidate="nonvalidate"> 
            <div class="form-group">
                 <div class="col-sm-5">
            <label style="color: black;">Drug Name:</label>
           <input type="text" id="drugName" name="drugName" class="form-control" onfocusOut="getdata()" >
            <span id=drugNameinfo></span>
            <g:link controller="pharmacy" action="createdrugs" style="color:green">Add Drug</g:link>
            </div>
           
           <div class="col-sm-2">
            <label style="color: black;">Rate:</label>
           <input type="text" id="rate" name="rate" class="form-control" disabled >
            <span id=drugNameinfo></span>
            </div>
                 <div class="col-sm-2">
            <label style="color: black;">Status: </label><br>
           <label> <input id="choice1" type="checkbox" onclick="check()"></label>
            </div>
                 <div class="col-sm-3">
            <label style="color: black;">Discount: </label>
          <input type="text" id="discount" name="discount" class="form-control" >
            </div></div>
           
           <input type="hidden" id="drugId" name="drugId" >
            <input type="hidden" id="myaction" name="myaction" value="save">
             <input type="hidden" id="status" name="status" >
            <input type="hidden" id="mode" name="mode" value="web"> 
             <div class="form-group ic-no-mgbottom">
                            <div class="col-sm-11 text-center">
           <input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="btn btn-primary" />
            </div>
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