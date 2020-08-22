<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">

<title>We Fix</title>

<!-- Bootstrap Core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../vendor/morrisjs/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> 

<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
<!-- Font Awesome -->
<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'font-awesome.min.css')}" type="text/css">
<!-- Ionicons -->
<link rel="stylesheet" href="${resource(dir: 'service/bootstrap/css', file: 'ionicons.min.css')}" type="text/css"> 

<style>
body {
    font-family: Verdana;
     background-color: #eee;
}

td {    
    border: 1px solid #eee;
    text-align: center;
}
 th {    
    background-color:#696969;
    text-align: center;
}

table {
    border-collapse: collapse;
    width: 35%;
    background-color: #fff;
    text-align: center;
}

th, td {
    padding: 10px;
}


.footer {
position: fixed;
left: 0;
bottom: 0;
width: 100%;
background-color:#696969;
color: white;
text-align: center;
}

#wrapper {
width: 100%;

}
#page-wrapper {
padding: 0px 15px;
min-height: 568px;
background-color: white;



}

@media (min-width: 768px) {
#page-wrapper {
position: inherit;
margin: 0 0 0 250px;
padding: 0 30px;
border-left: 1px solid #e7e7e7;
}
}
.navbar-top-links {
margin-right: 0;
}
.navbar-top-links li {
display: inline-block;
}
.navbar-top-links li:last-child {
margin-right: 15px;
}
.navbar-top-links li a {
padding: 15px;
min-height: 50px;
}
.navbar-top-links .dropdown-menu li {
display: block;
}
.navbar-top-links .dropdown-menu li:last-child {
margin-right: 0;
}
.navbar-top-links .dropdown-menu li a {
padding: 3px 20px;
min-height: 0;
}
.navbar-top-links .dropdown-menu li a div {
white-space: normal;
}
.navbar-top-links .dropdown-messages,
.navbar-top-links .dropdown-tasks,
.navbar-top-links .dropdown-alerts {
width: 310px;
min-width: 0;
}
.navbar-top-links .dropdown-messages {
margin-left: 5px;
}
.navbar-top-links .dropdown-tasks {
margin-left: -59px;
}
.navbar-top-links .dropdown-alerts {
margin-left: -123px;
}
.navbar-top-links .dropdown-user {
right: 0;
left: auto;
}
.sidebar .sidebar-nav.navbar-collapse {
padding-left: 0;
padding-right: 0;
}
.sidebar .sidebar-search {
padding: 15px;
}
.sidebar ul li {
border-bottom: 1px solid #e7e7e7;
}
.sidebar ul li a.active {
background-color: #eeeeee;
}
.sidebar .arrow {
float: right;
}
.sidebar .fa.arrow:before {
content: "\f104";
}
.sidebar .active > a > .fa.arrow:before {
content: "\f107";
}
.sidebar .nav-second-level li,
.sidebar .nav-third-level li {
border-bottom: none !important;
}
.sidebar .nav-second-level li a {
padding-left: 37px;
}
.sidebar .nav-third-level li a {
padding-left: 52px;
}
@media (min-width: 768px) {
.sidebar {
z-index: 1;
position: absolute;
width: 250px;
margin-top: 51px;
}
.navbar-top-links .dropdown-messages,
.navbar-top-links .dropdown-tasks,
.navbar-top-links .dropdown-alerts {
margin-left: auto;
}
}
.btn-outline {
color: inherit;
background-color: transparent;
transition: all .5s;
}
.btn-primary.btn-outline {
color: #428bca;
}
.btn-success.btn-outline {
color: #5cb85c;
}
.btn-info.btn-outline {
color: #5bc0de;
}
.btn-warning.btn-outline {
color: #f0ad4e;
}
.btn-danger.btn-outline {
color: #d9534f;
}
.btn-primary.btn-outline:hover,
.btn-success.btn-outline:hover,
.btn-info.btn-outline:hover,
.btn-warning.btn-outline:hover,
.btn-danger.btn-outline:hover {
color: white;
}
.chat {
margin: 0;
padding: 0;
list-style: none;
}
.chat li {
margin-bottom: 10px;
padding-bottom: 5px;
border-bottom: 1px dotted #999999;
}
.chat li.left .chat-body {
margin-left: 60px;
}
.chat li.right .chat-body {
margin-right: 60px;
}
.chat li .chat-body p {
margin: 0;
}
.panel .slidedown .glyphicon,
.chat .glyphicon {
margin-right: 5px;
}
.chat-panel .panel-body {
height: 350px;
overflow-y: scroll;
}
.login-panel {
margin-top: 25%;
}
.flot-chart {
display: block;
height: 400px;
}
.flot-chart-content {
width: 100%;
height: 100%;
}
table.dataTable thead .sorting,
table.dataTable thead .sorting_asc,
table.dataTable thead .sorting_desc,
table.dataTable thead .sorting_asc_disabled,
table.dataTable thead .sorting_desc_disabled {
background: transparent;
}
table.dataTable thead .sorting_asc:after {
content: "\f0de";
float: right;
font-family: fontawesome;
}
table.dataTable thead .sorting_desc:after {
content: "\f0dd";
float: right;
font-family: fontawesome;
}
table.dataTable thead .sorting:after {
content: "\f0dc";
float: right;
font-family: fontawesome;
color: rgba(50, 50, 50, 0.5);
}
.btn-circle {
width: 30px;
height: 30px;
padding: 6px 0;
border-radius: 15px;
text-align: center;
font-size: 12px;
line-height: 1.428571429;
}
.btn-circle.btn-lg {
width: 50px;
height: 50px;
padding: 10px 16px;
border-radius: 25px;
font-size: 18px;
line-height: 1.33;
}
.btn-circle.btn-xl {
width: 70px;
height: 70px;
padding: 10px 16px;
border-radius: 35px;
font-size: 24px;
line-height: 1.33;
}
.show-grid [class^="col-"] {
padding-top: 10px;
padding-bottom: 10px;
border: 1px solid #ddd;
background-color: #eee !important;
}
.show-grid {
margin: 15px 0;
}
.huge {
font-size: 40px;
}
.panel-green {
border-color: #5cb85c;
}
.panel-green > .panel-heading {
border-color: #5cb85c;
color: white;
background-color: #5cb85c;
}
.panel-green > a {
color: #5cb85c;
}
.panel-green > a:hover {
color: #3d8b3d;
}
.panel-red {
border-color: #d9534f;
}
.panel-red > .panel-heading {
border-color: #d9534f;
color: white;
background-color: #d9534f;
}
.panel-red > a {
color: #d9534f;
}
.panel-red > a:hover {
color: #b52b27;
}
.panel-yellow {
border-color: #f0ad4e;
}
.panel-yellow > .panel-heading {
border-color: #f0ad4e;
color: white;
background-color: #f0ad4e;
}
.panel-yellow > a {
color: #f0ad4e;
}
.panel-yellow > a:hover {
color: #df8a13;
}
.timeline {
position: relative;
padding: 20px 0 20px;
list-style: none;
}
.timeline:before {
content: " ";
position: absolute;
top: 0;
bottom: 0;
left: 50%;
width: 3px;
margin-left: -1.5px;
background-color: #eeeeee;
}
.timeline > li {
position: relative;
margin-bottom: 20px;
}
.timeline > li:before,
.timeline > li:after {
content: " ";
display: table;
}
.timeline > li:after {
clear: both;
}
.timeline > li:before,
.timeline > li:after {
content: " ";
display: table;
}
.timeline > li:after {
clear: both;
}
.timeline > li > .timeline-panel {
float: left;
position: relative;
width: 46%;
padding: 20px;
border: 1px solid #d4d4d4;
border-radius: 2px;
-webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
}
.timeline > li > .timeline-panel:before {
content: " ";
display: inline-block;
position: absolute;
top: 26px;
right: -15px;
border-top: 15px solid transparent;
border-right: 0 solid #ccc;
border-bottom: 15px solid transparent;
border-left: 15px solid #ccc;
}
.timeline > li > .timeline-panel:after {
content: " ";
display: inline-block;
position: absolute;
top: 27px;
right: -14px;
border-top: 14px solid transparent;
border-right: 0 solid #fff;
border-bottom: 14px solid transparent;
border-left: 14px solid #fff;
}
.timeline > li > .timeline-badge {
z-index: 100;
position: absolute;
top: 16px;
left: 50%;
width: 50px;
height: 50px;
margin-left: -25px;
border-radius: 50% 50% 50% 50%;
text-align: center;
font-size: 1.4em;
line-height: 50px;
color: #fff;
background-color: #999999;
}
.timeline > li.timeline-inverted > .timeline-panel {
float: right;
}
.timeline > li.timeline-inverted > .timeline-panel:before {
right: auto;
left: -15px;
border-right-width: 15px;
border-left-width: 0;
}
.timeline > li.timeline-inverted > .timeline-panel:after {
right: auto;
left: -14px;
border-right-width: 14px;
border-left-width: 0;
}
.centered {
position: absolute;
top: 15%;
left: 50%;
transform: translate(-50%, -50%);

}
.timeline-badge.primary {
background-color: #2e6da4 !important;
}
.timeline-badge.success {
background-color: #3f903f !important;
}
.timeline-badge.warning {
background-color: #f0ad4e !important;
}
.timeline-badge.danger {
background-color: #d9534f !important;
}
.timeline-badge.info {
background-color: #5bc0de !important;
}
.timeline-title {
margin-top: 0;
color: inherit;
}
.timeline-body > p,
.timeline-body > ul {
margin-bottom: 0;
}
.timeline-body > p + p {
margin-top: 5px;
}
@media (max-width: 767px) {
ul.timeline:before {
left: 40px;
}
ul.timeline > li > .timeline-panel {
width: calc(10%);
width: -moz-calc(10%);
width: -webkit-calc(10%);
}
ul.timeline > li > .timeline-badge {
top: 16px;
left: 15px;
margin-left: 0;
}
ul.timeline > li > .timeline-panel {
float: right;
}
ul.timeline > li > .timeline-panel:before {
right: auto;
left: -15px;
border-right-width: 15px;
border-left-width: 0;
}
ul.timeline > li > .timeline-panel:after {
right: auto;
left: -14px;
border-right-width: 14px;
border-left-width: 0;
}
}

.collapse {
display: none;
}
.sidebar .arrow {
float: right;
}
.select{
box-sizing: content-box;
font-size: 15px;
padding: 9px;

}

input[type=search] {
-webkit-appearance: textfield;
box-sizing: content-box;
}
._2RyUw4qK3q5GZmpjwMkcje {
font-size: 20px;
color: #202020;
border: 0;
outline: 0;
width: 300px;
margin-left: 10px;
transition: all .2s ease-in-out;
z-index: 2;
}
input[type="search" i] {
padding: 20px;
}


* {
box-sizing: border-box;
}

form.example input[type=text] {
padding: 7px;
font-size: 15px;
border: 1px solid grey;
float: left;
width: 80%;
background: white;
}

form.example button {
float: left;
width: 20%;
padding: 10px;
background: #2196F3;
color: white;
font-size: 10px;
border: 1px solid grey;
border-left: none;
cursor: pointer;

}

form.example button:hover {
background: #0b7dda;
}

form.example::after {
content: "";
clear: both;
display: table;
}

.example {
position: absolute;
top: 15%;
left: 64%;
transform: translate(-50%, -50%);

}
.panel-primary{
align-content: center;

}
.center {
margin-right: 50px;
margin-left: 50px;
}
.collapse.in {
display: block;
}
.nav {
padding-left: 0;
margin-bottom: 0;
list-style: none;
}
.collapse {
display: none;
}
element.style {
height: 0px;
}
.nav>li>a {
position: relative;
display: block;
padding: 10px 15px;
}
.nav {
padding-left: 0;
margin-bottom: 0;
list-style: none;
}
</style>


</head>
<body>

<h1 align="center" >Shipping Details</h1><br>
<div align="center">
<div id="create-address" class="content scaffold-create" role="main">
<g:if test="${flash.message}">
<div class="message" role="status">${flash.message}</div>
</g:if>

<table id="mytable">
<tr>
<td>
<g:if test="${addressInstance?.fullName}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="fullName-label" class="property-label"><g:message code="address.fullName.label" default="FullName" /></span>

<td style="font-size:17px"><font color="skyblue"><span class="property-value" aria-labelledby="fullName-label"><g:fieldValue bean="${addressInstance}" field="fullName"/></span></font>
</span>

</div> 
</g:if>
</td>
</tr>


<tr>
<td>
<g:if test="${addressInstance?.mobileNumber}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="mobileNumber-label" class="property-label"><g:message code="address.mobileNumber.label" default="MobileNumber" /></span>

<td style="font-size:17px"><font color="skyblue"><span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${addressInstance}" field="mobileNumber"/></span></font>
</span>

</div> 
</g:if>
</td>
</tr>


<tr>
<td>
<g:if test="${addressInstance?.pincode}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="pincode-label" class="property-label"><g:message code="address.pincode.label" default="Pincode" /></span>

<td style="font-size:17px"><font color="skyblue"><span class="property-value" aria-labelledby="pincode-label"><g:fieldValue bean="${addressInstance}" field="pincode"/></span></font>
</span>

</div> 
</g:if>
</td>
</tr>

<tr>
<td>
<g:if test="${addressInstance?.houseNumber}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="houseNumber-label" class="property-label"><g:message code="address.houseNumber.label" default="HouseNumber" /></span>

<td style="font-size:17px"><font color="skyblue"><span class="property-value" aria-labelledby="houseNumber-label"><g:fieldValue bean="${addressInstance}" field="houseNumber"/></span></font>
</span>

</div> 
</g:if>
</td>
</tr>


<tr>
<td>
<g:if test="${addressInstance?.area}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="area-label" class="property-label"><g:message code="address.area.label" default="Area" /></span>

<td style="font-size:17px"><font color="skyblue"><span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${addressInstance}" field="area"/></span></font>
</span>

</div> 
</g:if>
</td>
</tr>


<tr>
<td>
<g:if test="${addressInstance?.landmark}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="landmark-label" class="property-label"><g:message code="address.landmark.label" default="Landmark" /></span>

<td style="font-size:17px"><font color="skyblue"><span class="property-value" aria-labelledby="landmark-label"><g:fieldValue bean="${addressInstance}" field="landmark"/></span></font>
</span>

</div> 
</g:if>
</td>
</tr>

<tr>
<td>
<g:if test="${addressInstance?.city}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="city-label" class="property-label"><g:message code="address.city.label" default="City" /></span>

<td style="font-size:17px"><font color="skyblue"><span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${addressInstance}" field="city"/></span></font>
</span>

</div> 
</g:if>
</td>
</tr>


<tr>
<td>
<g:if test="${addressInstance?.state}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="state-label" class="property-label"><g:message code="address.state.label" default="State" /></span>

<td style="font-size:17px"><font color="skyblue"><span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${addressInstance}" field="state"/></span></font>
</span>

</div> 
</g:if>
</td>
</tr>

<tr>
<td>
<g:if test="${addressInstance?.cod}">
<div class="fieldcontain" align="center">
<span style="font-size:17px">
<span id="cod-label" class="property-label"><g:message code="address.cod.label" default="COD" /></span>

<td style="font-size:17px"><font color="skyblue"><span class="property-value" aria-labelledby="cod-label"><g:fieldValue bean="${addressInstance}" field="cod"/></span></font>
</span>

</div> 
</g:if>
</td>
</tr>

  
 <tr>
 <th>
 </th>
 <th>
 <g:form controller="appointment" action="createappointment">
 <button  class="btn btn-info btn-lg" >Next</button>
 </g:form>
 </th>
 </tr>
</table>
</div>
</div>


<!-- jQuery -->
<script src="../vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../vendor/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../vendor/raphael/raphael.min.js"></script>
<script src="../vendor/morrisjs/morris.min.js"></script>
<script src="../data/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>


</div>
<script src="/SalesAndServicesApp/website/js/bootstrap.min.js"></script>
<script src="/SalesAndServicesApp/website/js/tm-script.js" type="text/javascript"></script>

</body>
</html>