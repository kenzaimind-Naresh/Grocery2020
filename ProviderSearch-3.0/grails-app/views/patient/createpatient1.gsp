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
    <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/style.css">

     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/font-awesome.min.css">

 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>-->
    <script  src="${resource(dir: 'js', file: 'createdoc.js')}"></script>

    <script type="text/javascript"> 
<!--
    (function () {
        if ("-ms-user-select" in document.documentElement.style && navigator.userAgent.match(/IEMobile\/10\.0/)) {
            var msViewportStyle = document.createElement("style");
            msViewportStyle.appendChild(
    document.createTextNode("@-ms-viewport{width:auto!important}")
);
            document.getElementsByTagName("head")[0].appendChild(msViewportStyle);
        }
    })();
    //--> 
    </script>

    <script type="text/javascript">
       
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

                            <li><a href="/ProviderSearch"><span>Home</span></a></li>
                            <li><a href="/ProviderSearch/patient/patientogin"><span>Login</span></a></li>
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
            
                <h3>Registration</h3>

                <g:form class="form-horizontal" role="form" controller="doctor" Id="myform" name="myform" action="savedoctor"  nonvalidate="nonvalidate">
                    <div class="form-group">
                    
                    <div class="col-md-4 col-sm-4">
                            <label>Medical Name:</label>
                            <input type="text" id="medicalName" name="medicalName" class="form-control" required>
                            <span id="medicalNameinfo"></span>
                        </div>
                        
                        <div class="col-md-4 col-sm-4">
                            <label>Medical Id:</label>
                            <input type="text" id="medicalId" name="medicalId" class="form-control" required>
                            <span id="medicalIdinfo"></span>
                        </div>
 
                        
                    </div>

                    <div class="form-group">
                        <div class="col-md-4 col-sm-4">
                            <label>ID Proof(Any):</label>
                            <input type="file" id="proof" name="proof" accept="image/*" class="form-control" required>
                            <span id="proofinfo"></span>
                        </div>
                        
                        <div class="col-md-4 col-sm-4">
                            <label>Mobile Number: </label>
                            <input type="text" id="mobileNumber" name="mobileNumber" class="form-control" required>
                            <span id="mobileNumberinfo"></span>
                        </div>
					
                    </div>

                    <div class="form-group">
                       
                             <div class="col-md-4 col-sm-4">
                            <label>Email:</label>
                            <input type="text" id="email" name="email" class="form-control" required>
                            <span id="emailinfo"></span>
                        </div>
                         <div class="col-md-4 col-sm-4">
                            <label>Password:</label>
                            <input type="password" id="password" name="password" required title="Password must be 6 characters including 1 uppercase letter, 1 lowercase letter and numeric characters" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" class="form-control">
                            <span id="passwordinfo"></span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                    
                    <div class="col-md-4 col-sm-4">
                            <label>Locality:</label>
                            <input type="text" id="locality" name="locality" class="form-control" required>
                            <span id="localityinfo"></span>
                        </div>
                       
                        </div>
                    

                    </div>

                    <%--<input type="hidden" id="status" name="status" value="1">
                    <input type="hidden" id="modifiedBy" name="modifiedBy" value="self">
                    <input type="hidden" id="myaction" name="myaction" value="save">
                    <input type="hidden" id="mode" name="mode" value="web">

                    --%><div class="form-group">
                        <div class="col-sm-12 text-center">
                            <button type="submit" class="btn btn-primary" onclick="return validateForm()">
                                Register</button>
                        </div>
                    </div>
<br>
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
    
    <script type="text/javascript">

   var date = new Date();
   date.setDate(date.getDate() + 90); // Set current date + 30 days as the new date
   
    document.getElementById("demo").value = (date.getMonth() + 1) + '/' + date.getDate() + '/' + date.getFullYear();
    
    
    </script>
    
</body>

</html>
