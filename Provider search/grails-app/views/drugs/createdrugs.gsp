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

	$("#drugName").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
			
		 if ( $("#drugName").val().trim().match('^[a-zA-Z0-9]+$')!=null && $("#drugName").val().trim()!="") {
	   	 
			$("#drugNameinfo").text("");
	 } else {
		 $("#drugNameinfo").text("Please Enter Valid DrugName");
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
	var drugName = document.forms["myform"]["drugName"].value;
	var rate = document.forms["myform"]["rate"].value;
	var modifiedBy = document.forms["myform"]["modifiedBy"].value;

	if (drugName == null || drugName.trim() == "" || drugName.match('^[a-zA-Z0-9]+$') == null) {
	    document.getElementById('drugNameinfo').style.display = 'inline';	
		 $("#drugNameinfo").text("Please Enter DrugName");	
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
	    
	    var dlist=$('#drugName').val();
        var x=$('#datalist1');          
	    var v=$(x).find('option[value="' +dlist+ '"]');
        var d=v.attr('id');
	    
	   /// var d=document.getElementById("patientId").value;
	    
	    var split=d.split("+");
	    document.getElementById("rate").value =split[1];
  	//document.getElementById("pLastname").value =split[1];
 	////document.getElementById("testName1").value =split[0];
  	     
	}


function getdata() {
	var drugName= document.getElementById("drugName").value
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
    $("#drugName").autocomplete({
    	  source:[
    	<g:each in="${result.drug}">
        '${it.drugName}',
        </g:each>]
    });
  });


history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};

</script>
 </head>
 <body>
<g:render template="/user/pDashboard"/>

  <div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Add Drugs</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-refresh pull-right dashicon"></i>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
         <g:form controller="drugs" align="center" ID="myform" action="savedrugs"  nonvalidate="nonvalidate"> 
            <div class="form-group">
                 <div class="col-md-4 col-sm-4">
            <label for="drugName">Drug Name: </label>
            <input type="text"  name="drugName" id="drugName"  class="form-control" />
            <span id=drugNameinfo></span>
            </div>
            </div>
             
            <div class="form-group">
                 <div class="col-md-4 col-sm-4">
            <label for="rate">Rate: </label>
            <input type="text" id="rate"  name="rate" class="form-control" />
            <span id=rateinfo></span>
            </div>
            </div>
          
             <div class="form-group">
                 <div class="col-md-4 col-sm-4">
            <label for="modifiedBy">Added By: </label>
            <input type="text" id="modifiedBy" name="modifiedBy"  class="form-control" />
            <span id=modifiedByinfo></span>
            </div>
            </div>
              
             <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
              <div class="form-group">
                        <div class="col-sm-12 text-center"> 
         </div>
         </div>
         </g:form>
         </div>
         </div>
         </div>
         </div>
  </body>
</html>