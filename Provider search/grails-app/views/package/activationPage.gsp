<html>
<head>
<title>Activation Page</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
 
  .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}
  </style>

<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>

</head>

<body>
 <g:render template="/user/dDashboard"/>
  <div class="container">
 <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Activation</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-check-square-o pull-right dashicon"></i>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                <div class="row">
 <g:each in="${result.pack}" var="i" expr="true">
        <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                           <strong> ${i.packName} Pack</strong>
                        </div>
                        <div class="panel-body">
                        <g:if test = "${i.packPrice != "FREE"}">
                            <p style="color:black"><b>Rs.${i.packPrice}/${i.duration }</b><br>Subscription</p>
                            </g:if>
                            <g:else>
                       <p style="color:black"><b>${i.packPrice}/${i.duration }</b><br>Subscription</p>
                        </g:else>
                        </div>
                        <div class="panel-footer" style="background:#ffcccc">
                        <g:if test = "${i.packPrice != "FREE"}">
                        <g:link type="button" class="btn btn-success" controller="package" action="payee" id="${i.packName}" >BUY</g:link>
                        </g:if>
                        <g:else>
                        <b style="font-size:25px;height:30px">FREE</b>
                        </g:else>
                        </div>
                    </div>
                </div></g:each></div></div></div></div>
     <input type="hidden" id="mode" name="mode" value="web"> 
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

