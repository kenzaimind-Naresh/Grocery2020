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
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
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

                            <li><a href="/ProviderSearch/dBPhoto/create"><span>Home</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- body -->
    
    <br><br><br>

<div align="center">

    	<div class="nav" role="navigation" >
			<ul>
			</ul>
		</div>
		<div id="list-DBPhoto" class="content scaffold-list" role="">
			<h1>Advertisement List</h1><br><br>
			
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="payload" title="${message(code: 'DBPhoto.payload.label', default: 'Image')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'DBPhoto.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'DBPhoto.name.label', default: 'Name')}" />
					
						
					
					</tr>
					<br>
				</thead>
				<tbody>
				<g:each in="${DBPhotoInstanceList}" status="i" var="DBPhotoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					
						<td>
							<img  src="${createLink(controller:'DBPhoto', action:'showPayload', id:"${DBPhotoInstance.id}")}" width='200' />
						</td>
					
						<td>${fieldValue(bean: DBPhotoInstance, field: "type")}</td>
					
						<td><g:link action="show" id="${DBPhotoInstance.id}"> ${fieldValue(bean: DBPhotoInstance, field: "name")}</g:link></td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${DBPhotoInstanceCount ?: 0}" />
			</div>
		</div>
<br>
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
    </div></div>
    <a href="#top" class="go-top"><i class="fa fa-chevron-up fa-1x"></i></a>
    <script src="/ProviderSearch/website/js/bootstrap.min.js"></script>
    <script src="/ProviderSearch/website/js/tm-script.js"></script>
</body>

</html>
