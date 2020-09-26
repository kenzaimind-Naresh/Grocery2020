<!DOCTYPE html>
<html lang="en">
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
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>

 <script type="text/javascript">
 $(function() {
		
	    $("#city").autocomplete({
	       source:[
	               <g:each in="${result.solrresult.solrdata}">
	               
	               '${it}', 
	           
	        </g:each>]
	    });
	    $("#pharmacyName").autocomplete({
	        source:[
	                <g:each in="${result.solrresult.solrdata}">
	                
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
    <div class="header">
        <div class="topbar">
            <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
                <div class="container">
                    <div class="pull-right">
                        <ul class="loginbar pull-right">
                            <li><a href="index.html">Home</a></li>
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


    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 signin-pdtop">
            <h3></h3>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-12 doctor-form">
                
				<g:form  class="form-inline " id="myform" name="myform" controller="donar" action="pharmacySearchinfo">
                    
                    <div class="form-group">
                        <label class="sr-only" for="city">Search by City</label>
                        <input type="text" class="form-control" id="city" name="city" placeholder="Search by Place">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="pharmacyName">Search by Pharmacy Name</label>
                        <input type="text" class="form-control" id="pharmacyName" name="pharmacyName" placeholder="Search by Pharmacy Name">
                    </div>
					<input type="hidden" id="mode" name="mode" value="web">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </g:form>
            </div>
        </div>
        <g:if test="${result.solrcity.solrdata == []}">
       <div style="color:black;font-size:20px;">${result.message }</div>
       </g:if>
       
<g:each in="${result.solrcity.solrdata}" var="i" expr="true">
					 
        <div class="row doctor-result">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="row">
                    <div class="col-xs-4 col-sm-4 col-md-4">
                        <div class="doc-photo">
                            <img src="/ProviderSearch/website/img/blood.jpg" alt="donar" class="img-responsive" style="height:150px;width:200px" />
                        </div>
                    </div>
                    <div class="col-xs-4 col-sm-4 col-md-4">
					
                        <div class="doctor-title">
                            <i class="fa fa-user-md" aria-hidden="true"></i>
							
					 	 <h4>${i.pharmacyName}</h4>
                        </div>
					
						
                        <div class="doctor-address">
                            <i class="fa fa-hospital-o" aria-hidden="true"></i>
                            <h4>${i.address }
                                        <br />
                                ${i.city } - <small>${i.pin}</small></h4>
                        </div>
						
                        <div class="doctor-contact">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <h4>${i.mobile_number }</h4>
                        </div>
					 </div>
					 
					 <%--<div class="col-xs-4 col-sm-4 col-md-4">
					
						<strong style="font-size:100px;color:#44a081">${i.bloodgroup}</strong>
						
                </div>
				--%></div>
            </div>
        </div>

      </g:each>

    </div>
	
	<br><br><br><br><br><br><br><br>
  <div class="contentbg" style="background-color: #333;">
        <div class="container">
            <div class="textbanner">
                <h3>Provider Search: Help Your Members Connect with the Right Care</h3>
            </div>
        </div>
    </div>

    <!-- footer -->
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
    <a href="#top" class="go-top"><i class="fa fa-chevron-up fa-1x"></i></a>
    <script src="/ProviderSearch/website/js/bootstrap.min.js"></script>
    <script src="/ProviderSearch/website/js/tm-script.js" type="text/javascript"></script>
</body>

</html>
