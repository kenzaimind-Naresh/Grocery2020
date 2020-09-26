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

</head>
<body>
    <div class="header">
        <div class="topbar">
            <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
                <div class="container">
                    <div class="pull-right">
                        <ul class="loginbar pull-right">
                            <li><a href="/ProviderSearch/user/adminDashboard">Home</a></li>
                            <li class="topbar-devider"></li>
                            <li><a href="contactus.html">Contact Us</a></li>

                        </ul>

                    </div>
                </div>
                <div class="container">
                    <div class="navbar-header dash">
                        <a class="navbar-brand" href="/ProviderSearch/user/adminDashboard">
                            <img src="/ProviderSearch/website/img/provider-logo.png" class="tm-logo" /></a>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown pull-right">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false"><span class="username-md">${result.user.username }</span> <i class="fa fa-user"></i>
                                </a>

                                <ul class="dropdown-menu dropdown-user">
                                    <li><span class="username-sm">${result.user.username }</span></li>
                                    <li class="divider"></li>
                                    <li><a href="/ProviderSearch/user/updateuser1"><i class="fa fa-user fa-fw"></i>Admin Profile</a></li>
                                    <li><a href="/ProviderSearch/user/changepass1"><i class="fa fa-lock fa-fw"></i>Change Password</a></li>
                                    <li class="divider"></li>
                                    <li><a href="/ProviderSearch/user/logout"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- body -->


    <div class="container signin-pdtop">

        <div class="row">
            <div class="col-md-12">
                <ul class="linkbar nav-justified">

                    <li id=packlist><g:link controller="package" action="packlist" class="active">Package</g:link></li>
                    <li id=packlist><g:link controller="package" action="purchasedpacklist" class="active"> Purchased Packages</g:link></li>
                  <li id=doctorlist><g:link controller="doctor" action="doctorlist" class="active">Doctor List</g:link></li>
                  <li id=pharmacylist><g:link controller="pharmacy" action="pharmacylist" class="active">Pharmacy List</g:link></li>
				  <li id=donarlist><g:link controller="donar" action="donarlist" class="active">Donar List</g:link></li>
                </ul>
            </div>
        </div>
    </div>


    <script src="/ProviderSearch/website/js/bootstrap.min.js"></script>
    <script src="/ProviderSearch/website/js/tm-script.js"></script>

</body>
</html>
