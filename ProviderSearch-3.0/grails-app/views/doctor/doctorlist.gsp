<html>
<head>
<title>Doctor List</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
 
   td{
  color:black;
  font-size:13px;
  width:400px;
  }
  
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
 <g:render template="/user/aDashboard"/>
 <div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Doctors List <b style="font-size:12px">
                (No of Doctors Registered = ${result.totalcount })</b></h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-archive pull-right dashicon"></i>
            </div>
        </div> 
  <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th style="color:black">Id</th>
      <th style="color:black">Doctor Name</th>
      <th style="color:black">Clinic Name</th>
      <th style="color:black">Address</th>
      <th style="color:black">Mobile Number</th>
      <th style="color:black">Fee</th>
      </tr>
      </thead>
       <g:findAll in="${result.doctordata}" expr="true">
     <tbody>
      <tr>
       <td>${it.doctorId }</td>
      <td>${it.dFirstname}</td>
      <td>${it.clinicName}</td>
      <td>${it.address }</td>
      <td>${it.mobileNumber}</td>
      <td>${it.fee}</td>
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div>
       <div class="form-group">
  		<div class="col-sm-12 text-right">
       <g:if test="${result.offset > 0}">
     <button class="btn btn-primary"><g:link type="button" style="color:white" controller="doctor" action="offsetlist1" params="${[offset:result.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <button class="btn btn-primary"> <g:link type="button" style="color:white" controller="doctor" action="offsetlist1"   params="${[offset: result.offset+5]}" value="Next" >Next</g:link></button>
       </g:if>
       </div></div></div></div></div></div>
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
      
      
