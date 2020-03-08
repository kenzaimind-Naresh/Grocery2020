<html>
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
<g:render template="/user/pDashboard"/><%--
 <div align="center" class="fnt" style="font-size:200px;color:lightgrey;">Welcome</div>
  --%>
  <div class="container signin">
         <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4">
                <h3>Welcome</h3>
            </div>
        </div>
        
        
       
        
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="home-calendar">
                                <img src="/ProviderSearch/website/img/icon1.png" />
                                <h4>Organize your schedule and share it with your family and friends...</h4>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="home-calendar">
                                <img src="/ProviderSearch/website/img/icon2.png" /><h4>Never miss an event again with SMS and email reminders...</h4>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="home-calendar">
                                <img src="/ProviderSearch/website/img/icon3.png" /><h4>Sync with your phone, and carry your schedule with you...</h4>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

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