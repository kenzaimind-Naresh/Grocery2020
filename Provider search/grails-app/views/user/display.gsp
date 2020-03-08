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
.nav a{
font-size: 1em
}  
</style>
</head>
<body>


      <table align="center">
      <thead>
      <tr>
      <th>UserId</th>
      <th>UserName</th>
      <th>password</th>
      <th>MobileNumber</th>
      <th>DateOfBirth</th>
      <th>Address</th>
      <th>ModifiedBy</th>
     
      
      </tr>
      </thead>
      
      <g:findAll in="${user}" expr="true">
     <tbody>
      <tr>
      <td>${it.id}</td>
      <td><g:link controller="user" action="updateuser" id="${it.mobileNumber}">${it.username}</g:link></td>
      <td>${it.password}</td>
      <td>${it.mobileNumber}</td>
      <td>${it.dob}</td>
      <td>${it.address}</td>
      <td>${it.modifiedBy}</td>
      </tr>
      </tbody>
         
      </g:findAll>
      </table>
       
</body>
</html>

