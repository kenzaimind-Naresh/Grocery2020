<html>
<head>
<title></title>
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
</head>
<body>


      <table align="center">
      <thead>
      <tr>
      <th>PatientId</th>
      <th>Firstname</th>
      <th>Lastname</th>
      <th>status</th>
      <th>Age</th>
      <th>Gender</th>
      <th>MobileNumber</th>
      <th>AlternateMobile</th>
      <th>Address</th>
      <th>Pin</th>
      <th>Fee</th>
      <th>Email</th>
      <th>Reference</th>
      <th>AppointmentDate</th>
      <th>AppointmentTime</th>
      <th>ModifiedBy</th>
     
      
      </tr>
      </thead>
      
      <g:findAll in="${patient}" expr="true">
     <tbody>
      <tr>
      <td>${it.id}</td>
      <td><g:link controller="patient" action="updatepatient" id="${it.pFirstname}">${it.pFirstname}</g:link></td>
      <td>${it.pLastname}</td>
      <td>${it.status}</td>
      <td>${it.pAge}</td>
      <td>${it.pGender}</td>
      <td>${it.mobileNumber}</td>
      <td>${it.alternateMobile}</td>
      <td>${it.address}</td>
      <td>${it.pin}</td>
      <td>${it.fee}</td>
      <td>${it.email}</td>
      <td>${it.reference}</td>
      <td>${it.appointmentDate}</td>
      <td>${it.appointmentTime}</td>
      <td>${it.modifiedBy}</td>
      </tr>
      </tbody>
         
      </g:findAll>
      </table>
       
</body>
</html>

