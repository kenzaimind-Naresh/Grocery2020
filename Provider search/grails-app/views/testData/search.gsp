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
 <div align="center"><b>Diagnostic Bill</b></div><br><br>
  <g:form Id="myform" name="myform" controller="testData" action="search1"><br>
     <div class="row" align="center">
        <div class="col-md-12" >
           <div class="form-group">
		<label>Date: </label>
					<input type="date" id="eDate" name="eDate"  style="height:30px;width:150px;border-radius:5px"/>
						<input type="submit" Id="btnsave" value="Search" onclick="return validateForm()" novalidate="novalidate" style="height:30px;width:150px;border-radius:5px"/>
		</div></div>
						<span id="eDateinfo" style="padding-right:150px"></span>
		</div>
 <br><br></g:form></div></div>
</body>
</html>

