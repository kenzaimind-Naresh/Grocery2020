<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
    <title>Jewellers</title>
    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
     
<title>Jewellers</title>

 <!-- Bootstrap core CSS-->
    <link href="/Icecreams/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/Icecreams/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.js" rel="stylesheet">
    <link href="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.min.js" rel="stylesheet">
    <link href="/Icecreams/website/vendor/datatables/jquery.dataTables.js" rel="stylesheet">
    <link href="/Icecreams/website/vendor/datatables/jquery.dataTables.min.js" rel="stylesheet">
    
    <link href="/Icecreams/website/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    
    <link href="/Icecreams/web-app/web-app/salesandservice/bootstrap/css/bootstrap.css" rel="stylesheet">

   
   
   
   
   
   
    <!-- Custom styles for this template-->
    <link href="/Icecreams/website/css/sb-admin.css" rel="stylesheet">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
 
 
 
 <style type="text/css">
 table tr {
    cursor: pointer;
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


/*$(document).ready(function () {
	 $("#fromdate").datepicker({
        minDate: 0,autoclose: true,
        onSelect:function (){
			$("#dateinfo").text("");
	    }
    });
    });

$(document).ready(function () {
	 $("#todate").datepicker({
       minDate: 0,autoclose: true,
       onSelect:function (){
			$("#dateinfo").text("");
	    }
   });
   });
    */
    </script>

    <script type="text/javascript">
            
    $(function() {
        $("#fromdate").datepicker();
        $("#todate").datepicker();
        $("#search").click(function() {
            var from = $("#fromdate").datepicker("getDate");
            var to = $("#todate").datepicker("getDate");
            $( 'table tr:has(td)' ).show().filter( function() {
                var curDate = new Date( $(this).find('td').first().text() ).getTime(),
                fromDate = from.getTime(),
                    toDate = to.getTime();
                return ( curDate > toDate ) || ( curDate < fromDate );
            }).hide();
        });
    });

    </script>
        

<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>

 
 <style type="text/css">
 table tr {
    cursor: pointer;
}
 </style>
 
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
.pagination {
    clear:both;
    position:relative;
    font-size:11px;
    text-align:center;
    padding-left: 700px;
}

.pagination span, .pagination a {
    display:inline-block;
    margin:  2px 2px 0;
    padding:6px 9px 5px 9px;
    text-decoration:none;
    color: #ddd;
    background: #222;
   
}

.pagination .current{
    font-weight: bold;
    background: #0950E8;
}
</style>
 
 
 
        <script type="text/javascript">

 $(document).ready(function() {
	    $('#example').DataTable( {
	        dom: 'Bfrtip',
	        buttons: [
	            'copyHtml5',
	            'excelHtml5',
	            'csvHtml5',
	            'pdfHtml5'
	        ]
	    } );
	} );

 </script>
  

 
 
</head>
<body id="page-top">



<!-- Navigation -->
<nav class="navbar navbar-expand navbar-dark bg-dark static-top" >

<a class="navbar-brand" href="/Icecreams/user/userdashboard1" >Arun Ice Creams</a>


<ul class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">

</ul>
 <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
      
      
       <li class="nav-item">
       <a  class="nav-link"  href="/Icecreams/user/userdashboard1">
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
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="/Icecreams/user/updateuser">Profile</a>
            <a class="dropdown-item" href="/Icecreams/user/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="/Icecreams/user/userlogin" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </div>
        </li>
</ul>
    
    </nav>
    




<section class="content-header" align="center">
<h1>
<b style="color:Black">Customer Details</b>
</h1>
<br>
</section>
                    <div class="row" align="center">
                        <div class="col-md-12">
                            <div class="form-group">
                            
                            <label>From:</label>
                                <input type="text" id="fromdate" name="fromdate" placeholder="Select Date" style="height:30px;width:175px;border-radius:5px">
                            <label>To:</label>
                                <input type="text" id="todate" name="todate" placeholder="Select Date" style="height:30px;width:175px;border-radius:5px">
                                <span id="dateinfo"></span>
                                 <input type="submit" id="search" name="search" value="Search" style="height:30px;width:150px;border-radius:5px">
                            </div>

                        </div>
                    </div>
                    
                    <table align="center" id="example">
			<thead>
					<tr>
								<g:sortableColumn property="createDate" title="${message(code: 'gold.createDate.label', default: 'Date')}"/>
					
			<g:sortableColumn property="customerName" title="${message(code: 'gold.customerName.label', default: 'Name')}" />
			<g:sortableColumn property="productDesc1" title="${message(code: 'gold.productDesc1.label', default: 'Icecream Name')}" />
	        <g:sortableColumn property="quantity1" title="${message(code: 'gold.quantity1.label', default: 'Quantity')}"/>
	        <g:sortableColumn property="price1" title="${message(code: 'gold.price1.label', default: 'Cost')}"/>
	         <%--<g:sortableColumn property="rate" title="${message(code: 'gold.rate.label', default: 'Offer(%)')}"/> --%>
	         
	         <g:sortableColumn property="grandTotal" title="${message(code: 'gold.grandTotal.label', default: 'Total Amount')}"/>
	        <g:sortableColumn property="pMode" title="${message(code: 'gold.paymentMode.label', default: 'Mode')}"/>
						
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${gold}" status="i" var="goldInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${fieldValue(bean: goldInstance, field: "createDate")}</td>
					
			<td>${fieldValue(bean: goldInstance, field: "customerName")}</td>
			
		<td>${fieldValue(bean: goldInstance, field: "productDesc1")}</td>
		<td>${fieldValue(bean: goldInstance, field: "quantity1")}</td>
		<td>${fieldValue(bean: goldInstance, field: "price1")}</td>	
		<%--<td>${fieldValue(bean: goldInstance, field: "rate")}</td>	
		<td>${fieldValue(bean: goldInstance, field: "tax")}</td>			
		--%><td>${fieldValue(bean: goldInstance, field: "grandTotal")}</td>			
		<td>${fieldValue(bean: goldInstance, field: "paymentMode")}</td>			
					</tr>
				</g:each>
				
				<g:each in="${billing}" status="i" var="billingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<td>${fieldValue(bean: billingInstance, field: "createDate")}</td>
					
			<td>${fieldValue(bean: billingInstance, field: "customerName")} </td>
					
		
		<td>${fieldValue(bean: billingInstance, field: "productDesc1")}</td>
		<td>${fieldValue(bean: billingInstance, field: "quantity1")}</td>
		<td>${fieldValue(bean: billingInstance, field: "price1")}</td>	
		<%--<td>${fieldValue(bean: billingInstance, field: "rate")}</td>	
		<td>${fieldValue(bean: billingInstance, field: "tax")}</td>			
		--%><td>${fieldValue(bean: billingInstance, field: "grandTotal")}</td>
		<td>${fieldValue(bean: billingInstance, field: "paymentMode")}</td>
					
					</tr>
				</g:each>
				
				</tbody>
				
				
				
			</table>
       <div align="right" class="pagination">
       	<g:paginate total="${goldInstanceCount ?:0} "></g:paginate>
       
			</div>	             
  
	
<script type="text/javascript">
var tableToExcel = (function() {
  var uri = 'data:application/vnd.ms-excel;base64,'
    , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
    , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
    , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
  return function(table, name) {
    if (!table.nodeType) table = document.getElementById(table)
    var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
    window.location.href = uri + base64(format(template, ctx))
  }
})()
</script>

<input type="button" class="button" onclick="tableToExcel('example', 'W3C Example Table')" value="Export to Excel">
 
<style>
.button{
margin-left: 850px; 
}

</style>
	<br><br><br><br><br><br><br>

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


</style>
    <!-- Bootstrap core JavaScript-->
    
    <script src="/Icecreams/website/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->


    <!-- Page level plugin JavaScript-->
    <script src="/Icecreams/website/vendor/chart.js/Chart.min.js"></script>
    <script src="/Icecreams/website/vendor/datatables/jquery.dataTables.js"></script>
    <script src="/Icecreams/website/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/Icecreams/website/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="/Icecreams/website/js/demo/datatables-demo.js"></script>
    <script src="/Icecreams/website/js/demo/chart-area-demo.js"></script>
    
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

.footer a{
  color: white;
}
.footer a:hover {
  color: white;
}


</style>


<div class="footer">
<div class="footer">
<div align="center">
<p>Copyright  <a  href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>
    

</body>
</html>
