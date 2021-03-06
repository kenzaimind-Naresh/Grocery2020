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
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="/ProviderSearch/website/css/style.css">

    <link href="/ProviderSearch/website/css/font-awesome.min.css" rel="stylesheet">
    <link href="/ProviderSearch/website/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">

    <script type="text/javascript" src="/ProviderSearch/website/js/jquery-1.10.2.min.js"></script>
<script  src="${resource(dir: 'js', file: 'createdonar.js')}"></script>
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

    <!-- InstanceEndEditable -->
    <!-- InstanceBeginEditable name="head" -->
    <!-- InstanceEndEditable -->
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
                            <li class="topbar-devider"></li>
                            <li>
                                <div id="google_translate_element" class="google-translate"></div>
                                <script type="text/javascript">
                                    function googleTranslateElementInit() {
                                        new google.translate.TranslateElement({ pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
                                    }
                                </script>
                                <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
                            </li>
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
                            <li><a href="#"><span>Login</span></a></li>
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
                <h3>Blood Donor Registration</h3>

                   <g:form controller="donar" class="form-horizontal" role="form" id="myform" name="myform" action="saveDonar"  nonvalidate="nonvalidate"> 

                    <div class="form-group">
                        <label class="control-label col-sm-2">Firstname <span>*</span> :</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="dFirstname" placeholder="Firstname" name="dFirstname">
                        <span id=dFirstnameinfo></span>
                        </div>
                        
                         <label class="control-label col-sm-2">Lastname <span>*</span> :</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="dLastname" placeholder="Lastname" name="dLastname">
                         <span id=dLastnameinfo></span>
                        </div>
                    </div>
                    
                     <div class="form-group">
                        <label class="control-label col-sm-2">Age <span>*</span> :</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="dAge" placeholder="Age" name="dAge">
                             <span id=dAgeinfo></span>
                        </div>
                        
                         <label class="control-label col-sm-2">Gender <span>*</span> :</label>
                        <div class="col-sm-3">
                            <select name="dGender" id="dGender" class="form-control">
                                <option value="">--select--</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                            <span id=dGenderinfo></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2">Mobile <span>*</span> :</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="mobileNumber" placeholder="Mobile Number" name="mobileNumber">
                      <span id=mobileNumberinfo></span>
                        </div>
                   
                        <label class="control-label col-sm-2">Address <span>*</span> :</label>
                        <div class="col-sm-3">
                         <textarea class="form-control" rows="3" id="address" placeholder="Address" name="address"></textarea>
                                 <span id=addressinfo></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2">City <span>*</span> :</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="city" placeholder="City" name="city">
                             <span id=cityinfo></span>
                        </div>
                        
                         <label class="control-label col-sm-2">Pin Code<span>*</span> :</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="pin" placeholder="Pin Code" name="pin">
                       <span id=pininfo></span>
                        </div>
                    </div>

                   

                    <div class="form-group">
                        
                        <label class="control-label col-sm-2">Blood Group <span>*</span>:</label>
                        <div class="col-sm-3">
                            <select name="bloodgroup" id="bloodgroup" class="form-control">
                                <option value="">--select--</option>
                                <option value="A+">A+</option>
                                <option value="A-">A-</option>
                                
                                <option value="B+">B+</option>
                                <option value="B-">B-</option>
                                
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                                
                                <option value="O+">O+</option>
                                <option value="O-">O-</option>
                                
                                <option value="A1+">A1+</option>
                                <option value="A1-">A1-</option>
                                
                                <option value="A2+">A2+</option>
                                <option value="A2-">A2-</option>
                                
                                <option value="A1B+">A1B+</option>
                                <option value="A1B-">A1B-</option>
                                
                                <option value="A2B+">A2B+</option>
                                <option value="A2B-">A2B-</option>
                                
                                <option value="BOMBAY">Bombay Blood Group</option>
                                
                                
                            </select>
                            <span id=bloodinfo></span>
                        </div>
                        <label class="control-label col-sm-2">Last Donation :</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="lastDonation" placeholder="Last Donation Date" name="lastDonation">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Email <span>*</span> :</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="email" placeholder="Email" name="email">
                            <span id=emailinfo></span>
                        </div>
                        <label class="control-label col-sm-2">Password <span>*</span> :</label>
                        <div class="col-sm-3">
                            <input type="password" class="form-control" id="password" title="Password must be 6 characters including 1 uppercase letter, 1 lowercase letter and numeric characters" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" placeholder="Password" name="password">
                       <span id=passwordinfo></span>
                        </div>
                    </div>

 <div class="form-group">
                        <div class="col-sm-14 text-center">
                            <button type="submit" class="btn btn-primary" onclick="return validateForm()">
                                Register</button>
                        </div>
                    </div>

                     <input type="hidden" id="mode" name="mode" value="web">

               </g:form>
            </div>
        </div>
    </div>
    <style>
        label {
            color: black;
            padding: 15px 0 0 0;
        }
    </style>

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
