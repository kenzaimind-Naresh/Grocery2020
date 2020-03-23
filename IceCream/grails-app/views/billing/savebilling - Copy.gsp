<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
   
<title>Amul Icecreams</title>

 <!-- Bootstrap core CSS-->
    <link href="/Icecreams/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/Icecreams/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/Icecreams/website/css/sb-admin.css" rel="stylesheet">

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

<style>
table { border-collapse: collapse; }
tr:nth-child(3) { border: solid thin; }
</style>
 	
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
    mywindow.document.write('<html><head><title>Kenzai Icecreams</title>');
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

<a class="navbar-brand" href="/Icecreams/user/userdashboard" >Amul Icecreams</a>


<ul class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
</ul>
 <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item">
       <a  class="nav-link"  href="/Icecreams/user/userdashboard">
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
            <a class="dropdown-item" href="/Icecreams/user/updateuser">Profile</a>
            <a class="dropdown-item" href="/Icecreams/user/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="/Icecreams/user/logout" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
   
</ul>
</nav>

<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
			<div class="form-group">
				<div class="col-md-7 col-sm-7">
					<div align="center"><p style="color:black;font-size:20px">Tax Invoice</p></div><hr>
					<div class="col-md-5 col-sm-5">
						<b style="background-color:#b8b4b4;font-size: 17px;">Amul Icecreams&emsp;</b><br>
						GSTIN/UIN:  36ADPPV94O9A1Z7<br>
						Weekly Bazar, Metapally,<br>
						Telangana-505325.<br><br>
					</div>
					<table align="right">
						<tr><td style="text-align: left;"><b>Date: </b></td><td> ${result.Date }<br></td></tr>
						<tr><td><b>Invoice Id: </b></td><td> ${result.PInstance1.id}</td></tr>
					</table>
					<br><br>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-7 col-sm-7">
					 <b style="background-color:#b8b4b4;font-size: 15px;">Buyer&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</b><br>
					 <b>Name: </b>${result.PInstance1.customerName}<br>
					 <b>Mobile: </b>${result.PInstance1.mobileNumber }<br>
					 <b>Address: </b> ${result.PInstance1.address }<br><br>
				 </div>
			</div>
			<div class="form-group">
				<div class="col-md-7 col-sm-7">
					<table align="center">
					     <thead>
						      <tr>
						      <td style="background-color:#b8b4b4;"><font color="black"><b>S.No</b></font></td>
						      <td style="background-color:#b8b4b4;"><font color="black"><b>Product Name</b></font></td>
						      <td style="background-color:#b8b4b4;"><font color="black"><b>Wt.</b></font></td>
						      <td style="background-color:#b8b4b4;"><font color="black"><b>Qty.</b></font></td>
						      <td style="background-color:#b8b4b4;"><font color="black"><b>Price</b></font></td>
						      <td style="background-color:#b8b4b4;"><font color="black"><b>Discount</b></font></td>
						      <td style="background-color:#b8b4b4;"><font color="black"><b>Total</b></font></td>
						      </tr>
					      </thead>
					      <tbody>
						      <tr class="fieldgroup">
							       <td class="div"></td>
							      <td>${result.PInstance1.productDesc1}</td>
							      <td>${result.PInstance1.weight1}</td>
							      <td>${result.PInstance1.quantity1}</td>
							      <td>${result.PInstance1.price1}</td>
							      <td>${result.PInstance1.offerPercentage1}</td>
							      <td>${result.PInstance1.total1}</td>
						     </tr>
						      
						      <tr class="fieldgroup">
							       <td class="div"></td>
							      <td>${result.PInstance1.productDesc2}</td>
							      <td>${result.PInstance1.weight2}</td>
							      <td>${result.PInstance1.quantity2}</td>
							      <td>${result.PInstance1.price2}</td>
							      <td>${result.PInstance1.offerPercentage2}</td>
							      <td>${result.PInstance1.total2}</td>
							</tr>
						      
						      <tr class="fieldgroup">
							       <td class="div"></td>
							      <td>${result.PInstance1.productDesc3}</td>
							      <td>${result.PInstance1.weight3}</td>
							      <td>${result.PInstance1.quantity3}</td>
							      <td>${result.PInstance1.price3}</td>
							      <td>${result.PInstance1.offerPercentage3}</td>
							      <td>${result.PInstance1.total3}</td>
							</tr>
						    
						    <tr class="fieldgroup">
							       <td class="div"></td>
							      <td>${result.PInstance1.productDesc4}</td>
							      <td>${result.PInstance1.weight4}</td>
							      <td>${result.PInstance1.quantity4}</td>
							      <td>${result.PInstance1.price4}</td>
							      <td>${result.PInstance1.offerPercentage4}</td>
							      <td>${result.PInstance1.total4}</td>
							</tr>
						
						      <tr class="fieldgroup">
							       <td class="div"></td>
							      <td>${result.PInstance1.productDesc5}</td>
							      <td>${result.PInstance1.weight5}</td>
							      <td>${result.PInstance1.quantity5}</td>
							      <td>${result.PInstance1.price5}</td>
							      <td>${result.PInstance1.offerPercentage5}</td>
							      <td>${result.PInstance1.total5}</td>
						      </tr>
					      </tbody>
					</table><br>
				</div>
			</div>
		    <div class="form-group">
				<div class="col-md-7 col-sm-7">  
					<div class="col-md-5 col-sm-5"> 
						<div align="center"  style="width:300px;height:65px;border: 1px solid black ; ">
			      			We declare that this invoice shows  the actual price of the goods described and that all particulars are true and correct</div><br>
		 				</div>
						<table align="right"> 
							<tr class="fieldgroup">
						    	<td style="background-color:#b8b4b4;text-align: left;"><b>Grand Total:</b></td>
						      	<td ><b>${result.PInstance1.grandTotal}</b></td>
						    </tr>
						    <tr>
						    	<td style="background-color:#b8b4b4;text-align: left;"><b>Mode:</b></td>
						      	<td>${result.PInstance1.paymentMode}</td>
						    </tr>
						    <tr><td style="background-color:#b8b4b4;text-align: left;"> <b>Authorized sign:</b></td><td></td></tr>
		     			</table>  	
					</div>
		     	</div>
			    <div class="form-group">
					<div class="col-md-7 col-sm-7"> 
			   			<div align="center">
			     			<input type="button" class="btn btn-primary" value="Print Invoice" onclick="PrintElem('#mydiv')" />
						</div>
					</div>
				</div>
			</div>
 		</div> 
 	</div>

	<div class="footer">
		<div align="center">
			<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
		</div>
	</div>
 
  </body>
</html>

  