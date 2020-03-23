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
        
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="userName-md"style="color:white">${result.uname.userName }</span> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="/Jewellers/user/updateuser">Profile</a>
            <a class="dropdown-item" href="/Jewellers/user/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="/Jewellers/user/userlogin" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
  

  <tr class="fieldgroup">
      <td><b>FullName:</b></td>
      <td>${result.PInstance1.pFirstname}</td>
      <td><b>Date:</b></td><td> ${result.Date }</td>
      <td><b>Mobile Number:</b></td><td> ${result.PInstance1.mobileNumber }</td></tr>
     <tr> <td><b>SaleGoldRate:</b></td><td> ${result.PInstance1.salegoldrate }</td>
      <td><b>PurchaseGoldRate:</b></td><td> ${result.PInstance1.purchasegoldrate }</td>
      </tr>
      
    <!--  <table align="center"> -->
     
      <tr>
      <td bgcolor="green"><font color="black"><b>S.No</b></font></td>
     <td bgcolor="green"><font color="black"><b>Jewellary Name</b></font></td>
     <td bgcolor="green"><font color="black"><b>Remain Gold</b></td>
    
     
      
         
      </tr>
      </thead>
          <tbody>
      <tr class="fieldgroup">
      
       <td class="div">    
</td>
       
      <td>${result.PInstance1.jewelleryName}</td>
      <td>${result.PInstance1.remaininggold 	}</td>
     
      
      
      </tr>
      
      
      
      
      
      
      
      <g:if test="${result.PInstance2 != null}">
        <tr class="fieldgroup">
           <td class="div">    
</td>
      <td>${result.PInstance2.jewelleryName}</td>
      
      <td>${result.PInstance2.quantity}</td>
      
      <td>${result.PInstance2.rate}</td>
      
      <td>${result.PInstance2.total}</td></tr>
      </g:if>
      
           
      <g:if test="${result.PInstance3 != null}">
        <tr class="fieldgroup">
         <td class="div">    
</td>
      <td>${result.PInstance3.jewelleryName}</td>
      
      <td>${result.PInstance3.quantity}</td>
      
      <td>${result.PInstance3.rate}</td>
      
      <td>${result.PInstance3.total}</td></tr>
      </g:if>
      
       <g:if test="${result.PInstance4 != null}">
        <tr class="fieldgroup">
            <td class="div">    
</td>
      <td>${result.PInstance4.jewelleryName}</td>
      
      <td>${result.PInstance4.quantity}</td>
      
      <td>${result.PInstance4.rate}</td>
      
      <td>${result.PInstance4.total}</td></tr>
      </g:if>
      
       <g:if test="${result.PInstance5 != null}">
        <tr class="fieldgroup">
          <td class="div">    
</td>
      <td>${result.PInstance5.jewelleryName}</td>
      
      <td>${result.PInstance5.quantity}</td>
      
      <td>${result.PInstance5.rate}</td>
      
      <td>${result.PInstance5.total}</td></tr>
      </g:if>
      </tbody>
     
      
      
      
     
   <!--    </table>--> 
      
  <!--     <table align="center">--> 
      <tr class="fieldgroup">
      <td><b>ModifiedBy:</b></td>
      <td>${result.PInstance1.modifiedBy}</td>
      <td></td>
      <td><b>Mode:</b></td>
      <td>${result.PInstance1.pMode}</td>
      
      
      </tr>
      
      <tr class="fieldgroup">
      <td></td>
      <td></td>
      <td></td>
      <td><b>Authorized sign:</b></td>
      <td></td></tr>
      <br>
  
     </table>
    
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
<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>
 

	
  </body>
</html>

