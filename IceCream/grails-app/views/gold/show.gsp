<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
   
<title>Jewellary</title>

 <!-- Bootstrap core CSS-->
    <link href="/Jewellers/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/Jewellers/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/Jewellers/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/Jewellers/website/css/sb-admin.css" rel="stylesheet">

 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
 <style>
body {
font-family: verdana;
 background-color: white;
}

body{
counter-reset:Serial;
}
table{
border-collapse:separate;
}
 .div:first-child:before
{
counter-increment:Serial;
content: counter(Serial);
}
tr,td {
    
    background-color: #fff;
    text-align: center;
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
    mywindow.document.write('<html><head><title>Kenzai Jewellers</title>');
    mywindow.document.write('</head><body>');
    mywindow.document.write(data);
   // mywindow.document.write("resrteseresr");
    
    mywindow.document.write('</body></html>');

    mywindow.print();
  //  mywindow.close();

    return true;
}


  </script>     
  
  <script>
sessionStorage.setItem("Page2Visited", "True");
</script>
  
</head>
<body>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
$(document).keydown(function (e) {
return (e.which || e.keyCode) != 116;
});
});
</script>
<!-- Navigation -->
<nav class="navbar navbar-expand navbar-dark bg-dark static-top" >

<a class="navbar-brand" href="/Jewellers/user/userdashboard1" >Kenzai Jewellars</a>


<ul class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
</ul>
 <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item">
       <a  class="nav-link"  href="/Jewellers/user/userdashboard1">
       <i class="fa fa-home fa-fw"></i></a>
       </li>
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-bell fa-fw"></i>
       
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-envelope fa-fw"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
   
</ul>
</nav>
<div align="center">
<h3>Kenzai Jewellery</h3>
 <p style="color:black;font-size:20px">  </p><br>
</div>
<!--  &nbsp;&nbsp;<input type="button" value="Print" onclick="window.print()" />-->

  <div id="mydiv">
    <table align=center style="border: thick solid black;width:500px;height:100px;">
    <col width="200">
    <col width="200">
    <col width="150">
    <col width="200">
    <thead>
  
  
  
  <tr>
<td>
<g:if test="${goldInstance?.createDate}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="createDate-label" class="property-label"><g:message code="gold.createDate.label" default="BillDate:" style="font-size:25px" /></span>
<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="createDate-label"><g:fieldValue bean="${goldInstance}" field="createDate" /></span></font></td>
</span>
</div>
</g:if>
</td>
</tr>

<tr>
<td>
<g:if test="${goldInstance?.pFirstname}">


<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="pFirstname-label" class="property-label"><g:message code="gold.pFirstname.label" default="FullName:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="pFirstname-label"><g:fieldValue bean="${goldInstance}" field="pFirstname"/></span></font></td>

</span>

</div>

</g:if>
</td>
</tr>
<tr>
<td>
<g:if test="${goldInstance?.jewelleryName}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="jewelleryName-label" class="property-label"><g:message code="gold.jewelleryName.label" default="JewelleryName:" style="font-size:25px" /></span>
<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="jewelleryName-label"><g:fieldValue bean="${goldInstance}" field="jewelleryName" /></span></font></td>
</span>
</div>
</g:if>
</td>
</tr>
<tr>
<td>
<g:if test="${goldInstance?.ggrams}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="grams-label" class="property-label"><g:message code="gold.ggrams.label" default="Weight:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="ggrams-label"><g:fieldValue bean="${goldInstance}" field="ggrams"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>


<tr>
<td>
<g:if test="${goldInstance?.priceofgold}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="priceofgold-label" class="property-label"><g:message code="gold.priceofgold.label" default="Gold Rate:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="priceofgold-label"><g:fieldValue bean="${goldInstance}" field="priceofgold"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>






<tr>
<td>
<g:if test="${goldInstance?.grandTotal}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="grandTotal-label" class="property-label"><g:message code="gold.grandTotal.label" default="Grand Total:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="grandTotal-label"><g:fieldValue bean="${goldInstance}" field="grandTotal"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>

<tr>
<td>
<g:if test="${goldInstance?.grams1}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="grams1-label" class="property-label"><g:message code="gold.grams1.label" default="Ret Gold:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="grandTotal-label"><g:fieldValue bean="${goldInstance}" field="grams1"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>

<tr>
<td>
<g:if test="${goldInstance?.purity}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="purity-label" class="property-label"><g:message code="gold.purity.label" default="Ret Purity:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="purity-label"><g:fieldValue bean="${goldInstance}" field="purity"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>

<tr>
<td>
<g:if test="${goldInstance?.loss}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="loss-label" class="property-label"><g:message code="gold.loss.label" default="Ret Tunch:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="loss-label"><g:fieldValue bean="${goldInstance}" field="loss"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>

<tr>
<td>
<g:if test="${goldInstance?.goldrate}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="goldrate-label" class="property-label"><g:message code="gold.goldrate.label" default="Ret GoldRate:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="goldrate-label"><g:fieldValue bean="${goldInstance}" field="goldrate"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>
<tr>
<td>
<g:if test="${goldInstance?.remainingcash}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="remainingcash-label" class="property-label"><g:message code="gold.remainingcash.label" default="Remaining Cash:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="remainingcash-label"><g:fieldValue bean="${goldInstance}" field="remainingcash"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>

<tr>
<td>
<g:if test="${goldInstance?.remaininggold}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="remaininggold-label" class="property-label"><g:message code="gold.remaininggold.label" default="Remaining Gold:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="remaininggold-label"><g:fieldValue bean="${goldInstance}" field="remaininggold"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>


<tr>
<td>
<g:if test="${goldInstance?.pMode}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="grandTotal-label" class="property-label"><g:message code="gold.grandTotal.label" default="Mode:" /></span>

<td style="font-size:20px"><font color="skyblue"><span class="property-value" aria-labelledby="grandTotal-label"><g:fieldValue bean="${goldInstance}" field="pMode"/></span></font></td>

</span>
</div>
</g:if>
</td>
</tr>
  
  
  
  
  
</thead></table>
    
    <div align="center" style="background-color: #e7f3fe;border-left: 6px solid #2196F3;">
  <p><strong>Note: </strong> Including All Taxes & Gst</p>
</div>
    
  </div><br>
   <div align="center">
     <input type="button" class="btn btn-primary" value="Print Invoice" onclick="PrintElem('#mydiv')" />
</div>

<!--  &nbsp;&nbsp;<g:link controller="user" action="userDashboard" class="active"><input type="button" value="Home"></g:link>-->
		<br>
  
 <style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:black;
   color: white;
   text-align: center;
}

a {
  color: white;
}
a:hover {
  color: white;
}


</style>


<div class="footer">
<div align="center">
<p><a href="http://www.kenzaimindapps.in/"><h5>Copyright © 2019. Kenzaimind Info Solutions</h5></a></p>
</div>
</div>
 

	
  </body>
</html>

