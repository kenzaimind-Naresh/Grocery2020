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

<script type="text/javascript">
function validateForm() {
	var eDate = document.forms["myform"]["eDate"].value;
	if (eDate.trim() == null || eDate.trim() == "") {
	    document.getElementById('eDateinfo').style.display = 'inline';	
		 $("#eDateinfo").text("Please Select eDate");	
		 return false;
	}	
}
</script>
</head>

<body>
<div id="wrapper">
 <g:render template="/user/aDashboard"/>
 <div id="page-wrapper"><br><br>
 <div align="center"><b>Pharmacy Bill</b></div>
  <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="page-header" style="color:black;font-size:20px">${responseData.message}</div>
                </div></div>
  <g:form Id="myform" name="myform" controller="pharmacy" action="search1"><br>
     <div class="row" align="center">
        <div class="col-md-12" >
           <div class="form-group">
		<label>Date: </label>
					<input type="date" id="eDate" name="eDate"  style="height:30px;width:150px;border-radius:5px"/>
						<input type="submit" Id="btnsave" value="Search" onclick="return validateForm()" novalidate="novalidate" style="height:30px;width:150px;border-radius:5px"/>
		</div></div>
						<span id="eDateinfo" style="padding-right:150px"></span>
		</div>
 <br>
 
 <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th>BillId</th>
      <th>Date</th>
      <th>PatientId</th>
      <th>FullName</th>
      <th>DrugDetails</th>
      <th>GrandTotal</th>
      </tr>
      </thead>
      
      <g:findAll controller="pharmacy" action="solr" in="${responseData.solrresult.solrdata}" expr="true">
     <tbody>
      <tr>
      <td>${it.id}</td>
      <td>${it.date }</td>
      <td>${it.patient_id}</td>
      <td>${it.p_firstname} ${it.p_lastname}</td>
      <td>${it.drugdetails}</td>
      <td>${it.grand_total}</td>
      </tr>
      </tbody>
      </g:findAll>
      </table>
 </div></g:form><br>
 <p align="center" >
       <g:if test="${responseData.offset > 0}">
     <button style="height:35px;width:100px;border-radius:5px"><g:link type="button" controller="pharmacy" action="searchof" params="${[eDate:responseData.date,offset:responseData.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    <g:if test="${responseData.offset/5 < (responseData.solrresult.size)/5-1}">
     <button style="height:35px;width:100px;border-radius:5px"> <g:link type="button" controller="pharmacy" action="searchof"   params="${[eDate:responseData.date,offset: responseData.offset+5]}" value="Next" style="height:35px;width:100px;border-radius:5px">Next</g:link></button>
       </g:if>
       </p>
 
 
 <%--<br><br>
 <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th>BillId</th>
      <th>Date</th>
      <th>PatientId</th>
      <th>FullName</th>
      <th>DrugDetails</th>
      <th>GrandTotal</th>
      <th>Mode</th>
      </tr>
      </thead>
      
      <g:findAll in="${responseData.emp1}" expr="true">
     <tbody>
      <tr>
      <td>${it.id}</td>
      <td>${it.date }</td>
      <td>${it.patientId}</td>
      <td>${it.pFirstname} ${it.pLastname}</td>
      <td>${it.drugdetails}</td>
      <td>${it.grandTotal}</td>
      <td>${it.pMode}</td>
      </tr>
      </tbody>
      </g:findAll>
      </table>
 </div>
 
 
 --%></div></div>
</body>
</html>

