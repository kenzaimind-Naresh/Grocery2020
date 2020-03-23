<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
    <title>Jewellery</title>
    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
     
    
<title>Jewellery</title>

 <!-- Bootstrap core CSS-->
    <link href="/Jewellers/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/Jewellers/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/Jewellers/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/Jewellers/website/css/sb-admin.css" rel="stylesheet">

 
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

<a class="navbar-brand" href="/Jewellers/user/userdashboard1" >Nagaraju Jewellers</a>


<ul class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">

</ul>
 <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
      
      
       <li class="nav-item">
       <a  class="nav-link"  href="/Jewellers/user/userdashboard1">
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
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="userName-md"style="color:white"></span> <i class="fa fa-user"></i>
          
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="/Jewellers/admin/changepass">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item"  href="/Jewellers/user/userlogin" ><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
    <tr> <th>weight</th><th>Tunch</th> <th>SalePurity</th><th>Create Date</th><th>Jewellery Name</th> <th>GoldRate</th>  <th>Total</th><th>Q.Total</th> <th>MakingCharges</th>  <th>grandTotal</th></tr>
    <g:each in="${goldInstanceList}" status="i" var="goldInstance">
    <tr  class="${(i % 2) == 0 ? 'even' : 'odd'}">
    
    <td>${fieldValue(bean: goldInstance, field: "goldpercentage")}</td>
    <td>${fieldValue(bean: goldInstance, field: "salepurity")}</td>
    <td>${fieldValue(bean: goldInstance, field: "priceofgold")}</td>
    
    <td>${fieldValue(bean: goldInstance, field: "createDate")}</td>
<td><g:link class="show" action="show"  resource="${goldInstance}">${fieldValue(bean: goldInstance, field: "jewelleryName")} </g:link></td>
    
    
    <td>${fieldValue(bean: goldInstance, field: "total")}</td>
    <td>${fieldValue(bean: goldInstance, field: "qtotal")}</td>
    <td>${fieldValue(bean: goldInstance, field: "makingcharges")}</td>
	<td>${fieldValue(bean: goldInstance, field: "grandTotal")}</td>
	
    </tr>
    
    
</g:each>

<g:each in="${pharmacy}" status="i" var="pharmacyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
			<td><g:link class="show" action="show"   resource="${pharmacyInstance}">${fieldValue(bean: pharmacyInstance, field: "pFirstname")} </g:link></td>
					
		
		<td>${fieldValue(bean: pharmacyInstance, field: "jewelleryName")}</td>
		<td>${fieldValue(bean: pharmacyInstance, field: "createDate")}</td>
		<td>${fieldValue(bean: pharmacyInstance, field: "ggrams")}</td>
		<td>${fieldValue(bean: pharmacyInstance, field: "priceofgold")}</td>			
		<td>${fieldValue(bean: pharmacyInstance, field: "salepurity")}</td>
		<td>${fieldValue(bean: pharmacyInstance, field: "goldpercentage")}</td>
		<td>${fieldValue(bean: pharmacyInstance, field: "total")}</td>
		<td>${fieldValue(bean: pharmacyInstance, field: "qtotal")}</td>
		<td>${fieldValue(bean: pharmacyInstance, field: "makingcharges")}</td>
		<td>${fieldValue(bean: pharmacyInstance, field: "grandTotal")}</td>
		<td>${fieldValue(bean: pharmacyInstance, field: "pMode")}</td>
					
					</tr>
				</g:each>





</table>
	
	
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
	
	
				<br><br>
<div class="pagination">
<g:paginate total="${goldInstanceCount ?: 0}" />
</div>
<br><br><br><br><br>









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
  color: darkwhite;
}
a:hover {
  color: darkwhite;
}


</style>


<div class="footer">
<div align="center">
<p><a href="http://www.kenzaimindapps.in/"><h5>Copyright © 2019. Kenzaimind Info Solutions</h5></a></p>
<p>Supported By. Kunan Tech</p>
</div>
</div>
 

    <!-- Bootstrap core JavaScript-->
    
    <script src="/Jewellers/website/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->


    <!-- Page level plugin JavaScript-->
    <script src="/Jewellers/website/vendor/chart.js/Chart.min.js"></script>
    <script src="/Jewellers/website/vendor/datatables/jquery.dataTables.js"></script>
    <script src="/Jewellers/website/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/Jewellers/website/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="/Jewellers/website/js/demo/datatables-demo.js"></script>
    <script src="/Jewellers/website/js/demo/chart-area-demo.js"></script>
    

</body>
</html>
