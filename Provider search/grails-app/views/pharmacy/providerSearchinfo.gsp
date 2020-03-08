
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Provided Search</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/provider/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/provider/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/provider/css/style.css">
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/provider/css/map.css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>

 <script type="text/javascript">
$(function() {
	
    $("#city").autocomplete({
       source:[
               <g:each in="${result.solrresult.solrdata}">
               
               '${it}', 
           
        </g:each>]
    });

    $("#pharmacyName").autocomplete({
        source:[
                <g:each in="${result.solrresult.providerdata}">
                
                '${it}', 
            
         </g:each>]
     });
  });


jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});
</script>
 
 <style type="text/css">
 table tr {
    cursor: pointer;
}

  .ui-autocomplete { height: 200px; width: 200px;overflow-y: scroll; overflow-x: hidden;}
 </style>
 
  </head>
  <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
  	<!--banner-->
	<section class="banner">
		<div class="bg-color1" >
			<nav class="navbar navbar-default">
			  <div class="container">
			  	<div class="col-md-12">
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar" href="/ProviderSearch/user/ProviderSearch"><img src="/ProviderSearch/provider/img/logo.png" class="img-responsive" style="height:90px;width: 180px;margin-top: -20px;
				      margin-bottom: -20px;"></a>
				    </div>
				    <div class="collapse navbar-collapse navbar-right " id="myNavbar">
				      <ul class="nav navbar-nav ">
				        <li class=""><a href="/ProviderSearch/user/providerSearch">HOME</a></li>
				        <!--<li class=""><a href="#procedure_cost">FIND PROCEDURE COST</a></li>-->
				        <li class=""><a href="/ProviderSearch/user/providerSearch">FIND DOCTOR</a></li>
				        <!--<li class=""><a href="#find_facility">FIND FACILITY</a></li>-->
				        <li class="active"><a href="/ProviderSearch/pharmacy/providerSearch">FIND PHARMACY</a></li>
				        <li class=""><a href="/ProviderSearch/user/doctorLogin1"><b>DOCTOR LOGIN</b></a></li>
				         <li class=""><a href="/ProviderSearch/user/pharmacyLogin1"><b>PHARMACY LOGIN</b></a></li>
				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
		
			</div>
	</section>
	<!--/ banner-->
<section id="service" class="section-padding">

<div class="collapse navbar-collapse navbar-right " id="myNavbar"><%--
				      <ul class=" ">
				        <li class="btn " ><a href="/ProviderSearch/user/doctorLogin1"><b>DOCTOR LOGIN</b></a></li>
				        
				      </ul>
				    --%></div>
<div style="margin-top:20px" class="container">

<%--<div align="right" style="color:black"><a href="/ProviderSearch/user/pharmacyLogin1"><b>PHARMACY LOGIN</b></a></div>
--%>
<div class="row ">
<div class="btn-group" align="center" >
<g:form  class="form-inline " id="myform" name="myform" controller="pharmacy" action="providerSearchinfo">
<!-- Split button -->




  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	<div class="form-group"> <!-- Location field -->
		<input class="form-control" id="city" name="city" type="text" placeholder="Search by City"/>
	</div>
	
	<div class="form-group"> <!-- PharmacyName field -->
		<input class="form-control" id="pharmacyName" name="pharmacyName" type="text" style="width:200px" placeholder="Search by PharmacyName"/>
	</div>
	
	<div class="form-group"> <!-- Login button -->
		<button class="btn btn-primary " name="submit" type="submit">Submit</button>
	</div>	

</g:form>
</div>
<br/><br/><br>

<table class="table table-hover" style="max-width:832px" align="center">
              			<tbody>
					   <g:each in="${result.solrcity.solrdata}" expr="true">
					   <tr>
					  <td>
					  <i class="fa fa-tint" style="color:#E8053A"></i><b style="color:green;font-size:14px"> ${it.pharmacy_name}</b><br>
					 	<b style="font-size:13px;color:black">Owner:</b><span style="color:black;font-size:13px">&nbsp;&nbsp;&nbsp; ${it.firstname} ${it.lastname}<br>
					 	<b style="font-size:13px">Address:</b>&nbsp;&nbsp;<small>${it.address }</small>&nbsp;&nbsp;,${it.locality }<br>
						<b style="font-size:13px">Contact:</b>&nbsp;&nbsp;&nbsp;<small>${it.mobile_number }</small></span>
					  </td>
					  <td style="width: 250px" class="map-responsive">
   <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyACkS0zVPqhFf5TKJdaV73BZCkLIw1ZmqQ
  &q=${it.pharmacy_name}+${it.address}
  &attribution_source=Google+Maps+Embed+API
  &attribution_web_url=http://www.google.com/
  &attribution_ios_deep_link_id=comgooglemaps://?daddr=${it.pharmacy_name}+${it.address}" width="200" height="100" frameborder="1" style="border:0" allowfullscreen></iframe>
</td>
					  </tr>
					   </g:each>
					  </tbody>
					  </table>
					  <g:if test="${result.solrcity.solrdata.pharmacy_name==[]}">
              			<p style="padding-left:270px"><b>${result.message}</b></p>
              			</g:if>


</div>
</div>
</section>

<!-- Map area-->




	<!--footer-->
	<footer id="footer">
		<div class="top-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-4 marb20">
							<div class="ftr-tle">
								<h4 class="white no-padding">About Us</h4>
							</div>
							<div class="info-sec">
								<p>Provider Search</p>
							</div>
							<div class="info-sec">
							<ul class="quick-info">
								<li><a href="/ProviderSearch/user/login1"><i class="fa fa-circle"></i>Admin Login</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 marb20">
						<div class="ftr-tle">
							<h4 class="white no-padding">Quick Links</h4>
						</div>
						<div class="info-sec">
							<ul class="quick-info">
								<li><a href="index.html"><i class="fa fa-circle"></i>Home</a></li>
								<li><a href="#service"><i class="fa fa-circle"></i>Service</a></li>
								<li><a href="#contact"><i class="fa fa-circle"></i>Appointment</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 marb20">
						<div class="ftr-tle">
							<h4 class="white no-padding">Follow us</h4>
						</div>
						<div class="info-sec">
							<ul class="social-icon">
								<li class="bglight-blue"><i class="fa fa-facebook"></i></li>
								<li class="bgred"><i class="fa fa-google-plus"></i></li>
								<li class="bgdark-blue"><i class="fa fa-linkedin"></i></li>
								<li class="bglight-blue"><i class="fa fa-twitter"></i></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-line">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						© Copyright Kenzaimind. All Rights Reserved
                        
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--/ footer-->
    
      <script src="/ProviderSearch/provider/contactform/contactform.js"></script>
    <script src="/ProviderSearch/provider/js/map.js"></script>
    
  </body>
</html>

