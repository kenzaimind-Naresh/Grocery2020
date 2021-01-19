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
	

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


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
      
      <script>
$(function() {
	

    $("#groceryName").autocomplete({
    	
    	  source:[
    	<g:each in="${result.groceryName}">
    	
        '${it.groceryName}',
           
        </g:each>]
    });
  });

</script>
  
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
    
      
<style>

.input-group {
	  width: auto;
	}

	.input-group input,
	.input-group .form-notch,
	.input-group .form-notch-trailing {
	  border-top-right-radius: 0 !important;
	  border-bottom-right-radius: 0 !important;
	}

	.input-group button {
	  border-top-left-radius: 0 !important;
	  border-bottom-left-radius: 0 !important;
	}
	
	

</style>

<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>


</head>

<body>

<g:render template="/grocery/groceryheader1"/>	
	<br><br><br><br><br>
	
<div class="container">

<div>
     <div style=" padding-left:150px; padding-right:350px;font-family: Calibri">
<g:form class="example" action="searchedGrocery" controller="package" method="GET" style="width:500px;padding-left:50px">
     <div class="input-group">
  <div class="form-outline" style=" padding-left:130px;">
    <input type="text" name="groceryName" id="groceryName" placeholder="Search" class="form-control" />
  </div> 
  <button id="search-button" type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
 </div><br>
</g:form>
     <table class="table table-hover table-condensed table-striped">
      <thead>
      <tr>
      <th>Grocery Name</th>
      <th>Created Quantity</th>
      <th>Reduced Quantity</th>  
      <th>Cost</th>
      <th>Weight</th>  
      <th>Offer</th>
      <th>Created Date</th>  
      <th>Total</th>        
      </tr>
      </thead>
     <tbody>
     <g:each in="${result.data}" expr="true">
    
      <tr>
        <td><a href="#"  style="color: black;font-family: Calibri">${it.groceryName}</a></td>
        <td style="color: black;"> ${it.quantity}</td>
        <td style="color: black;"> ${it.reducedQuantity}</td>
        <td style="color: black;"> ${it.cost}</td>
        <td style="color: black;"> ${it.weight}</td>
        <td style="color: black;"> ${it.offer}</td>
        <td style="color: black;"> ${it.createdDate}</td>
        <td style="color: black;"> ${it.total}</td>
           
        </tr>
    </g:each>
    

      </tbody>
     </table></div>
     <br><br><br>
     
     
      <div class="pag">
       <div class="col-sm-8 text-right">
       <g:if test="${result.offset > 0}">
     <g:link type="button" style="color:white" controller="package" action="offsetlist" params="${[offset:result.offset-5,mode:'web']}" value="Previous">
     <button class="genric-btn primary circle" style="font-size: 15px;">Previous</button></g:link>
    </g:if>
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <g:link type="button" style="color:white" controller="package" action="offsetlist"   params="${[offset: result.offset+5,mode:'web']}" value="Next">
     <button class="genric-btn primary circle" style="font-size: 15px;">Next</button></g:link>
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