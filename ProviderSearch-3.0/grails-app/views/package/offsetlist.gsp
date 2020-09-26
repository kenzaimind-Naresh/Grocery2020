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
  
   td{
  color:black;
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
 <g:render template="/user/aDashboard"/><br><br>
 <div align="center" style="color:black;font-size:18px;"><b>Package List</b></div><br><br>
 <div class="row" align="center">
 <div class="table-responsive" style="max-width:700px">      
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th style="color:black">Pack Id</th>
      <th style="color:black">Pack Name</th>
      <th style="color:black">Pack Price</th>
      <th style="color:black">Duration</th>
      <th style="color:black">Created By</th>
      </tr>
      </thead>
       <g:findAll in="${result.packdata}" expr="true">
     <tbody>
      <tr>
       <td>${it.pId }</td>
     <td><g:link  style="text-decoration: none;" controller="package" action="packUpdate" id="${it.pId}">${it.packName}</g:link></td>
      <td>${it.packPrice}</td>
      <td>${it.duration }</td>
      <td>${it.createdBy}</td>
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div><br>
       <p align="center" >
       <g:if test="${result.offset > 0}">
     <button style="height:35px;width:100px;border-radius:5px"><g:link type="button" controller="package" action="offsetlist" params="${[offset:result.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <button style="height:35px;width:100px;border-radius:5px"> <g:link type="button" controller="package" action="offsetlist"   params="${[offset: result.offset+5]}" value="Next" style="height:35px;width:100px;border-radius:5px">Next</g:link></button>
       </g:if>
       </p></div>
       <div align="center">
       <g:link controller="package" action="packCreate"><b>Package Creation</b></g:link></div>
</body>
</html>
      
      
