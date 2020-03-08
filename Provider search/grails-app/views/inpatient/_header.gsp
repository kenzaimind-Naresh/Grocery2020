 <html>
 <head>
 <style>
 #header {
    background-color:green;
    color:white;
    text-align:center;
    padding:1px;
}
</style>

</head>
<body>
 <div id="header" >
  <h3>HOSPITAL MANAGEMENT</h3><tab1> <div class="btn-group" >
  <button type="button" class="btn btn-danger dropdown-toggle btn-lg btn-circle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
     ${user.username }<span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><g:link controller="user" action="updateuser" class="active">Profile</g:link></li>
    <li><g:link controller="user" action="changepass" class="active">Change Password</g:link></li>
    <li role="separator" class="divider"></li>
    <li> <g:link controller="user" action="logout" class="active">Logout</g:link>
</li>
  </ul>
</div></tab1>
 </div>
 </body>
 </html>