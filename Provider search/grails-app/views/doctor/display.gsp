<html>
<head>
<title></title>
<head>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
  span{
  color:Crimson;
  }
  
   .ui-autocomplete { height: 200px; width: 200px;overflow-y: scroll; overflow-x: hidden;}
  </style>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Core CSS - Include with every page -->
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/plugins/bootstrap', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/font-awesome/css', file: 'font-awesome.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/plugins/pace', file: 'pace-theme-big-counter.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/css', file: 'main-style.css')}" type="text/css">
      <!-- Core Scripts - Include with every page -->
<script src="${resource(dir: 'hospitalmgnt/assets/plugins', file: 'jquery-1.10.2.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/bootstrap', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/metisMenu', file: 'jquery.metisMenu.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/pace', file: 'pace.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/scripts', file: 'siminta.js')}"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
body{
 background-image: url("../images/lite.jpg");
 background-size:cover;
 background-position:center;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}
table#t01 {
    width: 100%;    
    background-color: #f1f1c1;
    }
    tr {
    background-color: #f2f2c2;
    }
    th {
    background-color: #4CAF50;
    color: white;
}
</style>
<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};

</script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
               <a class="navbar-brand" href="/HospitalMgnt/doctor/display">
                    <strong	style="color:white;font-size:20px;">HOSPITAL MANAGEMENT</strong>
                </a>
            </div>
            <!-- end navbar-header -->

        </nav>
<br><br><br>
      <table align="center">
      <thead>
      <tr>
      <th>DoctorId</th>
      <th>RegistrationId</th>
      <th>Firstname</th>
      <th>Lastname</th>
      <th>Age</th>
      <th>Gender</th>
      <th>MobileNumber</th>
      <th>AlternateMobile</th>
      <th>Address</th>
      <th>Pin</th>
      <th>Email</th>
      <th>Speciality</th>
      <th>experience</th>
      <th>Reference</th>
      <th>ModifiedBy</th>
     
      
      </tr>
      </thead>
      
      <g:findAll in="${doctor}" expr="true">
     <tbody>
      <tr>
      <td>${it.id}</td>
      <td>${it.regId}</td>
      <td><g:link controller="doctor" action="updatedoctor" id="${it.dFirstname}">${it.dFirstname}</g:link></td>
      <td>${it.dLastname}</td>
      <td>${it.dAge}</td>
      <td>${it.dGender}</td>
      <td>${it.mobileNumber}</td>
      <td>${it.alternateMobile}</td>
      <td>${it.address}</td>
      <td>${it.pin}</td>
      <td>${it.email}</td>
      <td>${it.speciality}</td>
      <td>${it.experience}</td>
      <td>${it.reference}</td>
      <td>${it.modifiedBy}</td>
      </tr>
      </tbody>
         
      </g:findAll>
      </table>
       
</body>
</html>

