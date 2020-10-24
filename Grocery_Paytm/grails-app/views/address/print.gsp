<html>
<head>
<title></title>
<style>

</style>
 <meta charset="utf-8">
   <!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>skeleton</title>
     
 <link rel="stylesheet" href="/Skeleton/website/css/linearicons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/themify-icons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">
	
	<link rel="stylesheet" href="/Skeleton/website/css/nice-select.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nouislider.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/magnific-popup.css">
	<link rel="stylesheet" href="/Skeleton/website/css/main.css">


   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">     



 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

 
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
 

<style>
body {
    font-family: Verdana;
}


 td {    
    border: 1px solid #ddd;
    text-align: center;
}
 th {    
    border: 1px solid #ddd;
    text-align: center;
}

table {
    border-collapse: collapse;
    width: 35%;
    background-color: #fff;
    text-align: center;
     font-color: black;
}

th, td {
    padding: 15px;
   
}

</style>


<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>

</head>
<body>

<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/dashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/Skeleton/merchant/dashboard">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
							</li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
							</li>
														
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Pages</a>
							</li>
							
							<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span><i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="merchant" action="updateprofile" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/merchant/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

								</ul>
							</li>
							
						</ul>
						
			
						
						
					</div>
				</div>
				
			</nav>
		</div>
		
	
		 
		 
		 
	</header>
	<!-- End Header Area -->

<br><br><br><br>

  <div class="container intro-header">
            <div class="row">
                <div class="col-xs-6 col-sm-12 col-md-12  ">
                  

<g:if test="${result.getAt("status") == 'error'}">
<p style="color:black;font-size:20px">${result.getAt("message")}</p>
</g:if>
<g:else>
<div class="col"  style="color:black;font-size:20px">${result.message}</div>
<br>
<g:if test="${result.addressInstance != '0'}"> 
<div class="row">               
  <div id="mydiv" align="center">
                            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
                                <table class="table table-bordered table-hover" style="border-style: solid">
                                    <thead>
      <tr class="fieldgroup">
  
      <td style="color:black"><b>Track Id:</b></td>
      <td style="color:black"> ${result.addressInstance.addressId}</td>
   
     <td style="color:black"><b>Date:</b></td>
    <td style="color:black">${result.addressInstance.createdDate }</td>
    </tr>
    
  <tr class="fieldgroup">
      <td style="color:black"><b>FullName:</b></td>
      <td style="color:black">${result.addressInstance.fullName}</td>
      
      
      
      <tr class="fieldgroup">
      <td style="color:black"><b>Area:</b></td>
      <td style="color:black">${result.addressInstance.area}</td>
      <td style="color:black"><b>Mobile Number:</b></td>
      <td style="color:black">${result.addressInstance.mobileNumber}</td></tr>
      
      <tr class="fieldgroup">
      <td style="color:black"><b>Landmark:</b></td>
      <td style="color:black">${result.addressInstance.landmark}</td>
      <td style="color:black"><b>City:</b></td>
      <td style="color:black">${result.addressInstance.city}</td>
     </tr>
     
       <tr class="fieldgroup">
      <td style="color:black"><b>Product Details:</b></td>
      <td style="color:black"></td>
      
      <tr class="fieldgroup">
      
     <tr class="fieldgroup">
      <td style="color:black"><b>Product name:</b></td>
      <td style="color:black">${result.addressInstance.ugroceryName}</td>
      <td style="color:black"><b>Quantity:</b></td>
      <td style="color:black">${result.addressInstance.uquantity}</td>
     </tr>
     
     <tr class="fieldgroup">
      <td style="color:black"><b>Cost:</b></td>
      <td style="color:black">${result.addressInstance.ucost}</td>
      <td style="color:black"><b>Weight:</b></td>
      <td style="color:black">${result.addressInstance.uweight}</td>
     </tr>
     <tr class="fieldgroup">
      <td style="color:black"><b>Offer:</b></td>
      <td style="color:black">${result.addressInstance.uoffer}</td>
      <td style="color:black"><b>Total:</b></td>
      <td style="color:black">${result.addressInstance.utotal}</td>
     </tr>
     
     
    </thead></table></div></div></div></div>
  
  
    <div class="wrapper">
                          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <input type="button" class="btn btn-primary" value="Print" onclick="PrintElem('#mydiv')" />
     <g:link controller="address" action="deleteOrder" id="${result.addressInstance.id }"><button class="btn btn-primary">Cancel</button></g:link>
    
  
   </div>
    
   </div>
   </g:if>   
    </g:else></div></div></div>
    
				
<style>

.wrapper {
  text-align: center;
  position: absolute;
 padding-left:300px;
}
</style>

  </body>
</html>