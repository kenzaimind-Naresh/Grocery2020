<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
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
	<title>Skeleton</title>
	<!--
		CSS
		============================================= -->
    <link rel="stylesheet" href="/Skeleton/website/css/linearicons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/themify-icons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">
	<link rel="stylesheet" href="/Skeleton/website/css/owl.carousel.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nice-select.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nouislider.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/magnific-popup.css">
	<link rel="stylesheet" href="/Skeleton/website/css/main.css">


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

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
      
    
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
      


<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>


</head>

<body>

<g:render template="groceryheader1"/>

	<!-- start banner Area -->
		<div class="container">
					<br><br><br><br>
						<div class="row">
							<h4 style="padding-left:170px;font-family: Calibri" >Groceries List </h4>
												<g:link controller="grocery" action="create"><h4 style="padding-left:300px;font-family: Calibri;color:#1E90FF">Create Grocery</h4></g:link>
							
							</div>						
					</div>
	<!-- End banner Area -->
	
	<br>
	
<div class="container">
<div>
     <div style=" padding-left:150px; padding-right:350px;font-family: Calibri">
              <table class="table table-hover table-condensed table-striped">
      <thead>
      <tr>
      <th>Grocery Name</th>
      <th>Quantity</th>  
      <th>Cost</th>
      <th>Weight</th>  
      <th>Offer</th>  
      <th>Total</th>
       <th style="color:black;font-family: Calibri">Edit</th>
      </tr>
      </thead>
     <tbody>
     <g:each in="${result.data}" expr="true">
    
      <tr>
        <td style="font-size: 20px;"><a href="#"  style="color: black;font-family: Calibri">${it.groceryName}</a></td>
              <!-- -  <td style="font-size: 20px;"><a href="/Skeleton/grocery/edit"  style="color: black;">${it.groceryName}</a></td>
         -->
        <td style="color: black;"> ${it.quantity}</td>
        <td style="color: black;"> ${it.cost}</td>
        <td style="color: black;"> ${it.weight}</td>
        <td style="color: black;"> ${it.offer}</td>
              <td style="color: black;"> ${it.total}</td>
           <td><g:link controller="grocery" action="updateGrocery" class="btn btn-info" id="${it.id}">Add</g:link></td>
	
        </tr>
    </g:each>
    

      </tbody>
     </table></div>
     
  
      <div class="pag">
      <div class="col-sm-8 text-right">
       <g:if test="${result.offset > 0}">
     <g:link type="button" style="color:white" controller="grocery" action="offsetlist1" params="${[offset:result.offset-5,mode:'web']}" value="Previous"><button  class="primary-btn">Previous</button></g:link>
    </g:if>
  &nbsp;&nbsp;
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <g:link type="button" style="color:white" controller="grocery" action="offsetlist1"   params="${[offset: result.offset+5,mode:'web']}" value="Next"><button  class="primary-btn"> Next</button></g:link>
       </g:if>
       </div>
       </div>
       
       
</div>


</div>




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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
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
</body>

</html>