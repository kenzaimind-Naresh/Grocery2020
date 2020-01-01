
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
	<link rel="stylesheet" type="text/css" href="/media/css/site-examples.css?_=50d134a99f38dd18b1cce14412acc94f">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap.min.css">
	<style type="text/css" class="init">
	
	</style>
	<script type="text/javascript" src="/media/js/site.js?_=a64810efc82bfd3b645784011efa5963"></script>
	<script type="text/javascript" src="/media/js/dynamic.php?comments-page=examples%2Fstyling%2Fbootstrap.html" async></script>
	<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap.min.js"></script>

	<script type="text/javascript" class="init">
	
$(document).ready(function() {
	$('#example').DataTable();
} );

	</script>
</head>
<body >

<div >

				<table id="example" class="table table-striped table-bordered" style="width:100%">
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

     <tbody>
	       <g:each in="${merchant.data}" expr="true">
      <tr>
    
      <td>${it.id}</td>
        <td>${it.createDate}</td>
      <td>${it.groceryName}</td>
      <td>${it.cost }</td>
      <td>${it.weight}</td>
      <td>${it.offer}</td>
     <td>${it.total}</td>
   
    
     </tr>
	        </g:each>

      </tbody>

				</table>



	</div>
<div class="footer">
<div align="center">
<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>

</body>
</html>