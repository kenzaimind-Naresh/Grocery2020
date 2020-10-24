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
	<title>Register</title>

	
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
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
	
<style type="text/css">


table, td, th {    
   // border: 1px solid #ddd;
    text-align: center;
}

table {
    border-collapse: collapse;
    width: 25%;
}

th, td {
    padding: 12px;
}

 
  

 
</style>
	
	
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
      text-align: center;
}
     

</style>	

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
  	
</head>

<body>
`
<g:render template="/admin/adminhearder1"/>
<br><br><br><br><br>

<div class="container">
		 <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
		
			<table id="example" class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
      <th style="color:black;font-family: Calibri">Id</th>
       <th style="color:black;font-family: Calibri">Created Date</th>
      <th style="color:black;font-family: Calibri">Grocery Name</th>
      <th style="color:black;font-family: Calibri">Cost </th>
      <th style="color:black;font-family: Calibri">Weight</th>
      <th style="color:black;font-family: Calibri">Offer</th>
      <th style="color:black;font-family: Calibri">T.Amt</th>
     
						</tr>
					</thead>

    
	  <g:each in="${result.data}" expr="true">
      <tr>
    
           <td>${it.id}</td>
           <td>${it.createdDate}</td>
           <td>${it.groceryName}</td>
           <td>${it.cost }</td>
           <td>${it.weight}</td>
           <td>${it.offer}</td>
           <td>${it.total}</td>
   
    
     </tr>
	        </g:each>

      </tbody>

				</table>

        <div class="form-group">
        <div class="col-sm-9 text-right">
       <g:if test="${result.offset>0}">
     <g:link type="button" style="color:black" controller="admin" action="offsetlist2" params="${[offset:result.offset-5,mode:'web',shopName:result.shopName]}" value="Previous">
     <button class="genric-btn primary circle" style="font-size: 15px;" >Previous</button></g:link>
  </g:if>
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <g:link type="button" style="color:black" controller="admin" action="offsetlist2"   params="${[offset: result.offset+5,mode:'web',shopName:result.shopName]}" value="Next" >
     <button class="genric-btn primary circle" style="font-size: 15px;">Next</button></g:link>
       </g:if>
       </div></div>
       </div>
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