<html>
	<head>
		
<title>Slots</title>	

  <%--<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
   --%>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <style>
  span{
  color:Crimson;
  }
  
  .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}
  </style>
  
<script type="text/javascript">

$(document).ready(function(){

	 $("#patientId").focusout(function(){
		 
			$( this ).find( "span" ).css( "display", "inline" );	
	   		
		   	 if ( $("#patientId").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#patientId").val().trim()!="") {
			   	 
		   		$("#patientIdinfo").text("");
		     } else {
		    	 $("#patientIdinfo").text("Please Select DoctorName");
		     }
		   	  });	 
	 $("#specialization").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#specialization").val().trim().match('^[a-zA-Z\ \]{3,30}$')!=null && $("#specialization").val().trim()!="") {
		   	 
	   		$("#specializationinfo").text("");
	     } else {
	    	 $("#specializationinfo").text("Please Enter Specialization");
	     }
	   	  });	 

	$("#date").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
			
		 if ( $("#date").val().trim() ){
	   	 
			$("#dateinfo").text("");
	 } else {
		 $("#dateinfo").text("Please Select Date");
	 }
		  });

	});
function validateForm() {
	var patientId = document.forms["myform"]["patientId"].value;
	var specialization = document.forms["myform"]["specialization"].value;
	var date = document.forms["myform"]["date"].value;
	

	if (patientId == null || patientId == "" || patientId.match('^[a-zA-Z\ \]{3,30}$') == null) {
	    document.getElementById('patientIdinfo').style.display = 'inline';	
    	 $("patientIdinfo").text("Please Select DoctorName");	
    	 return false;
	    	 }

	 if (specialization == null || specialization.trim() == "" || specialization.match('^[a-zA-Z\ \]{3,30}$') == null) {
		    document.getElementById('specializationinfo').style.display = 'inline';	
	    	 $("#specializationinfo").text("Please Enter Specialization");	
	    	 return false;
		    	 }
	
	if (date == null || date.trim() == "") {
		document.getElementById('dateinfo').style.display = 'inline';
		 $("#dateinfo").text("Please Select Date");
		 return false;
    }else{
		return true;
	    }	
}



function myFunction() {
    
   alert("onselect");

	var dlist=$('#datalist1').val();
	//alert(dlist);
	//document.getElementById("doctorId").value =dlist;
    var x=$('#doctorId_dlist');    

	var v=$(x).find('option[value="' +dlist+ '"]');
    
    var d=v.attr('id');
    
    var split=d.split("+");
   // alert(split[0]);
   // alert(split[1]);
   // alert(split[2]);
    document.getElementById("doctorId").value =split[0];
    document.getElementById("dFirstname").value =split[1];
    document.getElementById("specialization").value =split[2];
	
	     
}


function getdata() {
	var doctorName= document.getElementById("patientId").value
//alert(doctorName);
	var path = "/ProviderSearch/Doctor/getdata";
	$.ajax({
		url : path,
		type : "get",
		data :{
			doctorName : doctorName
		},
		success : function(result) {
			//alert(result)
			 document.getElementById("doctorId").value =result.split("#")[0];
		    document.getElementById("dFirstname").value =result.split("#")[1];
		    document.getElementById("specialization").value =result.split("#")[2];
			
		},
		error : function() {
		}
	})
}



$(function() {
	
    $("#patientId").autocomplete({
    	 
    	  source:[
    	<g:each in="${result.doctor}">
    	
        '${it.dFirstname} ${it.dLastname}',
        
        </g:each>]
 	        
    });
	       
	
});

history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};



<%-- $(function() {
 $('#date').datepicker({
   autoclose: true,format: 'yyyy-mm-dd',endDate:'0',}).on('changeDate', function(ev){
    $("#eDateinfo").text("");
   }); 
});
 
 --%>
 
 $(document).ready(function () {
     $("#date").datepicker({
         minDate: 0
     });
 });

 </script>

</head>

<body> 
 <div id="wrapper">
        <g:render template="/user/header"/>
        <g:form action="" controller="availability" Id="myform" name="myform" action="getSlots" method="POST" nonvalidate="nonvalidate">
  
  <input type="hidden" id="docId1" name="docId1" value="${result.doctor.dFirstname}"/>
  <input type="hidden" id="doctorId" name="doctorId"/>
  <input type="hidden" id="dFirstname" name="dFirstname"/>
       <div id="page-wrapper" align="center"><br><br>
            <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                     
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header"  style="color:black;font-size:20px">Out-Patient</div>
                </div></div>
                      
	<div class="panel-body">
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                 <div class="fieldgroup">
            <label >Doctor Name:</label>
            <input type="text" id="patientId" name="patientId" class="form-control" style="height:27px;width:205px;border-radius:5px" onfocusout="getdata()">
            <span id=patientIdinfo></span>
            </div></div></div>
           
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                 <div class="fieldgroup">
            <label >Specialization:</label>
            <input type="text" id="specialization" name="specialization" class="form-control" style="height:27px;width:205px;border-radius:5px" Disabled >
            <span id=specializationinfo></span>
            </div></div></div>
           
             <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
            <div class="fieldgroup">
            <label for="date">Date: </label>
            <input type="text" id="date" name="date" class="form-control" style="height:27px;width:205px;border-radius:5px">
            <span id=dateinfo></span><br>
            </div></div></div>
            <input type="hidden" id="mode" name="mode" value="web">
             <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
            <div class="fieldgroup"> 
            <input type="submit" ID="btnsave" value="Search" class="btn btn-primary" onclick="return validateForm()" style="height:35px;width:100px;border-radius:5px"/>
            </div></div></div><br><br><br><br>
            
         <div>
         <%
         String s=result.get("app_date");
         String d=result.get("DoctorId");
		 String e=result.get("DFirstname");
		 
         %>
         <form align="center">
         <g:each in="${result.get(s)}" var="id"> 
         <g:if test="${id != 'reserved'}" >
         <g:link controller="patient" action="createpatient" class="active" id="${id}" params="[date:s,docid:d,dname:e]" ><input type="button" style="font-size:12pt;border-radius: 4px;color:white;background-color:black;margin: 4px 0;border: 1px solid #ccc;border:6px solid green;padding:8px" value="${id}"></g:link>
         </g:if>
         </g:each>
         </form>
         </div></div></div>
        </div>
        </div>
        </div>
    </g:form>   
 </div>
  </body>
</html>


<%--<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Autocomplete - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  } );
  </script>
</head>
<body>
 
<div class="ui-widget">
  <label for="tags">Tags: </label>
  <input id="tags">
</div>
 
 
</body>
</html>--%>