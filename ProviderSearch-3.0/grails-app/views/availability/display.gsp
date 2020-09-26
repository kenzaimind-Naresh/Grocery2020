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
      <th>DoctorId</th>
      <th>Date</th>
      <th>Status</th>
      <th>ModifiedBy</th>
     
     
      
      </tr>
      </thead>
      
      <g:findAll in="${availability}" expr="true">
     <tbody>
      <tr>
      
      <td><g:link controller="availability" action="updateavailability" id="${it.doctorId}">${it.doctorId}</g:link></td>
      <td>${it.date}</td>
      <td>${it.status}</td>
      <td>${it.modifiedBy}</td>
     
      </tr>
      </tbody>
         
      </g:findAll>
      </table>
       
</body>
</html>

