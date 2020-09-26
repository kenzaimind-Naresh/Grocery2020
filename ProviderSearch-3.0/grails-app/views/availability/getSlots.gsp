<html>
<head>
<title></title>
<style>
body{
background-color:#45a049;
}
	ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
.active {
    background-color: #4CAF50;
}
.active {
    background-color: red;
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
<script>

 
$(function() {
 var x='${myresultdata.listId}'
  document.getElementById(x).className = "active";
});
</script>

<style>

.active a{
    color: white !important;
}

</style>
 
</head>
<body>
<%-- ${myresultdata} ${myresultdata.get("app_date")}
${myresultdata.get("DoctorId")}
${myresultdata}
--%>

<%
String s=myresultdata.get("app_date");
String d=myresultdata.get("DoctorId");
		
 %>
 

 <form align="center">
       <g:each in="${myresultdata.get(s)}" var="id"> 
        <g:if test="${id != 'reserved'}" >
        <g:link controller="availability" action="createavailability" class="active" id="${id}" params="[date:s,docid:d]" ><input type="button" style="font-size:12pt;color:white;background-color:green;border:6px solid cream;padding:8px" value="${id}"></g:link>
             </g:if>
        </g:each>
</form>
    
</thead></table>
       
</body>
</html>



