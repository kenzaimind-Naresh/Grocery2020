<html>
<!-- InstanceBegin template="/Templates/tourmedimasterpage.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Provider Search</title>
    <link href="/ProviderSearch/website/css/bootstrap.min.css" rel="stylesheet">
    <link href="/ProviderSearch/website/css/style.css" rel="stylesheet">

    <link href="/ProviderSearch/website/css/font-awesome.min.css" rel="stylesheet">
    <link href="/ProviderSearch/website/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <script src="/ProviderSearch/provider/contactform/contactform.js"></script>
    <script src="/ProviderSearch/provider/js/map.js"></script>
    <script type="text/javascript"> 
 
    </script>



 <script type="text/javascript">
 $(function() {
		
	    $("#locality").autocomplete({
	       source:[
	               <g:each in="${result.locality}">
	               
	               '${it}', 
	           
	        </g:each>]
	    });

	    $("#drugName").autocomplete({
	        source:[
	                <g:each in="${result.drugName}">
	                
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

<body>

 <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 signin-pdtop">
            <h3></h3>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-12 doctor-form">
                
				<g:form  class="form-inline " id="myform" name="myform" controller="pharmacy" action="drugSearchinfo">
                    <div class="form-group">
                        <label class="sr-only" for="searchdrug">Search by DrugName</label>
                        <input type="text" class="form-control" id="drugName" name="drugName" placeholder="Search by DrugName">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="searchlocality">Search by Locality</label>
                        <input type="text" class="form-control" id="locality" name="locality" placeholder="Search by Locality">
                    </div>
					<input type="hidden" id="mode" name="mode" value="web">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </g:form>
            </div>
        </div>
        
       
<g:each in="${result.solrcity.solrdata}" var="i" expr="true">
					 
        <div class="row doctor-result">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="row">
                    <div class="col-xs-4 col-sm-4 col-md-3">
                        <div class="doc-photo">
                            <img src="/ProviderSearch/website/img/pharmacy.jpg" alt="Pharmacy" class="img-responsive" style="height:150px;width:200px" />
                        </div>

                    </div>
                    <div class="col-xs-8 col-sm-8 col-md-5">
					
                        <div class="doctor-title">
                            <i class="fa fa-user-md" aria-hidden="true"></i>
							
					 	 <h4>${i.pharmacy_name}
                                        <br />
                                <small>${i.city}</small></h4>
                        </div>
					
						
                        <div class="doctor-address">

                            <i class="fa fa-hospital-o" aria-hidden="true"></i>
                            <h4>${i.address }
                                        <br />
                                <small>${i.locality }</small></h4>
                        </div>
						
						
                        <div class="doctor-contact">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <h4>${i.mobile_number }</h4>
                        </div>
						
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4">
                        <div class="panel panel-default">
                          <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyACkS0zVPqhFf5TKJdaV73BZCkLIw1ZmqQ
  &q=${i.pharmacy_name}+${i.address}
  &attribution_source=Google+Maps+Embed+API
  &attribution_web_url=http://www.google.com/
  &attribution_ios_deep_link_id=comgooglemaps://?daddr=${i.pharmacy_name}+${i.address}" width="100%" height="150" frameborder="1" style="border:0"allowfullscreen></iframe>  
                        </div>

                    </div>
                </div>
                
            </div>

        </div>

      </g:each>

    </div>


</body>
</html>