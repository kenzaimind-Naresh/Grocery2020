<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
   
<title>We Fix</title>

 <!-- Bootstrap core CSS-->
    <link href="/MedicalCare/website/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/MedicalCare/website/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/MedicalCare/website/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/MedicalCare/website/css/sb-admin.css" rel="stylesheet">

 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

 
 <script>
  function PrintElem(elem)
{
	  //alert("hi");
	  Popup($(elem).html());
}

function Popup(data) 
{
	//alert("pop");
	//alert(data);
    var mywindow = window.open('', 'my div', 'height=400,width=600');
    mywindow.document.write('<html><head><title>my div</title>');
    mywindow.document.write('</head><body>');
    mywindow.document.write(data);
   // mywindow.document.write("resrteseresr");
    
    mywindow.document.write('</body></html>');

    mywindow.print();
  //  mywindow.close();

    return true;
}


  </script>     
 
<style>
body {
font-family: verdana;
 background-color: #eee;
}


tr,td {
    
    background-color: #fff;
    text-align: center;
}


</style>
</head>
<body>

<ul class="nav navbar-top-links navbar-left">
<li class="divider"></li>
<li><a href="/MedicalCare/user/userdashboard1"><i class="fa fa-home fa-fw" style="font-size:40px;color:Black;" ></i></a>
                        </li>

</ul>
<br><br>
  <div class="container intro-header">
            <div class="row">
                <div class="col-xs-6 col-sm-12 col-md-12  ">
                  

<g:if test="${result.getAt("status") == 'error'}">
<p style="color:black;font-size:20px">${result.getAt("message")}</p>
</g:if>
<g:else>
<div class="col"  style="color:black;font-size:20px">${result.message}</div>
<br>
<g:if test="${result.customerdetailsInstance != '0'}"> 
<div class="row">               
  <div id="mydiv" align="center">
                            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
                                <table class="table table-bordered table-hover" style="border-style: solid" align="center">
                                    <thead>
      <tr class="fieldgroup">
  
      <td style="color:black"><b>Track Id:</b></td>
      <td style="color:black"> ${result.customerdetailsInstance.customerId}</td>
   
     <td style="color:black"><b>Date:</b></td>
    <td style="color:black">${result.customerdetailsInstance.createdDate }</td>
    </tr>
    
  <tr class="fieldgroup">
      <td style="color:black"><b>FullName:</b></td>
      <td style="color:black">${result.customerdetailsInstance.customerName}</td>
      <td style="color:black"><b>Medicine Name:</b></td>
      <td style="color:black">${result.customerdetailsInstance.medicineName}</td></tr>
      
      <tr class="fieldgroup">
      <td style="color:black"><b>quantity:</b></td>
      <td style="color:black">${result.customerdetailsInstance.quantity}</td>
      
      
      <tr class="fieldgroup">
      <td style="color:black"><b>Price:</b></td>
      <td style="color:black">${result.customerdetailsInstance.cPrice}</td>
      
     </tr>
    </thead></table></div></div></div></div>
    
   </div>
   </g:if>   
    </g:else></div></div></div>
     <div class="form-group">
     <div class="col-sm-12 text-center">
      <input type="button" class="btn btn-primary" value="Print" onclick="PrintElem('#mydiv')" />
     
    
  
   </div></div>
    
				
<!-- Bootstrap core JavaScript-->
    <script src="/MedicalCare/website/vendor/jquery/jquery.min.js"></script>
    <script src="/MedicalCare/website/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/MedicalCare/website/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="/MedicalCare/website/vendor/chart.js/Chart.min.js"></script>
    <script src="/MedicalCare/website/vendor/datatables/jquery.dataTables.js"></script>
    <script src="/MedicalCare/website/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/MedicalCare/website/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="/SalesAndServicesApp/website/js/demo/datatables-demo.js"></script>
    <script src="/SalesAndServicesApp/website/js/demo/chart-area-demo.js"></script>
    
  </body>
</html>