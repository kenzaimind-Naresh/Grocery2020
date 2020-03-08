<html>
<head>
<title></title>
<style>
span{
  color:Crimson;
  }   
</style>

   <script src="https://code.jquery.com/jquery-1.12.4.js"></script><%--
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  
--%><%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
--%></head>
<body>
<html>
<head>
<title></title>
<style>
body{
background-color:lightgreen;
}

</style>
 <script>
  function PrintElem(elem)
{
	  //alert("hi");
	  Popup($(elem).html());
}

function Popup(data) 
{
	//alert("pop");
	//alert(data);
    var mywindow = window.open('', 'my div', 'height=400,width=600');
    mywindow.document.write('<html><head><title>my div</title>');
    mywindow.document.write('</head><body>');
    mywindow.document.write(data);
   // mywindow.document.write("resrteseresr");
    
    mywindow.document.write('</body></html>');

    mywindow.print();
  //  mywindow.close();

    return true;
}
</script>
<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>
<script>
    $(document).ready(function(){   
    	var p='${result.TdInstance1.icdCode}';
    	var q='${result.TdInstance1.testName}';
    	var r='${result.TdInstance1.rate}';
    	var s='${result.TdInstance1.total}';
    	
    	var icdCode=p.split(",");
    	var testName=q.split(",");
    	var rate=r.split(",");
    	var total=s.split(",");

    	if(icdCode[0] != "" && icdCode[0] != null){
    	document.getElementById('icdCode').innerHTML=icdCode[0];
    	document.getElementById('testName').innerHTML=testName[0];
    	document.getElementById('rate').innerHTML=rate[0];
    	document.getElementById('total').innerHTML=total[0];
    	}else{
    		$("#icdCode").hide();
    		$("#testName").hide();
    		$("#rate").hide();
    		$("#total").hide();
        	}

    	if(icdCode[1] != "" && icdCode[1] != null){
        	document.getElementById('icdCode2').innerHTML=icdCode[1];
        	document.getElementById('testName2').innerHTML=testName[1];
        	document.getElementById('rate2').innerHTML=rate[1];
        	document.getElementById('total2').innerHTML=total[1];
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

</head>
<body>
<div id="wrapper">
<g:render template="/user/header"/>
  
  <div id="page-wrapper"><br><br><br>
            <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
 <div class="panel-body">
<p style="color:black;font-size:20px">TestData Billing is Generated Successfully</p><br>
 <div id="mydiv">
    <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
  <tr class="fieldgroup">
      <td><b>PatientId:</b> ${result.TdInstance1.patientId}</td>
      <td></td><td></td>
   <td><b>Date:</b> ${result.Date }</td></tr>
    
  <tr class="fieldgroup">
      <td><b>FullName:</b></td>
      <td>${result.TdInstance1.pFirstname} ${result.TdInstance1.pLastname}</td>
      <td></td>
      <td></td></tr>
      
      <tr>
      <td bgcolor="green"><font color="white"><b>ICD Code</b></font></td>
      <td bgcolor="green"><font color="white"><b>Test Name</b></font></td>
      <td bgcolor="green"><font color="white"><b>Rate</b></font></td>
      <td bgcolor="green"><font color="white"><b>Total</b></font></td>
      </tr>
      </thead>
          <tbody>
           <tr class="fieldgroup">
      <td id="icdCode"></td>
      <td id="testName"></td>
      <td id="rate"></td>
      <td id="total"></td></tr>
      <tr class="fieldgroup">
      <td id="icdCode2"></td>
      <td id="testName2"></td>
      <td id="rate2"></td>
      <td id="total2"></td></tr>
      <tr class="fieldgroup">
      <td id="icdCode3"></td>
      <td id="testName3"></td>
      <td id="rate3"></td>
      <td id="total3"></td></tr>
      <tr class="fieldgroup">
      <td id="icdCode4"></td>
      <td id="testName4"></td>
      <td id="rate4"></td>
      <td id="total4"></td></tr>
      <tr class="fieldgroup">
      <td id="icdCode5"></td>
      <td id="testName5"></td>
      <td id="rate5"></td>
      <td id="total5"></td></tr>
      <tr class="fieldgroup">
      <td id="icdCode6"></td>
      <td id="testName6"></td>
      <td id="rate6"></td>
      <td id="total6"></td></tr>
      <tr class="fieldgroup">
      <td id="icdCode7"></td>
      <td id="testName7"></td>
      <td id="rate7"></td>
      <td id="total7"></td></tr>
      <tr class="fieldgroup">
      <td id="icdCode8"></td>
      <td id="testName8"></td>
      <td id="rate8"></td>
      <td id="total8"></td></tr>
      <tr class="fieldgroup">
      <td id="icdCode9"></td>
      <td id="testName9"></td>
      <td id="rate9"></td>
      <td id="total9"></td></tr>
      <tr class="fieldgroup">
      <td id="icdCode10"></td>
      <td id="testName10"></td>
      <td id="rate10"></td>
      <td id="total10"></td></tr>
          
          <%--
      <tr class="fieldgroup">
      <td>${result.TdInstance1.icdCode}</td>
      <td>${result.TdInstance1.testName}</td>
      
      <td>${result.TdInstance1.rate}</td>
      
     
      <td>${result.TdInstance1.total}</td></tr>
      
      <g:if test="${result.TdInstance2 != null}">
       <tr class="fieldgroup">
       <td>${result.TdInstance2.icdCode}</td>
       
      <td>${result.TdInstance2.testName}</td>
      
      <td>${result.TdInstance2.rate}</td>
      
      
      <td>${result.TdInstance2.total}</td></tr>
      </g:if>
      
         <g:if test="${result.TdInstance3 != null}">
       <tr class="fieldgroup">
       <td>${result.TdInstance3.icdCode}</td>
       
      <td>${result.TdInstance3.testName}</td>
      
      <td>${result.TdInstance3.rate}</td>
      
     
      <td>${result.TdInstance3.total}</td></tr>
      </g:if>
      
         <g:if test="${result.TdInstance4 != null}">
       <tr class="fieldgroup">
       <td>${result.TdInstance4.icdCode}</td>
      <td>${result.TdInstance4.testName}</td>
      
      <td>${result.TdInstance4.rate}</td>
      
    
      <td>${result.TdInstance4.total}</td></tr>
      </g:if>
      
         <g:if test="${result.TdInstance5 != null}">
       <tr class="fieldgroup">
       <td>${result.TdInstance5.icdCode}</td>
      <td>${result.TdInstance5.testName}</td>
      
      <td>${result.TdInstance5.rate}</td>
      
      
      <td>${result.TdInstance5.total}</td></tr>
      </g:if>
      
       <g:if test="${result.TdInstance6 != null}">
       <tr class="fieldgroup">
       <td>${result.TdInstance6.icdCode}</td>
      <td>${result.TdInstance6.testName}</td>
      
      <td>${result.TdInstance6.rate}</td>
      
      
      <td>${result.TdInstance6.total}</td></tr>
      </g:if>
      
       <g:if test="${result.TdInstance7 != null}">
       <tr class="fieldgroup">
       <td>${result.TdInstance7.icdCode}</td>
      <td>${result.TdInstance7.testName}</td>
      
      <td>${result.TdInstance7.rate}</td>
      
      
      <td>${result.TdInstance7.total}</td></tr>
      </g:if>
      
       <g:if test="${result.TdInstance8 != null}">
       <tr class="fieldgroup">
       <td>${result.TdInstance8.icdCode}</td>
      <td>${result.TdInstance8.testName}</td>
      
      <td>${result.TdInstance8.rate}</td>
      
      
      <td>${result.TdInstance8.total}</td></tr>
      </g:if>
      
       <g:if test="${result.TdInstance9 != null}">
       <tr class="fieldgroup">
       <td>${result.TdInstance9.icdCode}</td>
      <td>${result.TdInstance9.testName}</td>
      
      <td>${result.TdInstance9.rate}</td>
      
      
      <td>${result.TdInstance9.total}</td></tr>
      </g:if>
      
       <g:if test="${result.TdInstance0 != null}">
       <tr class="fieldgroup">
       <td>${result.TdInstance0.icdCode}</td>
      <td>${result.TdInstance0.testName}</td>
      
      <td>${result.TdInstance0.rate}</td>
      
      
      <td>${result.TdInstance0.total}</td></tr>
      </g:if>
      --%></tbody>
      
      <tr class="fieldgroup">
      <td></td>
      <td></td>
      <td><b>Tax:</b></td>
      <td>${result.TdInstance1.tax}</td></tr>
      
      <tr class="fieldgroup"> 
      <td></td>
      <td></td>
      <td><b>GrandTotal:</b></td>
      <td>${result.TdInstance1.grandTotal}</td></tr>
      
      <tr class="fieldgroup">
      <td><b>ModifiedBy:</b></td>
      <td>${result.TdInstance1.modifiedBy}</td>
      <td><b>Mode:</b></td>
      <td>${result.TdInstance1.pMode}</td></tr>
     
   
      <tr class="fieldgroup">
       <td><b></b></td>
      <td></td>
      <td><b></b></td>
      <td></td>
     </tr>
     
      <tr class="fieldgroup">
       <td><b></b></td>
      <td></td>
      <td><b></b></td>
      <td></td>
     </tr>
     
      <tr class="fieldgroup">
       <td><b></b></td>
      <td></td>
      <td><b>Authorized sign:</b></td>
      <td></td>
     </tr>
     
     </table>
     
 
  </div><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center">
     <input type="button" value="Print" class="btn btn-primary" onclick="PrintElem('#mydiv')" />
     </div>
</div></div></div></div></div></div></div>
<!--  &nbsp;&nbsp;<g:link controller="user" action="userDashboard" class="active"><input type="button" value="Home"></g:link>-->
</body>
</html>

        
</body>
</html>



