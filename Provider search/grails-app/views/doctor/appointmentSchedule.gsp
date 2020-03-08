<html>
	<head>
		
<title>Appointment Schedule</title>	

  <style>
 
  .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}
  </style>
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">

$(document).ready(function(){

	$("#date").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
			
		 if ( $("#date").val().trim()){
	   	 
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
   	 
		$("#toinfo").text("");
 } else {
	 $("#toinfo").text("Please Select Time");
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
 		 $("#toinfo").text("Please Select Time");
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

<body> 
        <g:render template="/user/dDashboard"/>
        
        <g:form action="" controller="doctor" Id="myform" name="myform" action="getSlots" method="POST" nonvalidate="nonvalidate">
  <div class="container signin">
     <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Schedule your Appointments</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-calendar pull-right dashicon"></i>
            </div>


        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">

                    <div class="row">

                        <div class="col-md-4">
                            <div class="fieldgroup">
                                <input type="text" id="date" name="date" class="form-control" placeholder="Select Date">
                                <span id="dateinfo" style="color:Crimson"></span>
                                <br>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-md-2">
                            <div class="fieldgroup">
                                <label style="color: black">Time: </label>
                                <select id="from" name="from" class="form-control">
                                    <option value="">-- Select --</option>
                                    <option value="10:00AM">10:00AM</option>
                                    <option value="11:00AM">11:00AM</option>
                                    <option value="12:00PM">12:00PM</option>
                                    <option value="01:00PM">01:00PM</option>
                                </select>
                                <span id="frominfo" style="color:Crimson"></span>
                                </div></div>
                                 <div class="col-md-2">
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
                                <input type="hidden" id="otime" name="otime" value="10">
                            </div>
                        </div>
                    </div>
                    <br>
                    <input type="hidden" id="mode" name="mode" value="web">
                    <div class="row">
                        <!-- Page Header -->
                        <div class="col-lg-4">
                            <div class="fieldgroup text-center">
                                <input type="submit" id="btnsave" value="Search" class="btn btn-primary" onclick="return validateForm()">
                            </div>
                        </div>
                    </div>
                    <br>
                    <br>
                </div>
            </div>
        </div>
    </div>
    </g:form>
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