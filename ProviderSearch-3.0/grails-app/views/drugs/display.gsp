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
      <th>DrugId</th>
      <th>DrugName</th>
      <th>Rate</th>
      <th>ModifiedBy</th>
     
     
      
      </tr>
      </thead>
      
      <g:findAll in="${drugs}" expr="true">
     <tbody>
      <tr>
      <td>${it.id}</td>
      <td><g:link controller="drugs" action="updatedrugs" id="${it.drugName}">${it.drugName}</g:link></td>
      <td>${it.rate}</td>
      <td>${it.modifiedBy}</td>
     
      </tr>
      </tbody>
         
      </g:findAll>
      </table>
       
</body>
</html>

