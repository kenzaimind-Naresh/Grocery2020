<html>
<head>
<title></title>
<style>
</style>
<script>
$('.demo4_top,.demo4_bottom').bootpag({
    total: 50,
    page: 2,
    maxVisible: 5,
    leaps: true,
    firstLastUse: true,
    first: '←',
    last: '→',
    wrapClass: 'pagination',
    activeClass: 'active',
    disabledClass: 'disabled',
    nextClass: 'next',
    prevClass: 'prev',
    lastClass: 'last',
    firstClass: 'first'
}).on("display.gsp", function(event, num){
    $("#content").html("display.gsp " + num); // or some ajax content loading...
}); 

</script>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script><%--
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
--%></head>
<script>

 
$(function() {
 var x='${responseData.listId}'
  document.getElementById(x).className = "active";
});
</script>

<style>

.active a{
    color: white !important;
}

</style>

<body>
<div id="wrapper">
<div id="content"></div>
    <div id="page-selection"></div>
 <g:render template="/user/aDashboard"/>
 <div id="page-wrapper"><br><br>
  <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">

       <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
      <tr>
      <th>PatientId</th>
      <th>Name</th>
      <th>JoiningDate</th>
      <th>MobileNumber</th>
      <th>ServiceType</th>
      <th>RoomNo</th>
      
     
      
      </tr>
      </thead>
      
      <g:findAll in="${responseData.inpatient}" expr="true">
     <tbody>
      <tr>
      <td>${it.patientId}</td>
      <td><g:link controller="inpatient" action="updateinpatient" id="${it.pFirstname}">${it.pFirstname} ${it.pLastname}</g:link></td>
      <td>${it.createdDate}</td>
      <td>${it.mobileNumber}</td>
      <td>${it.serviceType}</td>
      <td>${it.roomNo}</td>
      </tr>
      </tbody>
         
      </g:findAll>
      </table></div></div><br>
       <p align="center" >
       <g:if test="${responseData.offset > 0}">
     <button style="height:35px;width:100px;border-radius:5px"><g:link type="button" controller="inpatient" action="offsetlist" params="${[offset:responseData.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    <g:if test="${responseData.offset/5 < (responseData.totalcount)/5-1}">
     <button style="height:35px;width:100px;border-radius:5px"> <g:link type="button" controller="inpatient" action="offsetlist"   params="${[offset: responseData.offset+5]}" value="Next">Next</g:link></button>
       </g:if></p></div></div></div></div></div>
</body>
</html>

