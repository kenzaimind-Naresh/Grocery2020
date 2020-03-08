<html>
<head>
<title></title>
<style>
body{
background-color:lightgreen;
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
      <th>Appointment</th>
      <th>DoctorId</th>
      <th>Status</th>
      <th>ModifiedBy</th>
     
     
      
      </tr>
      </thead>
      
      <g:findAll in="${appointment}" expr="true">
     <tbody>
      <tr>
      
      <td><g:link controller="appointment" action="updateappointment" id="${it.patientId}">${it.patientId}</g:link></td>
      
      <td>${it.appointment}</td>
      <td>${it.doctorId}</td>
      <td>${it.status}</td>
      <td>${it.modifiedBy}</td>
     
      </tr>
      </tbody>
         
      </g:findAll>
      </table>
       
</body>
</html>

