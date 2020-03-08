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
		   tab1{ padding-left: 1em; }
		   tab2 { padding-right: 3.5em; }
		   tab3 { padding-left: 1em; }
		   tab5 { padding-right:4em; }   
		   tab6 { padding-left: 1em; }   
		   tab7 { padding-right: 0.4em; }
		   tab8 { padding-right:1.2em; } 
		   tab9 { padding-left: 2em; } 
		   tab10 { padding-left: 5.5em; }
		   tab11 { padding-right: 9.7em; } 
		   tab12 { padding-left: 1.5em; }
		   tab13 { padding-left: 4.5em; }
		   tab14 { padding-right: 4.4em; }
		   tab15 { padding-left: 4.4em; }
		   tab16 { padding-left: 4em; }
		   tab17 { padding-right: 7em; }
		   tab18 { padding-left: 3.8em; }
		   tab19 { padding-left: 2.4em; }
		   tab20 { padding-right: 5.8em; }
		   tab22 { padding-left: 2em; }
		   tab23 { padding-right: 2em; }
		   tab25 { padding-left: 2em; }
		   tab26 { padding-left: 0em; }  
		   tab21 { padding-left: 4em; }
		   tab24 { padding-left: 4em; }
		   tab27 { padding-left: 4em; }
		   tab28 { padding-left: 1em; }
		   tab29 { padding-right: 1.6em; }
		   tab30 { padding-left: 4em; }
		   tab31 { padding-left: 1em; }
		   tab33 { padding-left: 4em; }
		   tab34 { padding-left: 1em; }
		   tab35 { padding-right: 1.5em; }
		   tab36 { padding-left: 4em; }
		   tab38 { padding-right: 2.3em; }
		   tab39 { padding-left: 4.8em; }
		   tab41 { padding-right: 1.4em; }
		   tab42 { padding-left: 4.3em; }
		   tab44 { padding-right: 1em; }
		   tab45 { padding-left: 4.8em; }
		   tab47 { padding-right: 2.5em; }
		   tab48 { padding-left: 4.9em; }
		   tab50 { padding-right: 3.0em; }
		   tab51 { padding-left: 4.9em; }
		   tab53 { padding-right: 1.8em; }
		   tab54 { padding-left: 4.9em; }
		   tab56 { padding-right: 2.8em; }
		   tab57 { padding-left: 4.9em; }
		   tab58 { padding-left: 0em; }
		   tab59 { padding-right: 2.8em; }
		   tab60 { padding-left: 4.9em; }
		   tab64 { padding-left: 1.2em; }
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
	          var drugId = $("#drugId");
	          var drugIdinfo = $("#drugIdinfo");
	          var testName = $("#testName");
	          var testNameinfo = $("#testNameinfo");
	          var rate = $("#rate");
	          var rateinfo = $("#rateinfo");
	          var modifiedBy = $("#modifiedBy");
	          var modifiedByinfo = $("#modifiedByinfo");
	         
	          drugId.blur(validateDrugId);  
	          testName.blur(validateTestName);
	          rate.blur(validateRate);
	          modifiedBy.blur(validateModifiedBy);
	           
	          
	          
	          drugId.keyup(validateDrugId);	           
	          testName.keyup(validateTestName);
	          rate.keyup(validateRate);
	          modifiedBy.keyup(validateModifiedBy);
	          
	

	    form.submit(function(){
	       if(validateDrugId() & validateTestName() & validateRate() & validateModifiedBy()){
	       return true;
	       }else
	       {
	       return false;
	       }

	    });
		
	function validateDrugId(){
        if(drugId.val().length < 1){
        	drugId.addClass("error");
        	drugIdinfo.text("Id should be atleast 1 number");
        	drugIdinfo.addClass("error");
        return false;
        }else
        {
        	drugId.removeClass("error");
        	drugIdinfo.text("please enter DrugId").hide();
        	drugIdinfo.addClass("error");
        return true;
        }
        }
	function validateTestName(){
        if(testName.val().length < 3){
        	testName.addClass("error");
        	testNameinfo.text("Enter correct TestName");
        	testNameinfo.addClass("error");
        return false;
        }else
        {
        	testName.removeClass("error");
        	testNameinfo.text("please enter TestName").hide();
        	testNameinfo.addClass("error");
        return true;
        }
        }
	 function validateRate(){
        if(rate.val().length < 1){
        	rate.addClass("error");
        	rateinfo.text("Enter correct Rate");
        	rateinfo.addClass("error");
        return false;
        }else
        {
        	rate.removeClass("error");
        	rateinfo.text("please enter rate").hide();
        	rateinfo.addClass("error");
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
         <g:form controller="diagnosticTest" align="center" ID="myform" action="saveDiagnosticTest"  nonvalidate="nonvalidate"> 
            <div id="form-content">
            
           <div class="fieldgroup">
            <tab4><label for="testName">TestName: </label></tab4>
            <tab5><input type="text" id="testName" name="testName"></tab5><br>
            <tab6><span id=testNameinfo></span></tab6><br>
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