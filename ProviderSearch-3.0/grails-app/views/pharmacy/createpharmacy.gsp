
<html>
<title>PROVIDER SEARCH</title>
	<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta name="Description" content="Loving Care, Medical Treatement, Healthcare Treatment">
    <meta name="Keywords" content="Medical Treatement, Healthcare Treatment">
    <title>Provider Search</title>
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/style.css">

     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/font-awesome.min.css">

 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>-->
  <style>
   .ui-autocomplete { height: 200px; width: 200px;overflow-y: scroll; overflow-x: hidden;}
  </style>
	
	<script  src="${resource(dir: 'js', file: 'createphar.js')}"></script>
<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};

</script>
 </head>

  <body>
  	<!--banner-->
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

                            <li><a href="/ProviderSearch"><span>Home</span></a></li>
                            <li><a href="/ProviderSearch/user/pharmacyLogin1"><span>Login</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- body -->


    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
                <h3>Pharmacy Registration</h3>
         <g:form class="form-horizontal" controller="pharmacy" Id="myform" name="myform" action="savepharmacy"  nonvalidate="nonvalidate"> 
         
                 <div class="form-group">
                 <div class="col-md-4 col-sm-4">
            <label>Registration Id:</label>
           <input type="text" id="regId" name="regId" class="form-control" >
            <span id=regIdinfo></span>
            </div>
                 <div class="col-md-4 col-sm-4">
            <label>Pharmacy Name:</label>
           <input type="text" id="pharmacyName" name="pharmacyName" class="form-control">
            <span id=pharmacyNameinfo></span>
            </div>
            <div class="col-md-4 col-sm-4">
            <label>First Name:</label>
           <input type="text" id="firstname" name="firstname" class="form-control">
            <span id=firstnameinfo></span>
            </div>
            </div>
            
            
                 <div class="form-group">
                <div class="col-md-4 col-sm-4">
            <label>Last Name:</label>
           <input type="text" id="lastname" name="lastname" class="form-control">
            <span id=lastnameinfo></span>
            </div>
            <div class="col-md-4 col-sm-4">
            <label>Mobile Number:</label>
           <input type="text" id="mobileNumber" name="mobileNumber" class="form-control">
            <span id=mobileNumberinfo></span>
            </div>
            <div class="col-md-4 col-sm-4">
            <label>Email:</label>
           <input type="text" id="email" name="email" class="form-control" >
            <span id=emailinfo></span>
            </div>
            </div>
            
                 <div class="form-group">
                 
                 <div class="col-md-4 col-sm-4">
            <label>Password:</label>
           <input type="password" id="password" name="password" title="Password must be 6 characters including 1 uppercase letter, 1 lowercase letter and numeric characters" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" class="form-control" >
            <span id=passwordinfo></span>
            </div>
             <div class="col-md-4 col-sm-4">
            <label>Address:</label>
           <input type="text" id="address" name="address" class="form-control">
            <span id=addressinfo></span>
            </div>
            <div class="col-md-4 col-sm-4">
                            <label>Locality:</label>
                            <input type="text" id="locality" name="locality" class="form-control">
                            <span id="localityinfo"></span>
                        </div>
            </div>
            
                 <div class="form-group">
            	
                        <div class="col-md-4 col-sm-4">
                            <label>City:</label>
                            <input type="text" id="city" name="city" class="form-control">
                            <span id="cityinfo"></span>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <label>Pin Code:</label>
                            <input type="text" id="pin" name="pin" class="form-control">
                            <span id="pininfo"></span>
                        </div>
                    </div>
           
            <input type="hidden" id="locUrl" name="locUrl" value="NA">
             <input type="hidden" id="packName" name="packName" value="Basic">
              <input type="hidden" id="status" name="status" value="1">
            <input type="hidden" id="modifiedBy" name="modifiedBy" value="self">
             <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web">
            
            <div class="form-group">
                        <div class="col-sm-12 text-center">
            <input type="submit" ID="btnsave" value="Save" class="btn btn-primary" onclick="return validateForm()"  />
            </div>
          </div>
          </g:form>
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
    <script src="/ProviderSearch/website/js/tm-script.js"></script>
  </body>
</html>