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
      <th>BillId</th>
      <th>PatientId</th>
      <th>Firstname</th>
      <th>Lastname</th>
      <th>Drugdetails</th>
      <th>Tax</th>
      <th>Total</th>
      <th>Mode</th>
      <th>ModifiedBy</th>
     
      
      </tr>
      </thead>
      
      <g:findAll in="${pharmacy}" expr="true">
     <tbody>
      <tr>
      <td>${it.id}</td>
      <td><g:link controller="pharmacy" action="updatepharmacy" id="${it.pFirstname}">${it.patientId}</g:link></td>
     <td>${it.pFirstname}</td>
      <td>${it.pLastname}</td>
      <td>${it.drugdetails}</td>
      <td>${it.tax}</td>
      <td>${it.total}</td>
      <td>${it.pMode}</td>
      <td>${it.modifiedBy}</td>
      </tr>
      </tbody>
         
      </g:findAll>
      </table>
       
</body>
</html>

