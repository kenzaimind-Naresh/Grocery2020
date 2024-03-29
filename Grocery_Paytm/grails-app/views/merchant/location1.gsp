<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
 "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>



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


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type='text/javascript' src="js/jquery.mycart/jquery.mycart.js"></script>

	    <script  src="${resource(dir: 'js', file: 'location.js')}"></script>



<script>
$(document).ready(function(){
    
    $("#city").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#city").val() ){
		   	 
	   		$("#cityinfo").text("");
	     } else {
	    	 $("#cityinfo").text("Please enter City name");
	     }
	   	  });
});
 	  
function getCitydata() {
	
	var city= document.getElementById("city").value

	if(city){
	var path = "/Skeleton/merchant/getCityData";
	$.ajax({
	 url : path,
	 type : "get",
	 data :{
		 city
	 },
	 success : function(res) {
		var resp;
		 resp=res.replace("[","");
		 resp=resp.replace("]","");
		 resp=resp.replace(/'/g, "");
		 var loc = [];
		 for(var m=0;m<resp.split(",").length;m++){
			 loc.push(resp.split(",")[m]);
			 }

	 	if(loc[0]==city){
		 	return true;
		 }else{
	 		event.preventDefault();
	 		alert("No shops are Available in this location.");
	 		location.href = "/Skeleton/merchant/location1";
			return;
		 	}
	 
	 },
	 error : function() {
	 }
	})
	}else{
		event.preventDefault();
		$("#cityinfo").text("Please enter City name");
		return;
	}
		}

function getStreetdata() {
	
	var city= document.getElementById("city").value
	var path = "/Skeleton/merchant/getStreetData";
	$.ajax({
	 url : path,
	 type : "get",
	 data :{
		 city
	 },
	 success : function(res) {
	 //alert(res);
	 var resp;
	 resp=res.replace("[","");
	 resp=resp.replace("]","");
	 resp=resp.replace(/'/g, "");
	 //alert(resp);
	 var cars = [];
	 //alert(resp.split(",").length);	 
	 for(var m=0;m<resp.split(",").length;m++){
		 cars.push(resp.split(",")[m]);
		 }
	  
	 
	 //alert(cars);
		    $("#street").autocomplete({
	    	
	    	  source:cars
	    });

	  
	 },
	 error : function() {
	 }
	})
	}
	
$(function() {
	

    $("#city").autocomplete({
    	
    	  source:[
    	<g:each in="${result.city}">
    	
        '${it.city}',
           
        </g:each>]
    });
  });

</script>






<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>
<style>

form.example input[type=text] {
  padding: 5px;
  font-size: 15px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: white;
  padding-left: 50px;
}

form.example button {
  float: left;
  width: 20%;
  padding: 4px;
  border-radius: 22px;
  background: #ffa600;
  color: white;
  border: 1px solid orange;
  font-size: 17px;
  cursor: pointer;
}

form.example button:hover {
  background: white;
  color: #ffa600;
  border: 1px solid orange;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>



<style>



/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  
}

/* Modal Content */
.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  border: 1px solid #888;
  width: 80%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
  
}

/* Add Animation */
@-webkit-keyframes animatetop {

  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {

  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}


.modal-header {
	padding: 20px 80px;
  	background-color: #5cb85c;
  	color: white;
}

.modal-body {
	position: relative;
	padding: 2px 20px;
}

.modal-footer {
position: relative;
  padding-right: 120px;
  color: white;
}

.overlay {
  position: absolute;
  top: 80px;
  left: 0;
  width: 80%;
  height: 60%;
  background-color: white(0,0,0,0.88);
    padding-left:300px;
  
}

</style>


</head>
<body>

<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/location1"><img src="/Skeleton/website/img/arvanlogo.jpg" style="height: 60px;width: 150px;" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
							<g:if test="${result.uname ==null}">
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Sign in</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/Skeleton/merchant/login">Merchant Login</a></li>
							 		<li class="nav-item"><a class="nav-link" href="/Skeleton/user/userlogin1">User Login</a></li>
 								</ul>
							</li>
							</g:if>
							<g:else>
								<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.uname.firstName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								<g:if test="${result.flag =="M"}">
								<li><g:link controller="merchant" action="updateprofile" class="active"  style="color:	#DAA520;font-size:14px;"><i class="fa fa-user"></i> Profile</g:link></li>
									</g:if>
									<g:else>
										<li><g:link controller="user" action="updateuser" class="active"  style="color:	#DAA520;font-size:14px;"><i class="fa fa-user"></i> Profile</g:link></li>
									</g:else>
									<li><g:link controller="merchant" action="changepass" class="active" style="color:	#DAA520;font-size:14px;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
									<li><a href="/Skeleton/user/logout" style="color:#DAA520;font-size:14px;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
								</ul>
								</li>
							</g:else>
						</ul>
						
					</div>
				</div>
			</nav>
		</div>
		
	</header>
	<!-- End Header Area -->
	
<br><br><br><br><br>		

<!-- The Modal -->
<div id="myModal"  class="overlay">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header"><br><br>
    <div class="row">
      <h3 style="color: white;  padding-left:100px">Welcome to Online Store</h3>
      
      <h3 style="color: white; padding-left:100px">Book your Order by Area  Wise</h3> 
    </div>
    </div>
           
    <br><br>
<div align="center" style="padding-left: 18px;">
<g:form class="example" ID="myform" action="searchlocation" controller="merchant" method="GET" nonvalidate="nonvalidate" style="width:400px">			
  <div class="row">
  <input type="text" name="city" id="city" class="form-control"  placeholder="Enter Location.." onchange="getStreetdata()"> 
        <span id="cityinfo" style="color:red;"></span>
       </div> 
  <br>
  
  <div align="center" style="padding-left:60px">
  <button type="submit" value="submit" class="form-control" class="btn btn-primary" onclick="getCitydata()" style="width: 50%;">Proceed</button>
    <br>
    </div>
</g:form>
 <br>
</div>
</div>
</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

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
 // color: white;
}
a:hover {
  //color: white;
}


</style>

<br><br>
<div class="footer ">
<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>  
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong>Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
</div>

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="/Skeleton/website/js/vendor/bootstrap.min.js"></script>
	<script src="/Skeleton/website/js/jquery.ajaxchimp.min.js"></script>
	<script src="/Skeleton/website/js/jquery.nice-select.min.js"></script>
	<script src="/Skeleton/website/js/jquery.sticky.js"></script>
	<script src="/Skeleton/website/js/nouislider.min.js"></script>
	<script src="/Skeleton/website/js/countdown.js"></script>
	<script src="/Skeleton/web-app/website/js/jquery.magnific-popup.min.js"></script>
	<script src="/Skeleton/website/js/owl.carousel.min.js"></script>
	           

</body>
</html>