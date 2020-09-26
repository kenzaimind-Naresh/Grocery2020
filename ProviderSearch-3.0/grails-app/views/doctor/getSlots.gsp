<html>
<head>

<title>Appointment Slots</title> <%--
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

--%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>

.ui-autocomplete {
	height: 200px;
	overflow-y: scroll;
	overflow-x: hidden;
}

div.ridge {
	border-style: ridge;
	width: 600px;
	height: 350px;
}
</style>
				
<script type="text/javascript">

$(document).ready(function(){

	$("#date").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
			
		 if ( $("#date").val().trim() ){
	   	 
			$("#dateinfo").text("");
	 } else {
		 $("#dateinfo").text("Please Select Date");
	 }
		  });
	$("#from").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	
		
	 if ( $("#from").val().trim() ){
   	 
		$("#frominfo").text("");
 } else {
	 $("#frominfo").text("Please Select Time");
 }
	  });
	$("#to").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	
		
	 if ( $("#to").val().trim() ){
   	 
		$("#frominfo").text("");
 } else {
	 $("#frominfo").text("Please Select Time");
 }
	  });
	$("#otime").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	
		
	 if ( $("#otime").val().trim() ){
   	 
		$("#frominfo").text("");
 } else {
	 $("#frominfo").text("Please Select Time");
 }
	  });

	});
function validateForm() {
	var from = document.forms["myform"]["from"].value;
	var to = document.forms["myform"]["to"].value;
	var date = document.forms["myform"]["date"].value;
	var otime = document.forms["myform"]["otime"].value;
	
	if (date == null || date.trim() == "") {
		document.getElementById('dateinfo').style.display = 'inline';
		 $("#dateinfo").text("Please Select Date");
		 return false;
    }
     if (from == null || from.trim() == "") {
		document.getElementById('frominfo').style.display = 'inline';
		 $("#frominfo").text("Please Select Time");
		 return false;
   }
     if (to == null || to.trim() == "") {
 		document.getElementById('frominfo').style.display = 'inline';
 		 $("#frominfo").text("Please Select Time");
 		 return false;
     }
     if (otime == null || otime.trim() == "") {
 		document.getElementById('frominfo').style.display = 'inline';
 		 $("#frominfo").text("Please Select Time");
 		 return false;
     }
    else{
		return true;
	    }	
}


history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};


var slots = [];
 $(document).ready(function () {
 
	 $("#date").datepicker({
         minDate: 0,autoclose: true,
         onSelect:function (){
				$("#dateinfo").text("");
		    }
     });
 });


 function bodyload(){

		 var slt=document.getElementById("slts").value
		 
		 var len = slt.split(",").length
	
		 for(var i=0 ; i<len; i++){
			 var property=document.getElementById(slt.split(",")[i].trim());
			 
			
			 property.style.backgroundColor = "#44A081";
			 slots.push(property.value);
		    }  
 }
 
function myFunction(id) {

    var index = slots.indexOf(id);
    if(index==-1){
    slots.push(id);
    }
    else{
    	slots.splice(index, 1);
}
    document.getElementById("slots").value=slots
	
    if(index==-1){
    	document.getElementById(id).style.backgroundColor = "#44A081"
        }else{
        	document.getElementById(id).style.backgroundColor = "#6c757d "
 }
 
}

function aFunction(id) {
	
    var index = slots.indexOf(id);
	
    if(index==-1){
    slots.push(id);
    }
    else{
    	slots.splice(index, 1);
}
    document.getElementById("slts").value=slots
    if(index==-1){
    	document.getElementById(id).style.backgroundColor = "#44A081"
        }else{
        	document.getElementById(id).style.backgroundColor = "#6c757d "
            }
			 
}

$(document).ready(function () {
     $("#date").datepicker({
         minDate: 0,autoclose: true,
         onSelect:function (){
				$("#dateinfo").text("");
		    }
     });
 });

</script>
</head>

<body onload="bodyload()">

	<g:render template="/user/dDashboard" />



	<div class="container signin"">


		<div class="row">
			<div class="col-xs-12 col-sm-12	 col-md-4">
				<h3>Schedule your Appointments</h3>
			</div>
			<div class="col-xs-3 col-sm-6 col-md-8">
				<i class="fa fa-calendar pull-right dashicon"></i>
			</div>


		</div>
		<div class="row">
			<div class="col-lg-5">
				<div class="panel panel-default">

					<br>
					<g:form controller="doctor" id="myform" name="myform" action="getSlots" method="POST" nonvalidate="nonvalidate">
						<div class="row">
							<div class="col-md-10">
								<div class="fieldgroup">
									<input type="text" id="date" name="date"
										class="form-control" placeholder="Select Date"> <span
										id="dateinfo"></span> <br>
								</div>
								<!--<p>Date: <input type="text" id="datepicker"></p>-->
							</div>	
						</div>
						
						<div class="row">

                        <div class="col-md-5">
                            <div class="fieldgroup">
                                <label style="color: black">Time: </label>
                                <select id="from" name="from" class="form-control" >
                                    <option value="">-- Select --</option>
                                    <option value="10:00AM">10:00AM</option>
                                    <option value="11:00AM">11:00AM</option>
                                    <option value="12:00PM">12:00PM</option>
                                    <option value="01:00PM">01:00PM</option>
                                </select>
                                <span id="frominfo" style="color:Crimson"></span>
                                </div></div>
                                 <div class="col-md-5">
                            <div class="fieldgroup">
                            <label style="color: black">To:</label>
                                <select id="to" name="to" class="form-control">
                                    <option value="">-- Select --</option>
                                    <option value="12:00PM">12:00PM</option>
                                    <option value="01:00PM">01:00PM</option>
                                    <option value="02:00PM">02:00PM</option>
                                    <option value="03:00PM">03:00PM</option>
                                </select>
                          <span id="toinfo" style="color:Crimson"></span>
						  </div>
						  </div>
						  </div>
						
                       
						<input type="hidden" id="otime" name="otime" value="10"
							style="width: 80px; border-radius: 5px">
						<br>
						<input type="hidden" id="mode" name="mode" value="web">
						<div class="row">
							<!-- Page Header -->
							<div class="col-md-10">
								<div class="fieldgroup text-center">
									<input type="submit" id="btnsave" value="Search"
										class="btn btn-primary" onclick="return validateForm()">
								</div>
							</div>
						</div>
					</g:form>
				</div>
</div>
		
		<div class="col-lg-7">
				<div class="panel panel-default">
		 <g:if test = "${result.sdata == null}">
			<p style="padding-right:270px"><b>${result.date}</b> (mm/dd/yyyy)</p>
		<div class="row">
			<div class=" col-sm-12 col-md-offset-2 col-md-9">

				<div class="btn-group" data-toggle="buttons">
				 <g:each in="${result.slots}" var="i"> 
					
					<input type="button" class="btn-secondary" id="${i}" onclick="myFunction(id)"	value=" ${i}">
					
</g:each>
				</div>

			</div>
		</div>
		<br>
		<g:form controller="doctorSchedule" Id="myform" name="myform" action="savedoctorschedule" method="POST" nonvalidate="nonvalidate">
			<input type="hidden" id="doctorId" name="doctorId" value="${result.uname.doctorId }">
            <input type="hidden" id="status" name="status">
            <input type="hidden" id="date" name="date" value="${result.date}">
            <input type="hidden" id="slots" name="slots">
			
  			<input type="hidden" id="mode" name="mode" value="web">
		<div class="row">

			<div class="col-md-offset-2 col-md-8">
				<div class="fieldgroup text-center">
					<input type="submit" id="Submit1" value="Save"
						class="btn btn-primary" >
				</div>
			</div>
		</div>
		</g:form>
	</div>
</g:if>

<g:else>

	<p style="padding-right:270px"><b>${result.date}</b> (mm/dd/yyyy)</p>
		<div class="row">
			<div class=" col-sm-12 col-md-offset-2 col-md-8">

				<div class="btn-group" data-toggle="buttons">
				 <g:each in="${result.slots}" var="i"> 
					
					<input type="button" class="btn-secondary" id="${i}" name="${i}" onclick="aFunction(id)"	value="${i}">
					
</g:each>
				</div>

			</div>
		</div>
		<br>
		<g:form controller="doctorSchedule" Id="myform" name="myform" action="updatedoctorschedule" method="POST" nonvalidate="nonvalidate">
			<input type="hidden" id="doctorId" name="doctorId" value="${result.uname.doctorId }">
            <input type="hidden" id="status" name="status">
            <input type="hidden" id="date" name="date" value="${result.date}">
            <input type="hidden" id="slts" name="slts" value="${result.sdata.slots }">
  			<input type="hidden" id="mode" name="mode" value="web">
		<div class="row">

			<div class="col-md-offset-2 col-md-8">
				<div class="fieldgroup text-center">
					<input type="submit" id="Submit1" value="update"
						class="btn btn-primary" >
				</div>
			</div>
		</div>
		</g:form>
	</div>




</g:else>


	</div>
</div>
<style>
.btn-secondary {
	color: #fff;
	background-color: #6c757d;
	border-color: #6c757d;
	border-radius: 5px !important;
	margin: 5px;
}


</style>





</body>
</html>