<html>
<head>
<title></title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
  span{
  color:Crimson;
  }
  
  .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}
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
<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>

</head>

<body>
<div id="wrapper">
 <g:render template="/user/aDashboard"/>
 <div id="page-wrapper"><br><br>
 <div align="center"><b>Out-Patient Data</b></div><br><br>
  <div class="row">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
 <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th>PatientId</th>
      <th>FullName</th>
      <th>Age</th>
      <th>MobileNumber</th>
      <th>Address</th>
      <th>Fee</th>
      <th>Email</th>
      <th>Reference</th>
      <th>AppointmentDate&Time</th>
      </tr>
      </thead>
      
      <g:findAll in="${responseData.outpatient}" expr="true">
     <tbody>
      <tr>
      <td>${it.id}</td>
      <td><g:link controller="patient" action="updatepatient1" id="${it.pFirstname}">${it.pFirstname} ${it.pLastname}</g:link></td>
      <td>${it.pAge}</td>
      <td>${it.mobileNumber}</td>
      <td>${it.address}</td>
      <td>${it.fee}</td>
      <td>${it.email}</td>
      <td>${it.reference}</td>
      <td>${it.appointmentDate} (${it.appointmentTime})</td>
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div><br>
       <p align="center" >
       <g:if test="${responseData.offset > 0}">
     <button style="height:35px;width:100px;border-radius:5px"><g:link type="button" controller="patient" action="offsetlist" params="${[offset:responseData.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    <g:if test="${responseData.offset/5 < (responseData.totalcount)/5-1}">
     <button style="height:35px;width:100px;border-radius:5px"> <g:link type="button" controller="patient" action="offsetlist"   params="${[offset: responseData.offset+5]}" value="Next" style="height:35px;width:100px;border-radius:5px">Next</g:link></button>
       </g:if>
       </p></div></div></div></div>
</body>
</html>

