<html>
<head>
<title>Pharmacy List</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
  span{
  color:Crimson;
  }
  
   td{
  color:black;
  font-size:13px;
  width:400px;
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
 <g:render template="/user/pDashboard"/><br><br>
 <div align="right" style="padding-right:50px;color:black"><b>No of Pharmacy Registered = ${result.totalcount }</b></div><br>
  <div class="row"  align="center">
 <div class="table-responsive" style="max-width:1300px">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th style="color:black">Id</th>
      <th style="color:black">Pharmacy Name</th>
      <th style="color:black">First Name</th>
      <th style="color:black">Address</th>
      <th style="color:black">Mobile Number</th>
      <th style="color:black">Email</th>
      </tr>
      </thead>
       <g:findAll in="${result.pharmacydata}" expr="true">
     <tbody>
      <tr>
       <td>${it.pharmacyId }</td>
      <td>${it.pharmacyName}</td>
      <td>${it.firstname}</td>
      <td>${it.address }</td>
      <td>${it.mobileNumber}</td>
      <td>${it.email}</td>
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div><br>
       <p align="center" >
       <g:if test="${result.offset > 0}">
     <button style="height:35px;width:100px;border-radius:5px"><g:link type="button" controller="pharmacy" action="offsetlist1" params="${[offset:result.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <button style="height:35px;width:100px;border-radius:5px"> <g:link type="button" controller="pharmacy" action="offsetlist1"   params="${[offset: result.offset+5]}" value="Next" style="height:35px;width:100px;border-radius:5px">Next</g:link></button>
       </g:if>
       </p></div>
</body>
</html>
      
      
