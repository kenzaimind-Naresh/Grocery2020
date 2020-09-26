<html>
<head>
<title></title>
<style>

</style>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
    
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Provider Search</title>
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/style.css">

     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/font-awesome.min.css">


 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>
 
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
 

</head>
<body>
	 <div class="header">
        <div class="topbar">
            <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
                <div class="container">
                    <div class="pull-right">
                        <ul class="loginbar pull-right">
                            <li><a href="/ProviderSearch">Home</a></li>
                            <li class="topbar-devider"></li>
                            <li><a href="contactus.html">Contact Us</a></li>
                            <li class="topbar-devider"></li>
                            <li class="call">Call US: <span>+ 91 00000 00000</span></li>
                            
                        </ul>

                    </div>
                </div>
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/ProviderSearch/user/providerSearch.gsp">
                            <img src="/ProviderSearch/website/img/provider-logo.png" class="tm-logo" /></a>
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span> <i class="fa fa-bars"></i></button>
                    </div>
                    <div class="navbar-collapse collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li><a href="/ProviderSearch/website/aboutus.html"><span>About Us</span></a></li>
                            <li><a href="/ProviderSearch/website/services.html"><span>Services</span></a></li>
                            <li><a href="/ProviderSearch/user/doctorLogin1"><span>Doctor Login</span></a></li>
                            <li><a href="/ProviderSearch/user/pharmacyLogin1"><span>Pharmacy Login</span></a></li>
                            <li><a href="/ProviderSearch/user/login1"><span>Admin</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- body -->
	 <div class="container intro-header">
            <div class="row">
                <div class="col-xs-6 col-sm-12 col-md-12  ">
                  

<g:if test="${result.getAt("status") == 'error'}">
<p style="color:black;font-size:20px">${result.getAt("message")}</p>
</g:if>
<g:else>
<div class="col"  style="color:black;font-size:20px">${result.message}</div>
<br>
<g:if test="${result.PInstance != '0'}"> 
<div class="row">               
  <div id="mydiv" align="center">
                            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
                                <table class="table table-bordered table-hover" style="border-style: solid">
                                    <thead>
      <tr class="fieldgroup">
      <td style="color:black"><b>PatientId:</b> ${result.PInstance.patientId}</td>
      <td></td><td></td>
   <td style="color:black"><b>Date:</b> ${result.Date }</td></tr>
    
  <tr class="fieldgroup">
      <td style="color:black"><b>FullName:</b></td>
      <td style="color:black">${result.PInstance.pFirstname} ${result.PInstance.pLastname}</td>
      <td style="color:black"><b>Appointment Time:</b></td>
      <td style="color:black">${result.slot}</td></tr>
      
      <tr class="fieldgroup">
      <td style="color:black"><b>Age:</b></td>
      <td style="color:black">${result.PInstance.pAge}</td>
      <td style="color:black"><b>Mobile Number:</b></td>
      <td style="color:black">${result.PInstance.mobileNumber}</td></tr>
      
      <tr class="fieldgroup">
      <td style="color:black"><b>Doctor Name:</b></td>
      <td style="color:black">${result.dName}</td>
      <td style="color:black"><b>Address:</b></td>
      <td style="color:black">${result.PInstance.address}</td>
     </tr>
    </thead></table></div></div></div></div>
    <div class="form-group">
                            <div class="col-sm-11 text-center">
     <input type="button" class="btn btn-primary" value="Print" onclick="PrintElem('#mydiv')" />
     <g:link controller="patient" action="deletePatient" id="${result.PInstance.id }"><button class="btn btn-primary">Cancel</button></g:link>
     <%--     <g:form controller="patient" id="myform" action="delete">
     <input type="hidden" id="patientId" name="patientId" value="${result.PInstance.patientId}"/>
    <input type="hidden" id="myaction" name="myaction" value="delete">
				<input type="hidden" id="mode" name="mode" value="web">
     <input type="button" class="btn btn-primary" value="Cancel" />
     </g:form>   --%>
   
   </div></div></div></g:if>   
    </g:else></div></div></div>
    
 <div class="footer site-footer">
        <div class="container copy-foot">
            <div class="row">
                <div class="col-xs-12 col-md-6">
                    <ul>
                        <li><a href="#">Terms and Conditions</a></li>
                        <li class="foot-vert-line">|</li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-md-6">
                    <p>Copyright © 2017. Provider Search. All right reserved.</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>



