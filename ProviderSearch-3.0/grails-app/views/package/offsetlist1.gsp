<html>
<head>
<title></title>
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
 <g:render template="/user/aDashboard"/>
 <div class="container">
  <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Package List</h3>
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
      <th style="color:black">Doctor Id</th>
      <th style="color:black">Doctor Name</th>
      <th style="color:black">Package Name</th>
      
      <%--<th style="color:black">Duration</th>
      <th style="color:black">Created By</th>
      --%></tr>
      </thead>
       <g:findAll in="${result.ppackdata}" expr="true">
     <tbody>
      <tr>
       <td>${it.doctorId }</td>
       <td>${it.dFirstname} ${it.dLastname}</td>
      <td>${it.packName}</td>
      
      <%--<td>${it.duration }</td>
      <td>${it.createdBy}</td>
      --%></tr>
      </tbody>
      </g:findAll>
      </table>
       <div class="form-group">
  		<div class="col-sm-12 text-right">
       <g:if test="${result.offset > 0}">
     <button class="btn btn-primary"><g:link type="button" style="color:white" controller="package" action="offsetlist1" params="${[offset:result.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <button class="btn btn-primary"> <g:link type="button" style="color:white" controller="package" action="offsetlist1"   params="${[offset: result.offset+5]}" value="Next" >Next</g:link></button>
       </g:if>
       </div></div>
      </div>
      </div>
      </div>
      </div>
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
      
      
