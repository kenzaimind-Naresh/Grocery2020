<html>
	<head>
	<style type="text/css">
     #error{
            display:none;
            color:red;
            width:250px;
            font-size:20px;
            font-family:Tahoma, Geneva, sans-serif;
           }

      body{
		    background-color:lightgreen;
		  }
		   tab3 { padding-left: 4em; }
		   tab5 { padding-right:1.00em; }   
		   tab6 { padding-left: 3.5em; }   
		   tab7 { padding-right: 0.4em; }
		   tab8 { padding-right: 0.9em; } 
		   tab9 { padding-left: 4em; } 
		   tab10 { padding-left: 5.5em; }
		   tab11 { padding-right: 5em; } 
		   tab12 { padding-left: 3em; }
		   tab13 { padding-left: 4.5em; }
		   tab14 { padding-right: 5.2em; }
		   tab15 { padding-left: 3em; }
		   tab16 { padding-left: 4em; }
		   tab17 { padding-right: 3.1em; }
		   tab18 { padding-left: 3.8em; }
		   tab19 { padding-left: 2.4em; }
		   tab20 { padding-right: 1.8em; }
		   tab22 { padding-left: 2em; }
		   tab23 { padding-right: 2em; }
		   tab25 { padding-left: 2em; }
		   tab26 { padding-left: 0em; }  
		   tab21 { padding-left: 4em; }
		   tab24 { padding-left: 4em; }
		   tab27 { padding-left: 4em; }
		   tab28 { padding-left: 1.8em; }
		   tab29 { padding-left: 0em; }
		   tab30 { padding-left: 4em; }
		   tab31 { padding-left: 0.8em; }
		   tab33 { padding-left: 4em; }
		   tab34 { padding-left: 0em; }
		   tab35 { padding-right: 0.9em; }
		   tab36 { padding-left: 4em; }
		   tab38 { padding-right: 2.3em; }
		   tab39 { padding-left: 4.8em; }
		   tab41 { padding-right: 1.7em; }
		   tab42 { padding-left: 4.3em; }
		   tab44 { padding-right: 1.7em; }
		   tab45 { padding-left: 3.8em; }
		   tab46 { padding-left: 2.5em; }
		   tab47 { padding-right: 1em; }
		   tab48 { padding-left: 4em; }
		   tab50 { padding-right: 3.0em; }
		   tab51 { padding-left: 4.9em; }
		   tab53 { padding-right: 1.8em; }
		   tab54 { padding-left: 4.9em; }
		   tab56 { padding-right: 2.8em; }
		   tab57 { padding-left: 4.9em; }
		   tab58 { padding-left: 0em; }
		   tab59 { padding-right: 2.8em; }
		   tab60 { padding-left: 4.9em; }
		   tab64 { padding-left: 3.5em; }
           input[type=text], select {
                  position:static;
                  width: 15%;
                  padding: 4px 10px;
                  margin: 4px 0;
                  display: inline-block;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  box-sizing: border-box;
           }
           

           input[type=submit] {
                  width: 15%;
                  background-color: #4CAF50;
                  color: white;
                  padding: 4px 10px;
                  margin: 4px 0;
                  border: none;
                  border-radius: 4px;
                  cursor: pointer;
           }

            input[type=submit]:hover {
                  background-color: red;
            }
            
             div {
                   border-radius: 1px;
                   /* background-color: yellow;*/
                   padding: 0.5px;
                  }
             span{
                  color:red;
                  }
                  
                   .form-inline > .checkbox {margin-left:5px;margin-right:5px;}
                   .form-inline  .form-control {width:auto;}
                   .form-inline label {margin-right:5px;}
   </style>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>



<script type="text/javascript">
          $(document).ready(function(){
  
	          var form = $("#myform");
	          var billId = $("#billId");
	          var billIdinfo = $("#billIdinfo");
	          var patientId = $("#patientId");
	          var patientIdinfo = $("#patientIdinfo");
	          var pFirstname = $("#pFirstname");
	          var pFirstnameinfo = $("#pFirstnameinfo");
	          var pLastname = $("#pLastname");
	          var pLastnameinfo = $("#pLastnameinfo");
	          var drugdetails = $("#drugdetails");
	          var drugdetailsinfo = $("#drugdetailsinfo");
	          var tax = $("#tax");
	          var taxinfo = $("#taxinfo");
	          var total = $("#total");
	          var totalinfo = $("#totalinfo");
	          var pMode = $("#pMode");
	          var pModeinfo = $("#pModeinfo");
	          var modifiedBy = $("#modifiedBy");
	          var modifiedByinfo = $("#modifiedByinfo");

	           billId.blur(validateBillId);
	           patientId.blur(validatePatientId);
	           pFirstname.blur(validatePFirstname);
	           pLastname.blur(validatePLastname);
	           drugdetails.blur(validateDrugdetails);
	           tax.blur(validateTax);
	           total.blur(validateTotal);
	           pMode.blur(validatePMode);
	           modifiedBy.blur(validateModifiedBy);
	          
	           billId.keyup(validateBillId);
	           patientId.keyup(validatePatientId);
	           pFirstname.keyup(validatePFirstname);
	           pLastname.keyup(validatePLastname);
	           drugdetails.keyup(validateDrugdetails);
	           tax.keyup(validateTax);
	           total.keyup(validateTotal);
	           pMode.keyup(validatePMode);
	           modifiedBy.keyup(validateModifiedBy);
	           
	

	    form.submit(function(){
	       if(validateBillId() & validatePatientId() & validatePFirstname() & validatePLastname() & validateDrugdetails() & validateTax() & validateTotal() & validatePMode() & 

	       validateModifiedBy()){
	       return true;
	       }else
	       {
	       return false;
	       }

	    });

	    function validateBillId(){
	        if(billId.val().length < 1){
	        	billId.addClass("error");
	        	billIdinfo.text("Id should be atleast 1 number");
	        	billIdinfo.addClass("error");
	        return false;
	        }else
	        {
	        	billId.removeClass("error");
	        	billIdinfo.text("please enter BillId").hide();
	        	billIdinfo.addClass("error");
	        return true;
	        }
	        }
	function validatePatientId(){
        if(patientId.val().length < 1){
	    patientId.addClass("error");
        patientIdinfo.text("Id should be atleast 1 number");
        patientIdinfo.addClass("error");
        return false;
        }else
        {
        patientId.removeClass("error");
        patientIdinfo.text("please enter PatientId").hide();
        patientIdinfo.addClass("error");
        return true;
        }
        }
	function validatePFirstname(){
        if(pFirstname.val().length < 3){
    	pFirstname.addClass("error");
    	pFirstnameinfo.text("Name should be morethan 3 letters");
    	pFirstnameinfo.addClass("error");
        return false;
        }else
        {
        pFirstname.removeClass("error");
        pFirstnameinfo.text("please enter Firstname").hide();
        pFirstnameinfo.addClass("error");
        return true;
        }
        }
	 function validatePLastname(){
        if(pLastname.val().length < 3){
     	pLastname.addClass("error");
     	pLastnameinfo.text("Name should be morethan 3 letters");
     	pLastnameinfo.addClass("error");
        return false;
        }else
        {
        pLastname.removeClass("error");
        pLastnameinfo.text("please enter Lastname").hide();
        pLastnameinfo.addClass("error");
        return true;
        }
        }
	 function validateDrugdetails(){
        if(drugdetails.val().length < 2){
        	drugdetails.addClass("error");
        	drugdetailsinfo.text("Enter correct drugdetails");
        	drugdetailsinfo.addClass("error");
        return false;
        }else
        {
        	drugdetails.removeClass("error");
        	drugdetailsinfo.text("please enter Age").hide();
        	drugdetailsinfo.addClass("error");
        return true;
        }
        }
	 function validateTax(){
        if(tax.val().length < 2){
        	tax.addClass("error");
        	taxinfo.text("Enter correct Tax");
        	taxinfo.addClass("error");
        return false;
        }else
        {
        	tax.removeClass("error");
        	taxinfo.text("please enter Tax").hide();
        	taxinfo.addClass("error");
        return true;
        }
        }
	 function validateTotal(){
        if(total.val().length < 2){
        	total.addClass("error");
        	totalinfo.text("Enter correct Total");
        	totalinfo.addClass("error");
        return false;
        }else
        {
        	total.removeClass("error");
        	totalinfo.text("please enter Total").hide();
        	totalinfo.addClass("error");
        return true;
        }
        }
	 function validatePMode(){
        if(pMode.val().length < 2){
        	pMode.addClass("error");
        	pModeinfo.text("Enter correct Mode");
        	pModeinfo.addClass("error");
        return false;
        }else
        {
        	pMode.removeClass("error");
        	pModeinfo.text("please enter Mode").hide();
        	pModeinfo.addClass("error");
        return true;
        }
        }
	
     function validateModifiedBy(){
        if(modifiedBy.val().length < 2){
        modifiedBy.addClass("error");
        modifiedByinfo.text("Enter correct ModifiedBy");
        modifiedByinfo.addClass("error");
        return false;
        }else
        {
        modifiedBy.removeClass("error");
        modifiedByinfo.text("please enter ModifiedBy").hide();
        modifiedByinfo.addClass("error");
        return true;
        }
        }
        });
   </script>
 </head>

  <body>



   <div>
         <g:form controller="pharmacy" align="center" ID="myform" action="savepharmacy"  nonvalidate="nonvalidate"> 
            <div id="form-content">
            
           
            <div class="fieldgroup">
            <tab4><label for="pFirstname">Firstname: </label></tab4>
            <tab5><input type="text" id="pFirstname" name="pFirstname"></tab5><br>
            <tab6><span id=pFirstnameinfo>Please enter Firstname</span></tab6><br>
            </div>
           
           
            
             <input type="hidden" id="myaction" name="myaction" value="delete">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <tab64><input type="submit" ID="btnsave" value="Delete" class="submit" /></tab64>
            </div>
            
        
         </div>
       </g:form>
    </div>
  </body>
</html>