<!DOCTYPE html>
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
  background: #0b7dda;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
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
  background-color: #5cb85c;
}

.modal-body {
padding: 2px 16px;


}



.overlay {
  position: absolute;
  top: 60px;
  left: 0;
  width: 80%;
  height: 60%;
  background-color: white(0,0,0,0.88);
    padding-left:350px;
  
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
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/location1"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" >Home</a></li>
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
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="username-sm"></span>${result.uname.userName}<i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								
								<li><g:link controller="merchant" action="updateprofile" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="merchant" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><a href="/Skeleton/user/logout" style="color:	#DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

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
<div align="center">
<g:form class="example" ID="myform" action="searchlocation" controller="merchant" method="GET" nonvalidate="nonvalidate" style="width:500px">			
  <div class="row">
  <input type="text" name="city" id="city" class="form-control"  placeholder="Enter Location.." onchange="getStreetdata()"> 
        <span id="cityinfo" style="color:red;"></span>
       </div> 
  <br>
  
  <div align="center" style="padding-left:140px">
  <button type="submit" value="submit" class="form-control" class="btn btn-primary" onclick="return validateForm()">Proceed</button>
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
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
	<script src="/Skeleton/website/js/vendor/bootstrap.min.js"></script>
	<script src="/Skeleton/website/js/jquery.ajaxchimp.min.js"></script>
	<script src="/Skeleton/website/js/jquery.nice-select.min.js"></script>
	<script src="/Skeleton/website/js/jquery.sticky.js"></script>
	<script src="/Skeleton/website/js/nouislider.min.js"></script>
	<script src="/Skeleton/website/js/countdown.js"></script>
	<script src="/Skeleton/web-app/website/js/jquery.magnific-popup.min.js"></script>
	<script src="/Skeleton/website/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/Skeleton/website/js/gmaps.min.js"></script>
	<script src="/Skeleton/website/js/main.js"></script>
	
 <!--End Footer Area -->  
		
</body>
</html>