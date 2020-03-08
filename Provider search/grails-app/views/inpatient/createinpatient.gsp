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
  
	--%><script  src="${resource(dir: 'js', file: 'createinpat.js')}"></script><%--
     
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>--%>
      
  
	
<script type="text/javascript">


$(function () {
	
       $("#roomNo1").show();
       $("#roomNo2").hide();
       $("#roomNo3").hide();
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






function myFunction() {
    
	var dlist=$('#datalist1').val();
    var x=$('#patientId');    

	var v=$(x).find('option[value="' +dlist+ '"]');
    
    var d=v.attr('id');
    
    var split=d.split("+");
    document.getElementById("pFirstname").value =split[0];
	document.getElementById("pLastname").value =split[1];
	
	document.getElementById("patientId1").value =split[2];
	document.getElementById("address").value =split[3];
	document.getElementById("mobileNumber").value =split[4];
	document.getElementById("alternateMobile").value =split[5];
	document.getElementById("email").value =split[6];
	document.getElementById("modifiedBy").value =split[7];
	     
}


function getdata() {
	var patientId= document.getElementById("patientId").value
//alert(patientId);
	var path = "/HospitalMgnt/Patient/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			patientId : patientId
		},
		success : function(result) {
			//alert(result);
		    document.getElementById("pFirstname").value =result.split("#")[0];
		    document.getElementById("pLastname").value =result.split("#")[1];
		    document.getElementById("address").value =result.split("#")[2];
		    document.getElementById("mobileNumber").value =result.split("#")[3];
		    document.getElementById("alternateMobile").value =result.split("#")[4];
		    document.getElementById("email").value =result.split("#")[5];
		    document.getElementById("reference").value =result.split("#")[6];
			
		},
		error : function() {
		}
	})
}



$(function() {
	

    $("#patientId").autocomplete({
    	
    	  source:[
    	<g:each in="${result.pat}">
    	
        '${it.patientId}',
           
        </g:each>]
    });
  });

$(function() {
	

    $("#reference").autocomplete({
    	
    	  source:[
    	<g:each in="${result.doc}">
    	
        '${it.dFirstname} ${it.dLastname}',
           
        </g:each>]
    });
  });

   
   history.pushState({ page: 1 }, "Title 1", "#no-back");
   window.onhashchange = function (event) {
     window.location.hash = "no-back";
   };

   $("#reference").val('${result.doc.dFirstname}');
	//var serviceType=$("#serviceType").val(); 

   
</script><%--
 <script>

 
$(function() {
 var x='${result.listId}'
  document.getElementById(x).className = "active";
});
</script>

--%><style>

.active a{
    color: white !important;
}

span{
  color:Crimson;
  }

</style>

           
 </head>

  <body>
  <div id="wrapper">

 <g:render template="/user/header"/>
 
         <g:form controller="inpatient" Id="myform" name="myform" action="saveinpatient"  params="[fromDate:(new Date().time)]" nonvalidate="nonvalidate">
        
          <div id="page-wrapper"><br><br><br>
            <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                    
                     <div class="row" align="center">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header"  style="color:black;font-size:20px;">In-Patient</div>
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
             <input type="text" id="patientId" name="patientId" class="form-control" style="height:27px;width:300px;border-radius:5px" onfocusout="getdata()">
           <span id=patientIdinfo></span></div></div>
           <div class="col-lg-6">
                 <div class="fieldgroup">
           <label for="pFirstname">FirstName: </label>
           <input type="text" id="pFirstname" name="pFirstname" class="form-control" style="height:27px;width:300px;border-radius:5px">
           <span id=pFirstnameinfo></span></div></div></div>
           
            <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">  
           <label for="pLastname">LastName: </label>
           <input type="text" id="pLastname" name="pLastname" class="form-control" style="height:27px;width:300px;border-radius:5px">
           <span id=pLastnameinfo></span></div></div>
           <div class="col-lg-6">
                 <div class="fieldgroup">
           <label for="address">Address: </label>
           <input type="text" id="address" name="address" class="form-control" style="height:27px;width:300px;border-radius:5px">
           <span id=addressinfo></span></div></div></div>
           
           <div class="row">
           <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="mobileNumber">MobileNumber: </label>
            <input type="text" id="mobileNumber" name="mobileNumber" class="form-control" style="height:27px;width:300px;border-radius:5px">
            <span id=mobileNumberinfo></span> </div></div>
            <div class="col-lg-6">
                 <div class="fieldgroup">           
            <label for="reference">Reference: </label>
            <input type="text" id="reference" name="reference" value="" class="form-control" style="height:27px;width:300px;border-radius:5px">
            <span id=referenceinfo></span></div></div></div>
                     
            <div class="row">
             <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="nominee">Nominee: </label>
            <input type="text" id="nominee" name="nominee" class="form-control" style="height:27px;width:300px;border-radius:5px"> 
            <span id=nomineeinfo></span></div></div>
            <div class="col-lg-6">
                 <div class="fieldgroup">
            <label for="alternateMobile">AlternateMobile: </label>
            <input type="text" id="alternateMobile" name="alternateMobile" class="form-control" style="height:27px;width:300px;border-radius:5px">
            <span id=alternateMobileinfo></span></div></div></div>
                      
            <div class="row">
             <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">           
            <label for="email">Email: </label>
            <input type="text" id="email" name="email" class="form-control" style="height:27px;width:300px;border-radius:5px">
            <span id=emailinfo></span></div></div>
            <div class="col-lg-6">
                 <div class="fieldgroup">
            <label for="modifiedBy">ModifiedBy: </label>
            <input type="text" id="modifiedBy" name="modifiedBy" class="form-control" value="${result.uname.username}" style="height:27px;width:300px;border-radius:5px">
            <span id=modifiedByinfo></span></div></div></div>
            
            <div class="row">
            <div class="col-lg-2" >
           <div class="form-group">
                    </div></div>
                <!-- Page Header -->
                <div class="col-lg-4">
                 <div class="fieldgroup">
            <label for="serviceType">ServiceType: </label>
            <select name="serviceType" id="serviceType" width="30" class="form-control"  style="height:30px;width:300px;border-radius:5px" >
            <option value="" >--select--</option> 
            <option value="SemiPrivate" >SemiPrivate</option>
            <option value="Special" >Special</option>
            <option value="Delux" >Delux</option>            
            </select>   
            <span id=serviceTypeinfo></span></div></div>
            <div class="col-lg-6">
                 <div class="fieldgroup">
            <label for="roomNo">RoomNo: </label>
            <div id="roomNo1" style="display: none">
               <select name="roomNo" id="roomNo" width="30" class="form-control" style="height:30px;width:300px;border-radius:5px" >
               <option value="select">--select--</option>
               <option value="100">100</option>
               <option value="101">101</option>
               <option value="102">102</option>
               <option value="103">103</option>
               <option value="104">104</option>
               </select> 
               <span id=roomNoinfo></span>
           </div>
           
            <div id="roomNo2" style="display: none">   
               <select id="room1" name="room1" width="30" class="form-control" style="height:30px;width:300px;border-radius:5px" >
               <option value="select">--select--</option>
               <option value="200">200</option>
               <option value="201">201</option>
               <option value="202">202</option>
               <option value="203">203</option>
               <option value="204">204</option>
               </select>
               <span id=room1info></span>
             </div> 
               
            <div id="roomNo3" style="display: none">
               <select id="room2"  name="room2" width="30" class="form-control" style="height:30px;width:300px;border-radius:5px">
               <option value="select">--select--</option>
               <option value="300">300</option>
               <option value="301">301</option>
               <option value="302">302</option>
               <option value="303">303</option>
               <option value="304">304</option>
               </select>
               <span id=room2info></span>
             </div>  </div></div></div>
               
               
            <br> 
            
          </div>
          <div align="center" class="fieldgroup">
            <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web">
             
            <input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="btn btn-primary" style="height:35px;width:150px;border-radius:5px"/>
          </div><br>
            
        </div>
        </div>
        </div>
        </div>
       </g:form>
        
     </div>
      
  </body>
</html>