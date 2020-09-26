<html>
	<head>
	<style type="text/css">
	span{
  color:Crimson;
  }       
       </style>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script><%--
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
	--%><script  src="${resource(dir: 'js', file: 'createinpat.js')}"></script>
<script type="text/javascript">


$(function () {
	
       $("#roomNo1").show();
       $("#roomNo2").show();
       $("#roomNo3").show();
       $("#serviceType").change(function () {
    	  
           if ($(this).val() == "SemiPrivate") {
               $("#roomNo1").show();
               $("#roomNo2").hide();
               $("#roomNo3").hide();            
               }
          else if ($(this).val() == "Special") {
               $("#roomNo1").hide();
               $("#roomNo2").show();
               $("#roomNo3").hide();  
               }
         else if($(this).val() == "Delux") {
               $("#roomNo1").hide();
               $("#roomNo2").hide();
               $("#roomNo3").show();  
               }
       });
    });






//function myFunction() {
    
   // var d=document.getElementById("patientId").value;
    
  //  var split=d.split("+");
    document.getElementById("pFirstname").value =split[0];
	document.getElementById("pLastname").value =split[1];
	
	document.getElementById("patientId1").value =split[2];
	document.getElementById("admin").value =split[3];
	document.getElementById("mobileNumber").value =split[4];
	document.getElementById("alternateMobile").value =split[5];
	document.getElementById("email").value =split[6];
	document.getElementById("modifiedBy").value =split[7];
	     



   
</script>
<script type="text/javascript">

</script>
           
 </head>
<script><%--

 
$(function() {
 var x='${responseData.listId}'
  document.getElementById(x).className = "active";
});
--%></script>

<style>

.active a{
    color: white !important;
}

</style>

  <body>
<div id="wrapper">

 <g:render template="/user/aDashboard"/>
         <g:form controller="inpatient"  Id="myform" name="myform" action="saveinpatient"  params="[fromDate:(new Date().time)]" nonvalidate="nonvalidate">
        <div id="page-wrapper"><br><br><br>
            <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                    
                     <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header"  align="center" style="color:black;font-size:20px">Update In-Patient</div>
                </div></div>
         
            <div class="panel-body" >
            <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="patientId">PatientId: </label>
           <input type="text" id="patientId" name="patientId" class="form-control" onchange="sum()" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.patientId}" disabled>                             
            <span id=patientIdinfo></span></div></div>
             <div class="col-lg-6">
                 <div class="fieldgroup"> 
           <label for="pFirstname" style="font-color:black;">FirstName: </label>
           <input type="text" id="pFirstname" name="pFirstname" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.pFirstname}" disabled>
           <span id=pFirstnameinfo></span> </div></div></div>
           
            
            <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
           <label for="pLastname">LastName: </label>
           <input type="text" id="pLastname" name="pLastname" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.pLastname}" disabled>
           <span id=pLastnameinfo></span></div></div>
           <div class="col-lg-6">
                 <div class="fieldgroup">
           <label for="address">Address: </label>
           <input type="text" id="address" name="address" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.address}" disabled>
           <span id=addressinfo></span></div></div></div>
           
            <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="mobileNumber">MobileNumber: </label>
            <input type="text" id="mobileNumber" name="mobileNumber" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.mobileNumber}" disabled>
            <span id=mobileNumberinfo></span> </div></div> 
             <div class="col-lg-6">
                 <div class="fieldgroup">        
            <label for="reference">Reference: </label>
            <input type="text" id="reference" name="reference" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.reference}" disabled>  
            <span id=referenceinfo></span></div></div></div>
                     
           <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="nominee">Nominee: </label>
           <input type="text" id="nominee" name="nominee" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.nominee}" disabled> 
            <span id=nomineeinfo></span></div></div>
            <div class="col-lg-6">
                 <div class="fieldgroup"> 
            <label for="alternateMobile">AlternateMobile: </label>
            <input type="text" id="alternateMobile" name="alternateMobile" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.alternateMobile}" disabled>
            <span id=alternateMobileinfo></span></div></div></div>
                      
              <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">           
            <label for="email">Email: </label>
            <input type="text" id="email" name="email" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.email}" disabled>
            <span id=emailinfo></span></div></div>
            <div class="col-lg-6">
                 <div class="fieldgroup">
            <label for="modifiedBy">ModifiedBy: </label>
            <input type="text" id="modifiedBy" name="modifiedBy" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.modifiedBy}" disabled>
            <span id=modifiedByinfo></span></div></div></div>
            
            <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup"> 
             <label for="serviceType">ServiceType: </label>
             <input type="text" id="serviceType" name="serviceType" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.serviceType}" disabled>  
            <span id=serviceTypeinfo></span></div></div>
            <div class="col-lg-6">
                 <div class="fieldgroup">
            <label for="roomNo">RoomNo: </label>          
           <input type="text" id="roomNo" name="roomNo" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${responseData.inpatient.roomNo}" disabled>              
           <span id=roomNoinfo></span></div></div></div>
        
       
            <input type="hidden" id="myaction" name="myaction" value="update">
            <input type="hidden" id="mode" name="mode" value="web"><br>
            <div align="center">
            <input type="hidden" ID="btnsave" value="Update" onclick="return validateForm()" class="btn btn-primary" style="height:27px;width:120px;border-radius:5px"/>
           </div>
            </div></div></div></div></div>
       
         
       </g:form>
       
    </div>
    
  </body>
</html>