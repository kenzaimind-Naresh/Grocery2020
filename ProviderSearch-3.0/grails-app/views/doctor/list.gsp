<html>
<head>
<title>Booked Appointment List</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
  td{
  color:black;
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
 <g:render template="/user/dDashboard"/>
  <div class="container">
  <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Appointment Schedule</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-calendar pull-right dashicon"></i>
            </div>
        </div>
 <g:if test = "${result.appointmentdata != []}">
<div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
      <th style="color:black">PatientId</th>
      <th style="color:black">FullName</th>
      <th style="color:black">Appointment Date</th>
      <th style="color:black">Appointment Time</th>
      <th style="color:black">Reason</th>
      <th style="color:black">Mobile Number</th>
      <th style="color:black">Address</th>
      </tr>
      </thead>
       <g:findAll in="${result.appointmentdata}" expr="true">
     <tbody>
      <tr>
      <td>${it.patientId}</td>
      <td>${it.pFirstname} ${it.pLastname}</td>
      <td>${it.appointmentDate}</td>
      <td>${it.appointmentTime}</td>
      <td>${it.reason}</td>
      <td>${it.mobileNumber}</td>
      <td>${it.address}</td>
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div>
      
       <div class="form-group">
                            <div class="col-sm-12 text-right">
       <g:if test="${result.offset > 0}">
     <button class="btn btn-primary"><g:link type="button" style="color:white" controller="doctor" action="offsetlist" params="${[offset:result.offset-5,mode:'web']}" value="Previous">Previous</g:link></button>
    </g:if>
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <button class="btn btn-primary"> <g:link type="button" style="color:white" controller="doctor" action="offsetlist"   params="${[offset: result.offset+5,mode:'web']}" value="Next">Next</g:link></button>
       </g:if></div></div></div></div></div></g:if>
       <g:else>
      <p>Data Not Found</p>
      </g:else>
      </div>
       <input type="hidden" id="mode" name="mode" value="web">
       
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
      
      
