<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
    <title>Provider Search</title>
    <link href="/ProviderSearch/website/css/bootstrap.min.css" rel="stylesheet">
    <link href="/ProviderSearch/website/css/style.css" rel="stylesheet">
    <link href="/ProviderSearch/website/css/font-awesome.min.css" rel="stylesheet">
    <link href="/ProviderSearch/website/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="/ProviderSearch/website/js/jquery-1.10.2.min.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    


 <script type="text/javascript">
/*
jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});


$(document).ready(function () {
	 $("#date").datepicker({
        minDate: 0,autoclose: true,
        onSelect:function (){
			$("#dateinfo").text("");
	    }
    });
    });

*/
</script>
 
 <style type="text/css">
 table tr {
    cursor: pointer;
}
 </style>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
    /*  $(function () {
          $("#date").datepicker({
         minDate: 0,autoclose: true,
         onSelect:function (){
				$("#dateinfo").text("");
		    }
     });
      });
  */
  </script>

  <script type="text/javascript">

jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});


$(document).ready(function () {
	 $("#date").datepicker({
        minDate: 0,autoclose: true,
        onSelect:function (){
			$("#dateinfo").text("");
	    }
    });
    });
</script>
 
 <style type="text/css">
 table tr {
    cursor: pointer;
}
 </style>
 
</head>
<body>
   
					<g:form id="myform" controller="appointment" action="slotsearch">
                    <div class="row">

                        <div class="col-md-4">
                            <div class="fieldgroup">
                                <input type="text" id="date" name="date" class="form-control" placeholder="Select Date">
                                <span id="dateinfo"></span>
                                <br>
                            </div>
                            <!--<p>Date: <input type="text" id="datepicker"></p>-->
                        </div>
                    </div>

  <input type="hidden" id="mode" name="mode" value="web">
                    <div class="row">
                        <!-- Page Header -->
                        <div class="col-md-4">
                            <div class="fieldgroup text-center">
                                <input type="submit" id="btnsave" value="Search" class="btn btn-primary" onclick="return validateForm()">
                            </div>
                        </div>
                    </div>
					</g:form>
                    
  
  

    <script src="/ProviderSearch/website/js/bootstrap.min.js"></script>
    <script src="/ProviderSearch/website/js/tm-script.js" type="text/javascript"></script>

</body>
</html>
