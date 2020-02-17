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
        
    	('#status').val(${result.status});
    	
        
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
      

<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};

function getval(sel)
{
	alert(sel.value);
	$('#status').val(sel.value);
}

</script>


</head>
<body>
<g:render template="/grocery/groceryheader1"/>
	
	<!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb" style="padding-top: 20px">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end" style="padding: 60px 110px 60px 0;">
                <div class="col-first">
                    <h1>Accept Order</h1>
                    <nav class="d-flex align-items-center">
                        <a href="/Skeleton/merchant/ldashboard">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="/Skeleton/orderStatus/acceptorder">Accept Order</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->
    
<br><br>  

<div class="container">
    <div class="col-lg-9">
        <div class="order_box">
            <h2>Order List</h2>
            <g:form class="form-horizontal"  controller="orderStatus"  action="updateOrder"  nonvalidate="nonvalidate">
               
                <ul class="list">
                    <li><a style="font-size: 20px;color: black;">Name<span class="last">Price</span></a></li>
                    <g:each in="${result.result.orderList}" expr="true">
                    <li><a style="font-size: 16px;color: black;">${it.groceryName } <span class="last" style="font-size: 16px;color: black;">${it.groceryPrice}</span></a></li>
                    </g:each>
                </ul>
                
                <ul class="list list_2">
                    <li><a style="font-size: 17px;color: brown;">Total Amount<span class="last" style="font-size: 17px;color: brown;">${result.result.totAmt}</span></a></li>
                    <li class="nav-item submenu dropdown">
                    <a style="font-size: 17px;color: brown;">Status<span class="last">
								<select name="statusId" id="statusId" class="form-control" onchange="getval(this)"; >
                               <option value="">${result.result.status}</option>
                                	     <option value="Accepted">Accepted</option>
                                		<option value="30 Minutes">30 Minutes</option>
                                		<option value="1 Hour">1 Hour</option>
                                		<option value="2 Hours">2 Hours</option>
                                </select>
                                 <input type="hidden" id="orderId" name="orderId" value="${result.acceptance.orderId}"/>
                                 <input type="hidden" id="status" name="status"/>
							</span></a></li>
                </ul>
                			 <div class="col-sm-12 text-left" style="padding-left:180px">
				
				<fieldset class="buttons">
					<g:submitButton name="update" class="save" class="primary-btn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
				</div>
                </g:form>
                 
         </div>
     </div>
 </div>
 
 
 
 
 <%--
 
 <div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h2 style="font-size: 20px;color: black;">Product List <b style="font-size:18px; color:black;"></h4>
            </div>
        </div> <br>
  <div class="row">
            <div class="col-lg-6">
                <div class="order_box">
 					<div class="table-responsive">
 					    <g:form class="form-horizontal"  controller="orderStatus"  action="updateOrder"  nonvalidate="nonvalidate">
						<table class="table table-hover table-condensed table-striped">
      						<thead>
      							<tr>
      								<th>Grocery Name</th>  
      								<th>Price</th>
      							</tr>
      						</thead>
     						<tbody>
     							<g:each in="${result.result.orderList}" expr="true">
    								<tr>
      									<td style="font-size: 15px;color: black;"> ${it.groceryName}</td>
        								<td style="font-size: 15px;color: black;">${it.groceryPrice}</td>
      								</tr>
    							</g:each>
    							
    			    			<tr>
      								<td style="font-size: 18px;color: brown;"> Total Amount</td>
        							<td style="font-size: 18px;color: brown;">${result.result.totAmt}</td>
      							</tr>
      							
      							</tbody>
     					</table>
     					<div  class="col-lg-6">
     					<div class="row">
      							<a>Status</a> 
								<span class="col-lg-6">
									<select name="statusId" id="statusId" class="form-control" onchange="getval(this)"; >
									
                                		<option value="">${result.result.status}</option>
                                	     <option value="Accepted">Accepted</option>
                                		<option value="30 Minutes">30 Minutes</option>
                                		<option value="1 Hour">1 Hour</option>
                                		<option value="2 Hours">2 Hours</option>
                                	</select>
                                 	<input type="hidden" id="orderId" name="orderId" value="${result.acceptance.orderId}"/>
                                 	<input type="hidden" id="status" name="status"/>
								</span>
							</div>	
      						</div>	
    						
     					<div class="col-sm-12 text-left" style="padding-left:180px">
				
				<fieldset class="buttons">
					<g:submitButton name="update" class="save" class="primary-btn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
				</div>
     					</g:form>
     				</div>
    			</div>
   			</div>
  		</div>
	</div>
 
 --%></body>
 </html>