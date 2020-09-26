<html>
  <head>
    
    <title>Dashboard</title> 
    
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
                <g:each in="${result.solrresult.providerdata}">
                
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