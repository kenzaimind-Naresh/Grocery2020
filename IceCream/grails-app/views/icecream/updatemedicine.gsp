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
	 

--%><style>
span{
  color:Crimson;
  }
</style>
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


	 history.pushState({ page: 1 }, "Title 1", "#no-back");
	  window.onhashchange = function (event) {
	    window.location.hash = "no-back";
	  };


	  function getdata() {
	  	var drugName= document.getElementById("drugName").value
	 // alert(drugName);
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

         <g:form controller="createmedicine" align="center" ID="myform" action="saveMedicine"  nonvalidate="nonvalidate"> 
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
                    <div class="page-header"  style="color:black;font-size:20px;">Edit Drugs</div>
                </div></div>
            
           
            <div class="panel-body">
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                 <div class="fieldgroup">
            <label for="medicineName">Medicine Name: </label>
            <input type="text"  name="medicineName" id="medicineName"  class="form-control" style="height:27px;width:205px;border-radius:5px" value="${result.Createmedicine.medicineName }"/>
            <span id=medicineNameinfo></span>
            </div></div></div>
            
             <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
            <div class="fieldgroup">
            <label for="wholesalePrice">wholesale Price: </label>
            <input type="text" id="wholesalePrice"  class="form-control"  name="wholesalePrice" style="height:27px;width:205px;border-radius:5px" value="${result.Createmedicine.wholesalePrice}">
            <span id=wholesalePriceinfo></span>
            </div></div></div>
            
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
            <div class="fieldgroup">
            <label for="retailPrice">Retail Price: </label>
            <input type="text" id="retailPrice"  class="form-control"  name="retailPrice" style="height:27px;width:205px;border-radius:5px" value="${result.Createmedicine.retailPrice }">
            <span id=retailPriceinfo></span>
            </div></div></div>
            
            
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
            <div class="fieldgroup">
            <label for="mQuantity">Quantity: </label>
            <input type="text" id="mQuantity"  class="form-control"  name="mQuantity" style="height:27px;width:205px;border-radius:5px" value="${result.Createmedicine.mQuantity }">
            <span id=mQuantityinfo></span>
            </div></div></div>
            
            
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
            <div class="fieldgroup">
            <label for="createdBy">CreatedBy: </label>
            <input type="text" id="createdBy"  class="form-control"  name="createdBy" style="height:27px;width:205px;border-radius:5px" value="${result.uname.userName }">
            <span id=createdByinfo></span>
            </div></div></div>
            
            
            
            
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
            <div class="fieldgroup">
            <label for="modifiedBy">Modified By: </label>
            <input type="text" id="modifiedBy" name="modifiedBy"  class="form-control" style="height:27px;width:205px;border-radius:5px" value="${result.uname.userName }">
            <span id=modifiedByinfo></span>
            </div></div></div><br>
              
             <input type="hidden" id="myaction" name="myaction" value="update">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <tab64><input type="submit" ID="btnsave" value="Update" class="btn btn-primary" onclick="return validateForm()" style="height:35px;width:100px;border-radius:5px" /></tab64>
            </div>
   
    </div>
        </div></div></div>
       </g:form>
    </div>
  </body>
</html>