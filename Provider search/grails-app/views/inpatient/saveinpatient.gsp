<html>
<head>
<title></title>
<style>
</style>
<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
 	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  
--%>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>
<html>
<head>
<title></title>
<style>


</style><%--
 <script>

 
$(function() {
 var x='${result.listId}'
  document.getElementById(x).className = "active";
});
</script>

--%><style>

.active a{
    color: white !important;
}

</style>


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
 <div id="wrapper">

 <g:render template="/user/header"/>  
  <div id="page-wrapper"><br><br><br>
            <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">

                   
            

<div class="col"  style="color:black;font-size:20px">${result.message}</div>

<g:if test="${result.PInstance != '0'}">
 <div id="mydiv">
 <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
  <tr class="fieldgroup">
      <td><b>PatientId:</b> ${result.PInstance.patientId}</td>
      <td></td><td></td>
   <td><b>Date:</b> ${result.Date }</td></tr>
    
  <tr class="fieldgroup">
      <td><b>FullName:</b></td>
      <td>${result.PInstance.pFirstname} ${result.PInstance.pLastname}</td>
      <td><b>Address:</b></td>
      <td>${result.PInstance.address}</td></tr>
      <tr>
      
        <tr class="fieldgroup">
      <td><b>Mobile Number:</b></td>
      <td>${result.PInstance.mobileNumber}</td>
      <td><b>Nominee:</b></td>
      <td>${result.PInstance.nominee}</td></tr>
     
      
      
      <tr class="fieldgroup">
      <td><b>Doctor Name:</b></td>
      <td>${result.PInstance.reference}</td>
      <td><b>Room No:</b></td>
       <td>${result.PInstance.roomNo}</td>
     </tr>
     
       <tr class="fieldgroup">
      <td><b>ModifiedBy:</b></td>
      <td>${result.PInstance.modifiedBy}</td>
      <td><b></b></td>
      <td></td></tr>
      
       <tr class="fieldgroup">
       <td><b></b></td>
      <td></td>
      <td><b></b></td>
      <td></td>
     </tr>
     
      <tr class="fieldgroup">
       <td><b></b></td>
      <td></td>
      <td><b></b></td>
      <td></td>
     </tr>
     
      <tr class="fieldgroup">
       <td><b></b></td>
      <td></td>
      <td><b>Authorized sign:</b></td>
      <td></td>
     </tr>
     
      <br>
  
     </thead>
     </table>
     </div><br><br>
  
  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center">
     <input type="button" class="btn btn-primary" value="Print" onclick="PrintElem('#mydiv')" />
     </div></div></div>
</g:if>
</div></div></div></div></div>
</body>
</html>

        
</body>
</html>



