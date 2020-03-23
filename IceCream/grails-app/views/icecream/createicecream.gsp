<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="expires" content="0">

<%
response.setHeader("Cache-Control","no-cache");  

response.setHeader("Cache-Control","no-store");     

response.setDateHeader("Expires", 0); 

response.setHeader("Pragma","no-cache");

%>
   
<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
		
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Amul Icecreams</title>

 <!-- Bootstrap core CSS-->
    <link href="/Icecreams/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/Icecreams/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/Icecreams/website/css/sb-admin.css" rel="stylesheet">
   
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script  src="${resource(dir: 'js', file: 'createice.js')}"></script>
    
<style>
.site-footer{
clear: both;
height: 40px;
width: 100%;
text-align: center;
margin: 0px 0px 0px 0px;
font-family: arial, helvetica;
color:white;
font-size: 15px;
 background-color:black

}

</style>


<script>

setTimeout(function(){
    window.location.href = '/Icecreams/user/expire';
 }, 31449600);
</script>

 <style type="text/css">
 table tr {
    cursor: pointer;
}
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

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <script type="text/javascript">

jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});


$(document).ready(function () {
	 $("#createDate").datepicker({
        minDate: 0,autoclose: true,
        onSelect:function (){
			$("#createDateinfo").text("");
	    }
    });
    });
</script>
 
 <style type="text/css">
 table tr {
    cursor: pointer;
}
 </style>
 
 
 <%--<script type="text/javascript">

 function chit(){
	 
	var grams = document.getElementById('grams').value;
	var karrat = document.getElementById('karrat').value;
	var goldprice = document.getElementById('goldprice').value;
	var total = document.getElementById('total').value;
	
	
goldcalc=(karrat/grams);
document.getElementById('goldcalc').value = goldcalc;

goldprice=(goldprice/11.664);
var n = goldprice.toFixed(0);
document.getElementById('goldprice').value = n;

total=(karrat*goldprice)/10;
var m = total.toFixed(0);
document.getElementById('total').value = m;

var mc = document.getElementById('mc').value;
var subtotal = document.getElementById('subtotal').value;

subtotal = (total +(+ mc));
var p = subtotal.toFixed(0);
document.getElementById('subtotal').value = p;


 }

 
 </script>
 
 --%>
 
 <script>

 calculate = function()
 {
     var resources = document.getElementById('total').value;
     var minutes = document.getElementById('mc').value; 
     document.getElementById('subtotal').value = parseInt(resources)+parseInt(minutes);
      
    }
 </script>
 
 
</head>
<body id="page-top">

<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>

<script>
     sessionStorage.setItem("Page2Visited", "True");
</script>


<!-- Navigation -->
<nav class="navbar navbar-expand navbar-dark bg-dark static-top" >

<a class="navbar-brand" href="/Icecreams/admin/dashboard" >Amul Icecreams</a>


<ul class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">

</ul>
 <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
      
      
       <li class="nav-item">
       <a  class="nav-link"  href="/Icecreams/admin/dashboard">
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
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="userName-md"style="color:white">${result.uname.adminName }</span> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="/Icecreams/admin/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="/Icecreams/admin/logout" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
</ul>
    
    </nav>
    
<br>
<!-- Content Header (Page header) -->
<section class="content-header" align="center">
<h1>
<b style="color:Black">Create Icecream</b>
</h1>
</section><br>
   <div class="container">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">


 </div>
 </div>
 </div>
   <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             
<g:form class="form-horizontal" role="form" controller="Icecream" Id="myform" name="myform" action="saveicecream"  nonvalidate="nonvalidate">
<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="materialId">Material ID :</label>
<select name="materialId" id="materialId" class="form-control" required>
<option value=" ">Material ID</option>
<option>PNRCP01</option>
<option>FSRMPST02</option>
<option>ICCOGPI10</option>
<option>ICCOCCH26</option>
<option>ICCOCAL01</option>
<option>ICCOBSC13</option>
<option>ICCOVAN21</option>
<option>ICCUGPI40</option>
<option>ICCUSTR39</option>
<option>ICCUVAN108</option>
<option>ICCUVAN101</option>
<option>ICCUKPI98</option>
<option>ICCUBDM129</option>
<option>ICCUKDR96</option>
<option>ICCUBSC95</option>
<option>ICPPVAN15</option>
<option>ICPPUBS17</option>
<option>ICSTKOS59</option>
<option>ICSTORN70</option>
<option>ICSTRJW85</option>
<option>ICSTCHB61</option>
<option>ICTRBSC09</option>
<option>ICTRBSC22</option>
<option>ICTRVAN35</option>
<option>ICTRVAN36</option>
<option>BTRCP01</option>
<option>MCHCP06</option>
<option>CHZCP15</option>
<option>CHTCP53</option>
<option>CHTCP47</option>
<option>CHTCP45</option>
<option>CHTCP29</option>
<option>CHTCP112</option>
<option>CHTCP108</option>
<option>CHTCP104</option>
<option>WCHCP08</option>
<option>WCHCP09</option>
<option>BTMCP09</option>
<option>LASCP21</option>
<option>GJRCP05</option>
<option>RASCP02</option>
<option>CAFCP12</option>
<option>DBDCP20</option>
<option>DBDCP16</option>
<option>FMPCP08</option>
<option>FMPCP04</option>
</select>
 <span id="materialIdinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="productDesc">Product Description :</label>
 <select name="productDesc" id="productDesc" class="form-control" required>
<option value=" ">Product</option>
<option>Amul Malai Paneer Dice 50x200 Gm</option>                              
<option>Frozen Sweets Rasmalai 12x8x100g </option>
<option>IC Combo Green Pista 750ml (1+1f)x19)</option>
<option>IC Combo Choco Chips 750ml (1+1f)x19)</option>
<option>IC Combo Creamy Almond 750ml ((1+1f)x19)</option>
<option>IC Combo Butter Scotch 750ml (1+1f)x19) </option>
<option>IC Combo Vanilla 750ml (1+1f)x19)</option>
<option>IC Cup Green Pista 40ml (24x8)</option>
<option>IC Cup Strawberry 40ml (24x8) </option>
<option>IC Cup Vanilla 65ml (16x9) </option>
<option>IC Cup Vanilla 100ml (16x9)</option>
<option>IC Cup Kesar Pista 100ml (16x9)</option>
<option>IC Cup Badam Masti 65ml (16x9) Pradesh</option>
<option>IC Cup Kaju Draksh 100ml (16x9)</option>
<option>IC Cup Butter Scotch 100ml (16x9)</option>
<option>IC PP Vanilla 1.25 lit. (1x25)</option>
<option>IC PP Butter Scotch 1.25 lit. (1x25)</option>
<option>IC STK Pista Malai Koolfi  60ml (20x8)</option>
<option>IC STK Orange Ice-Lickz 50ml (20x8)</option>
<option>IC STK Rajwadi Kulfi 40ml (20x8)</option>
<option>IC STK Prolife Chocobar 40ml (20x14)</option>
<option>IC Tricone Butter Scotch 50ml (20x8)</option>
<option>IC Tricone Butter Scotch 120ml (20x6) </option>
<option>IC Tricone Vanilla (Rural) 40ml (20x8)</option>
<option>IC Tricone Vanilla 120ml (20x6)</option>
<option>Amul Butter 150x100 Gm</option>                           
<option>Amul Processed Blend Pizza Cheese 60x200</option>          
<option>Amul Chocomini 12x250g Tub</option>                        
<option>Amul Milk Chocolate 40x150g Pack</option>                  
<option>Amul Dark Chocolate 40x150g  pack</option>                 
<option>Amul Milk Chocolate 18x24x20g</option>                     
<option>Amul Milk Chocolate Flowwrap 18x40x12 Gm</option>          
<option>Amul Belgian Chocolate 12x20x35g</option>                  
<option>Amul INDIA origin DARK Chocolate 40X125g</option>          
<option>Amul CHOCOZOO 12X250g </option> 
<option>Amul Bindaaz Wafer Choco 6x75x15 Gm Jar</option>           
<option>Amul Bindaaz Wafer Choco 18x36x15 Gm </option>  
<option>Amul Masti Buttermilk 27x180 Ml TP</option>                
<option>Amul Rose Lassi 27X200 ml</option>                         
<option>Amul Mithai Gulab Jamun Round24x500GmTin</option>          
<option>Amul Rosogolla 24 x 500gm Tin</option>                     
<option>AMUL KOOL CAFÉ 32x250 ML TB </option>                      
<option>Amul Irish Drink 30X200 ml Can</option>             
<option>Amul Kool Bdm MS 30x200ml Can</option>           
<option>Amul Kool Badam 30x200ml Pet Btl</option>            
<option>Amul Kool Kesar 30x200ml Pet Btl</option>         
</select>
<span id="productDescinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="weight">Icecream Type :</label> 
<select name="icecreamType" id="icecreamType" class="form-control">
<option value=" ">Icecream Type</option>
<option>Frozen</option>                              
<option>Dry</option>
</select>
 <span id="icecreamTypeinfo" style="color:red"></span>
</div>
<br><br>

<div class="col-md-4 col-sm-4">
<label for="weight">Weight :</label>
<select name="weight" id="weight" class="form-control" required>
<option value=" ">Weight</option>
<option>100 gm/ml</option>                              
<option>250 gm/ml </option>
<option>500 gm/ml</option>
<option>1 kg/ltr</option>
<option>5 kg/ltr</option>
</select>
 <span id="weightinfo" style="color:red"></span>
</div>


<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="quantity">Quantity :</label>
<input type="text" id="quantity" name="quantity" class="form-control" required />
 <span id="quantityinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="retailPrice">Retail Price :</label>
<input type="text" id="retailPrice" name="retailPrice"  class="form-control" required />
 <span id="retailPriceinfo" style="color:red"></span>
</div>
</div>


<div class="col-md-4 col-sm-4">
<label for="wholesalePrice">Wholesale Price :</label>
<input type="text" id="wholesalePrice" name="wholesalePrice" class="form-control">
 <span id="wholesalePriceinfo" style="color:red"></span>
 </div>
 
</div>

<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="myaction" name="myaction" value="save">
 <input type="hidden" id="mode" name="mode" value="web">
 
 
 
<div class="form-group">

	<div class="col-sm-12 text-center"><br>
		<button type="submit"  class="btn btn-primary" id="myform" name="myform" onclick="return validateForm()">Submit</button>
	</div>
</div>
</g:form>
</div>
</div>
</div>
   <br>



<div class="footer">
<div align="center">
<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>
 		
  <!-- Bootstrap core JavaScript-->
  
    <script src="/Icecreams/website/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/Icecreams/website/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="/Icecreams/website/vendor/chart.js/Chart.min.js"></script>
    <script src="/Icecreams/website/vendor/datatables/jquery.dataTables.js"></script>
    <script src="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/Icecreams/website/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="/Icecreams/website/js/demo/datatables-demo.js"></script>
    <script src="/Icecreams/website/js/demo/chart-area-demo.js"></script>
  
</body>
</html>
