<html>
<head>
<title></title>
<style>

</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script><%--
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
<p style="color:black;font-size:20px">DischargeSheet Billing is Generated Successfully</p><br>
</div></div></div></div></div></div>
<%--
 <div id="mydiv">
    <table align=center style="border: thick solid black;width:600px;height:60px;">
    <col width="150">
    <col width="200">
    <col width="100">
    <col width="250">
    <col width="200">
    <thead>
  <tr class="fieldgroup">
      <td><b>PatientId:</b>${result.DsInstance1.patientId}</td>
      <td></td><td></td>
      <td></td>
   <td><b>Date:</b> ${result.Date }</td></tr>
    
  <tr class="fieldgroup">
      <td><b>FullName:</b></td>
      <td>${result.DsInstance1.pFirstname} ${result.DsInstance1.pLastname}</td>
      <td></td>
      <td></td>
      <td></td></tr>
      
       <tr>
      <td bgcolor="green"><font color="white"><b>Date</b></font></td>
      <td bgcolor="green"><font color="white"><b>ServiceName</b></font></td>
      <td bgcolor="green"><font color="white"><b>Quantity</b></font></td>
      <td bgcolor="green"><font color="white"><b>Rate</b></font></td>
      <td bgcolor="green"><font color="white"><b>Total</b></font></td>
     
      </tr>
      </thead>
          <tbody>
      
      <tr class="fieldgroup">
    
      <td>${result.DsInstance1.date}</td>
      
      <td>${result.DsInstance1.serviceName}</td>

      <td>${result.DsInstance1.quantity}</td>
      
      <td>${result.DsInstance1.rate}</td>

      <td>${result.DsInstance1.total}</td></tr>
      
       <g:if test="${result.DsInstance2 != null}">
       
       <tr class="fieldgroup">
    
      <td>${result.DsInstance2.date}</td>
      
      <td>${result.DsInstance2.serviceName}</td>

      <td>${result.DsInstance2.quantity}</td>
      
      <td>${result.DsInstance2.rate}</td>

      <td>${result.DsInstance2.total}</td></tr>
      </g:if>
      
           <g:if test="${result.DsInstance3 != null}">
       
       <tr class="fieldgroup">
    
      <td>${result.DsInstance3.date}</td>
      
      <td>${result.DsInstance3.serviceName}</td>

      <td>${result.DsInstance3.quantity}</td>
      
      <td>${result.DsInstance3.rate}</td>

      <td>${result.DsInstance3.total}</td></tr>
      </g:if>
      
            <g:if test="${result.DsInstance4 != null}">
       
       <tr class="fieldgroup">
    
      <td>${result.DsInstance4.date}</td>
      
      <td>${result.DsInstance4.serviceName}</td>

      <td>${result.DsInstance4.quantity}</td>
      
      <td>${result.DsInstance4.rate}</td>

      <td>${result.DsInstance4.total}</td></tr>
      </g:if>
      
            <g:if test="${result.DsInstance5 != null}">
       
       <tr class="fieldgroup">
    
      <td>${result.DsInstance5.date}</td>
      
      <td>${result.DsInstance5.serviceName}</td>

      <td>${result.DsInstance5.quantity}</td>
      
      <td>${result.DsInstance5.rate}</td>

      <td>${result.DsInstance5.total}</td></tr>
      </g:if>
      </tbody>
      
      <tr class="fieldgroup">
      <td></td>
      <td></td>
      <td></td>
      <td><b>ModifiedBy:</b></td>
      <td>${result.DsInstance1.modifiedBy}</td></tr>
     
      <tr class="fieldgroup">
      <td></td>
      <td></td>
      <td></td>
      <td><b>Authorized sign:</b></td>
      <td></td></tr>
      <br>
      
      </table>
      </div><br><br>
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
     <input type="button" value="Print Div" onclick="PrintElem('#mydiv')" />
  


--%></body>
</html>

        
</body>
</html>



