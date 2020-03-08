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
<%--<script>
    $(document).ready(function(){   
    	var p='${responseData.testdatadata.icdCode}';
    	var q='${responseData.testdatadata.testName}';
    	alert(q)
    	var r='${responseData.testdatadata.rate}';
    	var s='${responseData.testdatadata.total}';
    	
    	var icdCode=p.split("#");
    	var testName=q.split("#");
    	alert(testName[0])
    	var rate=r.split("#");
    	var total=s.split("#");

    	if(icdCode[0] != "" && icdCode[0] != null){
    	document.getElementById('icdCode').value=icdCode[0];
    	document.getElementById('testName').value=testName[0];
    	document.getElementById('rate').value=rate[0];
    	document.getElementById('total').value=total[0];
    	}else{
    		$("#icdCode").hide();
    		$("#testName").hide();
    		$("#rate").hide();
    		$("#total").hide();
        	}

    	if(icdCode[1] != "" && icdCode[1] != null){
        	document.getElementById('icdCode2').value=icdCode[1];
        	document.getElementById('testName2').value=testName[1];
        	document.getElementById('rate2').value=rate[1];
        	document.getElementById('total2').value=total[1];
        	}else{
        		$("#icdCode2").hide();
        		$("#testName2").hide();
        		$("#rate2").hide();
        		$("#total2").hide();
            	}
    	if(icdCode[2] != "" && icdCode[2] != null){
        	document.getElementById('icdCode3').innerHTML=icdCode[2];
        	document.getElementById('testName3').innerHTML=testName[2];
        	document.getElementById('rate3').innerHTML=rate[2];
        	document.getElementById('total3').innerHTML=total[2];
        	}else{
        		$("#icdCode3").hide();
        		$("#testName3").hide();
        		$("#rate3").hide();
        		$("#total3").hide();
            	}

        	if(icdCode[3] != "" && icdCode[3] != null){
            	document.getElementById('icdCode4').innerHTML=icdCode[3];
            	document.getElementById('testName4').innerHTML=testName[3];
            	document.getElementById('rate4').innerHTML=rate[3];
            	document.getElementById('total4').innerHTML=total[3];
            	}else{
            		$("#icdCode4").hide();
            		$("#testName4").hide();
            		$("#rate4").hide();
            		$("#total4").hide();
                	}
        	if(icdCode[4] != "" && icdCode[4] != null){
            	document.getElementById('icdCode5').innerHTML=icdCode[4];
            	document.getElementById('testName5').innerHTML=testName[4];
            	document.getElementById('rate5').innerHTML=rate[4];
            	document.getElementById('total5').innerHTML=total[4];
            	}else{
            		$("#icdCode5").hide();
            		$("#testName5").hide();
            		$("#rate5").hide();
            		$("#total5").hide();
                	}

            	if(icdCode[5] != "" && icdCode[5] != null){
                	document.getElementById('icdCode6').innerHTML=icdCode[5];
                	document.getElementById('testName6').innerHTML=testName[5];
                	document.getElementById('rate6').innerHTML=rate[5];
                	document.getElementById('total6').innerHTML=total[5];
                	}else{
                		$("#icdCode6").hide();
                		$("#testName6").hide();
                		$("#rate6").hide();
                		$("#total6").hide();
                    	}
            	if(icdCode[6] != "" && icdCode[6] != null){
                	document.getElementById('icdCode7').innerHTML=icdCode[6];
                	document.getElementById('testName7').innerHTML=testName[6];
                	document.getElementById('rate7').innerHTML=rate[6];
                	document.getElementById('total7').innerHTML=total[6];
                	}else{
                		$("#icdCode7").hide();
                		$("#testName7").hide();
                		$("#rate7").hide();
                		$("#total7").hide();
                    	}

                	if(icdCode[7] != "" && icdCode[7] != null){
                    	document.getElementById('icdCode8').innerHTML=icdCode[7];
                    	document.getElementById('testName8').innerHTML=testName[7];
                    	document.getElementById('rate8').innerHTML=rate[7];
                    	document.getElementById('total8').innerHTML=total[7];
                    	}else{
                    		$("#icdCode8").hide();
                    		$("#testName9").hide();
                    		$("#rate8").hide();
                    		$("#total8").hide();
                        	}
                	if(icdCode[8] != "" && icdCode[8] != null){
                    	document.getElementById('icdCode9').innerHTML=icdCode[8];
                    	document.getElementById('testName9').innerHTML=testName[8];
                    	document.getElementById('rate9').innerHTML=rate[8];
                    	document.getElementById('total9').innerHTML=total[8];
                    	}else{
                    		$("#icdCode9").hide();
                    		$("#testName9").hide();
                    		$("#rate9").hide();
                    		$("#total9").hide();
                        	}

                    	if(icdCode[9] != "" && icdCode[9] != null){
                        	document.getElementById('icdCode10').innerHTML=icdCode[9];
                        	document.getElementById('testName10').innerHTML=testName[9];
                        	document.getElementById('rate10').innerHTML=rate[9];
                        	document.getElementById('total10').innerHTML=total[9];
                        	}else{
                        		$("#icdCode10").hide();
                        		$("#testName10").hide();
                        		$("#rate10").hide();
                        		$("#total10").hide();
                            	}
    	   	
    });
    </script>

--%></head>

<body>
<div id="wrapper">
 <g:render template="/user/aDashboard"/>
 <div id="page-wrapper"><br><br>
 <div align="center"><b>Diagnostic List</b></div><br><br>
  <div class="row">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
 <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th>Date</th>
      <th>PatientId</th>
      <th style="width:200px">FullName</th>
      <th>TestName</th>
      <th>GrandTotal</th>
      <th>Mode</th>
      </tr>
      </thead>
      
      <g:findAll in="${responseData.testdatadata}" expr="true">
     <tbody>
      <tr>
      <td>${it.date}</td>
      <td>${it.patientId}</td>
      <td>${it.pFirstname} ${it.pLastname}</td>
      <td>${it.testName }</td>
      <td>${it.grandTotal}</td>
      <td>${it.pMode}</td>
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div><br>
       <p align="center" >
       <g:if test="${responseData.offset > 0}">
     <button style="height:35px;width:100px;border-radius:5px"><g:link type="button" controller="testData" action="offsetlist" params="${[offset:responseData.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    <g:if test="${responseData.offset/5 < (responseData.totalcount)/5-1}">
     <button style="height:35px;width:100px;border-radius:5px"> <g:link type="button" controller="testData" action="offsetlist"   params="${[offset: responseData.offset+5]}" value="Next" style="height:35px;width:100px;border-radius:5px">Next</g:link></button>
       </g:if>
       </p></div></div></div></div>
</body>
</html>

