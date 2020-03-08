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
  
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <script src="/ProviderSearch/provider/contactform/contactform.js"></script>
    <script src="/ProviderSearch/provider/js/map.js"></script>
    

 	   
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

    $("#speciality").autocomplete({
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
<style type="text/css">
 table tr {
    cursor: pointer;
}

 .ui-autocomplete { height: 200px; width: 200px;overflow-y: scroll; overflow-x: hidden;}
 </style>
 
 
 <script>
$(function() {
	var x='${result.buttonId}'
	 document.getElementById(x).className = "activated";
});
</script>
<style>
.activated {
    background-color: green;
}
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
                
				<g:form  class="form-inline " id="myform" name="myform" controller="user" action="providerSearchinfo">
                    <div class="form-group">
                        <label class="sr-only" for="searchcity">Search by City</label>
                        <input type="text" class="form-control" id="city" name="city" placeholder="Search by City">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="searchspeciality">Search by Speciality</label>
                        <input type="text" class="form-control" id="speciality" name="speciality" placeholder="Search by Speciality">
                    </div>
                    <div class="form-group">
                        <select class="form-control" name="dGender" id="dGender">
                             <option value="" >--Select Gender--</option>
             <option value="Male" >Male</option>
             <option value="Female" >Female</option>
                        </select>
                    </div>
					<input type="hidden" id="mode" name="mode" value="web">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </g:form>
            </div>
			
			 <g:if test="${result.solrcity.solrdata == []}">
       <div style="color:black;font-size:20px;">${result.message }</div>
       </g:if>
<%
String pre="";
String post="";
 %>
        </div>
			 <g:if test = "${result.solrcity.solrdata != []}">
			 <div class="row" style="padding-left:500px">
			<div class="paging" align="right">
		
				<ul class="page-mid2" >
					<li><a><i class="fa fa-arrow-left"></i></a></li>
					<li id="one"><g:link controller="user" action="providerSearchinfo" params="${[city:result.city,speciality:result.speciality,dGender:result.gender]}">1</g:link></li>
					<li id="two"><g:link controller="user" action="providerSearchinfo1" params="${[city:result.city,speciality:result.speciality,dGender:result.gender,start:10,buttonId:'two']}">2</g:link></li>
					<li id="three"><g:link controller="user" action="providerSearchinfo1" params="${[city:result.city,speciality:result.speciality,dGender:result.gender,start:20,buttonId:'three']}">3</g:link></li>
					<li id="four"><g:link controller="user" action="providerSearchinfo1" params="${[city:result.city,speciality:result.speciality,dGender:result.gender,start:30,buttonId:'four']}">4</g:link></li>
					<li><g:link><i class="fa fa-arrow-right"></i></g:link></li>
				</ul>
	</div>
	</div>
	</g:if>
	
<g:each in="${result.solrcity.solrdata}" var="i" expr="true">
					   <input type="hidden" id="slts" name="slts" value="${i.slots}"/>
	
        <div class="row doctor-result">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="row">
                    <div class="col-xs-4 col-sm-4 col-md-2">
                        <div class="doc-photo">
                            <img src="/ProviderSearch/website/img/doclogo.jpg" alt="Naresh" class="img-responsive" />
                        </div>

                    </div>
                    <div class="col-xs-8 col-sm-8 col-md-5">
					
                        <div class="doctor-title">
                            <i class="fa fa-user-md" aria-hidden="true"></i>
							<g:if test="${i.d_lastname != "NA"}">
					 	 <h4>Dr.${i.d_firstname} ${i.d_lastname}
                                        <br />
                                <small>${i.speciality}</small></h4>
						
						</g:if>
					 	<g:elseif test="${i.d_lastname == "NA"}">
						
					 	 <h4>Dr.${i.d_firstname}
                                        <br />
                                <small>${i.speciality}</small></h4>
						
						</g:elseif>
                           
                        </div>
					
						
                        <div class="doctor-address">

                            <i class="fa fa-hospital-o" aria-hidden="true"></i>
                            <h4>${i.address }
                                        <br />
                                <small>${i.locality }</small></h4>
                        </div>
						<%
							String s = ""+(i.slots);
							int len = s.split(",").length;
							 pre=s.split(",")[0];
							 post=s.split(",")[len-1];
							%>
							<g:if test="${i.slots != null}">
						
						
                        <div class="doctor-time">
                            <i class="fa fa-clock-o" aria-hidden="true"></i>
                            <h4><%=pre%> to <%=post%></h4>
                        </div>
						</g:if>
                        <div class="doctor-contact">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <h4>${i.mobile_number }</h4>
                        </div>
						
						
                    <div class="text-center">
                      
                        <a href="/ProviderSearch/appointment/createappointment?id=${i.doctor_id }" class="btn btn-sm btn-primary" type="submit">Book Appointment</a>
                    </div>
                
						
						
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5">
                        <div class="panel panel-default">
                          <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyACkS0zVPqhFf5TKJdaV73BZCkLIw1ZmqQ
  &q=${i.clinic_name}+${i.address}
  &attribution_source=Google+Maps+Embed+API
  &attribution_web_url=http://www.google.com/
  &attribution_ios_deep_link_id=comgooglemaps://?daddr=${i.clinic_name}+${i.address}" width="100%" height="200" frameborder="1" style="border:0"allowfullscreen></iframe>  
                        </div>

                    </div>
                </div>
                
            </div>

        </div>

      </g:each>
 <g:if test = "${result.solrcity.solrdata != []}">
			 <div class="row" style="padding-left:500px">
			<div class="paging" align="right">
		
				<ul class="page-mid2" >
					<li><a><i class="fa fa-arrow-left"></i></a></li>
					<li id="one"><g:link controller="user" action="providerSearchinfo" params="${[city:result.city,speciality:result.speciality,dGender:result.gender]}">1</g:link></li>
					<li id="two"><g:link controller="user" action="providerSearchinfo1" params="${[city:result.city,speciality:result.speciality,dGender:result.gender,start:10,buttonId:'two']}">2</g:link></li>
					<li id="three"><g:link controller="user" action="providerSearchinfo1" params="${[city:result.city,speciality:result.speciality,dGender:result.gender,start:20,buttonId:'three']}">3</g:link></li>
					<li id="four"><g:link controller="user" action="providerSearchinfo1" params="${[city:result.city,speciality:result.speciality,dGender:result.gender,start:30,buttonId:'four']}">4</g:link></li>
					<li><g:link><i class="fa fa-arrow-right"></i></g:link></li>
				</ul>
	</div>
	</div>
	</g:if>
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
