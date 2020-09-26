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
		   tab2 { padding-right: 4em; }
		   tab3 { padding-left: 1em; }
		   tab5 { padding-right:1.3em; }   
		   tab6 { padding-left: 1em; }   
		   tab7 { padding-right: 0.4em; }
		   tab8 { padding-right:1.9em; } 
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
		   tab64 { padding-left: 1.5em; }
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
	          var doctorId = $("#doctorId");
	          var doctorIdinfo = $("#doctorIdinfo");
	          var date = $("#date");
	          var dateinfo = $("#dateinfo");
	          var status = $("#status");
	          var statusinfo = $("#statusinfo");
	          var modifiedBy = $("#modifiedBy");
	          var modifiedByinfo = $("#modifiedByinfo");
	         
	          doctorId.blur(validateDoctorId);
	           
	          date.blur(validateDate);
	          status.blur(validateStatus);
	          modifiedBy.blur(validateModifiedBy);
	           
	          
	          
	          doctorId.keyup(validateDoctorId);
	           
	          date.keyup(validateDate);
	          status.keyup(validateStatus);
	          modifiedBy.keyup(validateModifiedBy);
	          
	

	    form.submit(function(){
	       if(validateDoctorId() & validateDate() & validateStatus() & validateModifiedBy()){
	       return true;
	       }else
	       {
	       return false;
	       }

	    });
		
	function validateDoctorId(){
        if(doctorId.val().length < 1){
        	doctorId.addClass("error");
        	doctorIdinfo.text("Id should be atleast 1 number");
        	doctorIdinfo.addClass("error");
        return false;
        }else
        {
        	doctorId.removeClass("error");
        	doctorIdinfo.text("please enter DoctorId").hide();
        	doctorIdinfo.addClass("error");
        return true;
        }
        }
	function validateDate(){
        if(date.val().length < 3){
        	date.addClass("error");
        	dateinfo.text("Name should be morethan 3 letters");
        	dateinfo.addClass("error");
        return false;
        }else
        {
        	date.removeClass("error");
        	dateinfo.text("please enter Firstname").hide();
        	dateinfo.addClass("error");
        return true;
        }
        }
	 function validateStatus(){
        if(status.val().length < 1){
        	status.addClass("error");
        	statusinfo.text("Status should 0 or 1");
        	statusinfo.addClass("error");
        return false;
        }else
        {
        	status.removeClass("error");
        	statusinfo.text("please enter Status").hide();
        	statusinfo.addClass("error");
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
         <g:form controller="availability" align="center" ID="myform" action="saveavailability"  nonvalidate="nonvalidate"> 
            <div id="form-content">
            
            <div class="fieldgroup">
            <tab1><label for="doctorId">DoctorId: </label></tab1>
            <tab2><input type="text" id="doctorId" name="doctorId" value="${availability.doctorId}"></tab2><br>
            <tab3><span id=doctorIdinfo>Please enter DoctorId</span></tab3><br>
            </div>
           
            <div class="fieldgroup">
            <tab4><label for="date">Date: </label></tab4>
            <tab5><input type="text" id="date" name="date" value="${availability.date}"></tab5><br>
            <tab6><span id=dateinfo>Please enter Date</span></tab6><br>
            </div>
            <div class="fieldgroup">
            <tab7><label for="status">Status: </label><tab7>
            <tab8><input type="text" id="status" name="status" value="${availability.status}"></tab8><br>
            <tab9><span id=statusinfo>Please enter Status</span></tab9><br>
            </div>
            <div class="fieldgroup">
            <tab10><label for="modifiedBy">ModifiedBy: </label></tab10>
            <tab11><input type="text" id="modifiedBy" name="modifiedBy" value="${availability.modifiedBy}"></tab11><br>
            <tab12><span id=modifiedByinfo>please enter ModifiedBy</span></tab12><br>
            </div>
              
             <input type="hidden" id="myaction" name="myaction" value="update">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <tab64><input type="submit" ID="btnsave" value="Update" class="submit" /></tab64>
            </div>
            
        
         </div>
       </g:form>
    </div>
  </body>
</html>