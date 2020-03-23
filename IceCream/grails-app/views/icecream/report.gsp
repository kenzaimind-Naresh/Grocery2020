<html>
<head>
<title>Search</title>
 <link rel="shortcut icon" href="/EmployeeRegistration/images/favicon-32x32.png"/>
<script src="${resource(dir: 'jss', file: 'jquery-1.10.2.js')}"></script>
   <script src="${resource(dir: 'jss', file: 'jquery-ui.js')}"></script>
         <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui.css')}" type="text/css">
  <script>
$(function() {
    $("#medicineName").autocomplete({
       source:[
     <g:each in="${createmedicine.emp}">
     
     '${it.medicineName}', 
           
        </g:each>]
    });
  });
</script>
<script type="text/javascript">
function validateForm() {
	var medicineName = document.forms["myform"]["medicineName"].value;
	if (medicineName.trim() == null || medicineName.trim() == "") {
	    document.getElementById('medicineNameinfo').style.display = 'inline';	
		 $("#medicineNameinfo").text("Please Select medicineName");	
		 return false;
	}	
}
</script>
    <style>
.head{
 color:white ;
	font-Size:30px;
 }
 
 span{
 color:Crimson ;
	font-Size:12px;
 }
</style>
 <SCRIPT type="text/javascript">    
  history.pushState({ page: 1 }, "Title 1", "#no-back");
  window.onhashchange = function (event) {
    window.location.hash = "no-back";
  };
        </SCRIPT>
</head>
<body>
<g:render template="/dashboard"/>
<div class="content-wrapper"><br>
    <!-- Content Header (Page header) -->
    
    <section class="content" style="max-width:1000px">
     <div class="box" >
     <g:form Id="myform" name="myform" controller="Employee" action="search1">
     <div class="box-body">
		<p style="font-Size:15px;color:brown">
  	 ${createmedicine.getAt("message") }</p>
  	 
 	<div class="row" align="center">
        <div class="col-md-12" >
           <div class="form-group">
		<label style="padding-right:170px">Name: </label>
		<div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
					<input type="text" Id="medicineName" class="form-control pull-right" placeholder="Search"
						name="medicineName" 
						style="height: 30px; width: 180px; border-radius: 5px"/>
						<div class="input-group-btn">
						<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search" onclick="return validateForm()" onclick="return check()"></i></button>
						  </div>
		</div></div>
						<span id="medicineNameinfo"></span></div></div></div>
						
	<input type="hidden" id="mode" name="mode" value="web">
	</div>
	</g:form>				

 <g:form controller="Employee" align="center">
     <div class="box-body table-responsive" style="max-width:1000px">
              <table class="table table-hover table-condensed table-striped">
      <thead>
      <tr>
      <th>FullName</th>
      <th>MobileNumber</th>      
      <th>Status</th>
      <th>EmpId</th>
      <th>Role</th>
      <th>GetTimeSheet</th>
      <th>LeavePolicy</th>     
      </tr>
      </thead>
     <tbody>
<g:each in="${employee.emp1}" expr="true">
      <tr>     
      <td><g:link  controller="employee" action="profileUpdate" id="${it.id}">${it.firstName} ${it.lastName}</g:link></td>
      <td>${it.personalNumber}</td>     
      <td>${it.status}</td>
      <td>${it.empId}</td>
      <td>${it.userType}</td>
      <td><button><g:link type="button" controller="timeSheet" action="timeSheetDetails" id="${it.id}">Go</g:link></button></td>
      <td><g:link name="myform" controller="leavePolicy" action="leavePolicyList" id="${it.empId}">
      <input type="button" value="Click Here" style="width:80;height:30;background-color: #993366;color: white;"/></g:link></td>  
      </tr>
      </g:each>
      </tbody>
     </table></div>
 </g:form>
 <br></div></section>
</div>
 </body>
 
</html>

