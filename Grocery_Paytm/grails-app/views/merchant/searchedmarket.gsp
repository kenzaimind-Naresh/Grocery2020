
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

<style type="text/css">  

 
     .search-form-wrapper {
    display: none;
    position: absolute;
   width: 100%;
    left: 0;
    right: 0;
    padding-left: 470px;
    padding-right:470px;
}
.search-form-wrapper.open {
    display: block;
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

 <script type="text/javascript">
    $( document ).ready(function() {
    	$('[data-toggle=search-form]').click(function() {
    	    $('.search-form-wrapper').toggleClass('open');
    	    $('.search-form-wrapper .search').focus();
    	    $('html').toggleClass('search-form-open');
    	  });
    	  $('[data-toggle=search-form-close]').click(function() {
    	    $('.search-form-wrapper').removeClass('open');
    	    $('html').removeClass('search-form-open');
    	  });
    	$('.search-form-wrapper .search').keypress(function( event ) {
    	  if($(this).val() == "Search") $(this).val("");
    	});

    	$('.search-close').click(function(event) {
    	  $('.search-form-wrapper').removeClass('open');
    	  $('html').removeClass('search-form-open');
    	});
    	});



    </script>


</head>
<body>
 <g:render template="/user/userheader2"/>
       <br><br><br><br>
      <br><br>


	<!-- End Header Area -->

     <br> 
    <section class="owl-carousel active-product-area section_gap">
		<div class="single-product-slider">
			<div class="container">
</div>

</div>
</section>

<!-- The Modal -->
<div id="myModal"  class="overlay"><br>

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header"><br><br><br>
      <h2 style="color: white;  padding-right:250px">Welcome to Online Super Market</h2>
      
    </div>
     <br>
      <div >
<div class="container">
<div class="row">

     <g:each in="${result.emp}" var="i" expr="true">
      <tr>
		<div class="single-product">
			<div class="product-details">
			<div class="row" style="padding-left:50px">
					<button type="button" class="genric-btn primary circle" style="font-size: 15px;">
						<a href="/Skeleton/user/marketdata?merchantshopName=${i.id }" style="color: black">${i.shopName}</a>
					</button>
			</div> <br>
			</div>
		</div>
      </tr>
    </g:each>
</div>
</div>
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