<html>
	<head>
	<style type="text/css">
	span{
  color:Crimson;
  }   
       </style>
	 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	
	<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	 --%><%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  



--%><script type="text/javascript">

$(document)
.ready(
  function() {

   $("#newPwd")
     .focusout(
       function() {
        $(this).find("span").css("display",
          "inline");
        var ff = /\s$/;
        var newPwd = $("#newPwd").val();
        var password = $("#password").val();
        if($("#newPwd").val().trim()=="" ||newPwd == password || $("#newPwd").val().match('^[a-zA-Z0-9-\ \-\,.@#$%^&*_!  ]{3,20}$')== null){
         $("#newPwdinfo").text("Please Enter Valid NewPassword");
        
       }else
        if ($("#newPwd").val().indexOf(" ") != 0 && ff.test($("#newPwd").val()) == false) {

         $("#newPwdinfo").text("");
        }
          else {
         $("#newPwdinfo")
           .text(
             "Please don't begin or end with space");
        }
       });
   $("#confirmPwd")
     .focusout(
       function() {
        $(this).find("span").css("display",
          "inline");

        var newPwd = $("#newPwd").val();
        var confirmPwd = $("#confirmPwd").val();
        if (newPwd != confirmPwd) {
         $("#confirmPwdinfo")
           .text(
             "New Password and Confirm Password should be same");

        } else {
         $("#confirmPwdinfo").text("");
        }
       });
   $("#password").focusout(
     function() {
      $(this).find("span").css("display", "inline");
      var pass = $("#pass").val();
      var password = $("#password").val();
      if (pass != password) {
       $("#passwordinfo").text(
         "Please Enter Valid old password");

      } else {
       $("#passwordinfo").text("");
      }
     });

  });

function validateForm() {
var newPassword = document.forms["myform"]["newPwd"].value;
var confirmpassword = document.forms["myform"]["confirmPwd"].value;
var password = document.forms["myform"]["password"].value;
var ff = /\s$/;
if (password == null || password.trim() == "") {
document.getElementById('passwordinfo').style.display = 'inline';
$("#passwordinfo").text("Please Enter Old Password");
return false;
}

if (newPassword == null || newPassword.trim() == "" || password == newPassword || newPassword.match('^[a-zA-Z0-9-\ \-\,.@#$%^&*_!  ]{3,20}$')==null) {
document.getElementById('newPwdinfo').style.display = 'inline';
$("#newPwdinfo").text("Please Enter New Password");
return false;
}
if (newPassword.indexOf(" ") == 0 || ff.test(newPassword) == true) {
document.getElementById('newPwdinfo').style.display = 'inline';
$("#newPwdinfo").text("Please don't begin or end with space");
return false;
}

if (newPassword != confirmpassword) {
document.getElementById('confirmPwdinfo').style.display = 'inline';
$("#confirmPwdinfo").text(
  "New Password and Confirm Password should be same");

return false;
} else {
return true;
}
}

<%--
$(document).ready(function(){


	  $("#newPwd").focusout(function(){
	      $( this ).find( "span" ).css( "display", "inline" ); 
	      
	      if ( $("#newPwd").val().trim().match('^[a-zA-Z0-9\-\,.@#$%^&*_\  \]{3,20}$') ){
	       
	      $("#newPwdinfo").text("");
	      } else {
	       $("#newPwdinfo").text("Please Enter Valid NewPassword");
	      }
	       });
	  $("#confirmPwd").focusout(function(){
	      $( this ).find( "span" ).css( "display", "inline" ); 
	      
	      var newPwd = $("#newPwd").val();
	            var confirmPwd = $("#confirmPwd").val();
	            if (newPwd != confirmPwd) {
	             $("#confirmPwdinfo").text("Please Enter Valid ConfirmPassword");
	      
	      } else {
	       $("#confirmPwdinfo").text("");
	      }
	       });
	  $("#password").focusout(function(){
	   $( this ).find( "span" ).css( "display", "inline" ); 
	   var givenpassword = $("#password").val();
	   var pass=$("#pass").val();
	            if (givenpassword != pass) {
	             $("#passwordinfo").text("Please Enter Valid OldPassword");
	      
	      } else {
	       $("#passwordinfo").text("");
	      }
	       });
	 
	});


	function validateForm() {
	  var newPwd = document.forms["myform"]["newPwd"].value;
	  var confirmPwd=  document.forms["myform"]["confirmPwd"].value;
	  var password=  document.forms["myform"]["password"].value;
	  
	  if (password == null || password.trim() == "") {
	      document.getElementById('passwordinfo').style.display = 'inline'; 
	       $("#passwordinfo").text("Please Enter OldPassword"); 
	       return false;
	        }
	  
	  if (newPwd == null || newPwd.trim() == "") {
	      document.getElementById('newPwdinfo').style.display = 'inline'; 
	       $("#newPwdinfo").text("Please Enter NewPassword"); 
	       return false;
	        }
	  
	       if (confirmPwd == null || confirmPwd.trim() == "" || newPwd!=confirmPwd) {
	      document.getElementById('confirmPwdinfo').style.display = 'inline';
	       $("#confirmPwdinfo").text("Please Enter ConfirmPassword");
	       
	       return false;
	     }else{
	   return true;
	      } 
	}

   --%></script>
   
   <script type="text/javascript">
   history.pushState({ page: 1 }, "Title 1", "#no-back");
   window.onhashchange = function (event) {
     window.location.hash = "no-back";
   };
   </script>
 </head>
<%--<script>

 
$(function() {
 var x='${result.listId}'
  document.getElementById(x).className = "active";
});
</script>

--%><style>

.active a{
    color: white !important;
}

</style>

  <body>

   <div id="wrapper">
<g:render template="/user/header"/>
<div id="page-wrapper"><br><br>
<h1 align="center">Change Password</h1><br>


 
   
         <g:form controller="user"  ID="myform" action="passwordSave"  nonvalidate="nonvalidate"> 
         <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
           
            
            
            <input type="hidden" name="pass" Id="pass" value="${result.uname.password}" />
            
          <div class="panel-body">
             <div class="row">
                <!-- Page Header -->
                 <div class="col-lg-4">
                 <div class="fieldgroup">
                 </div></div>
                <div class="col-lg-8">
                 <div class="fieldgroup">
            <label for="password">Old Password: </label>
            <input type="password" id="password" name="password" class="form-control" style="height:27px;width:300px;border-radius:5px" value="">
            <span id=passwordinfo></span></div></div></div>
            
            <div class="row">
                <!-- Page Header -->
                 <div class="col-lg-4">
                 <div class="fieldgroup">
                 </div></div>
                <div class="col-lg-8">
                 <div class="fieldgroup">
            <label for="newPwd">New Password: </label>
            <input type="password" id="newPwd" name="newPwd" class="form-control" style="height:27px;width:300px;border-radius:5px" value="" >
            <span id=newPwdinfo></span></div></div></div>
            
             <div class="row">
                <!-- Page Header -->
                 <div class="col-lg-4">
                 <div class="fieldgroup">
                 </div></div>
                <div class="col-lg-8">
                 <div class="fieldgroup">
            <label for="confirmPwd">Confirm Password: </label>
            <input type="password" id="confirmPwd" name="confirmPwd" class="form-control" style="height:27px;width:300px;border-radius:5px" value="">
            <span id=confirmPwdinfo></span></div></div></div><br>
                       
             <tr class="fieldgroup">
             <td></td>
            <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
             <div class="row" align="center">
                <!-- Page Header -->
                <div class="col-lg-22">
            <div class="fieldgroup">
            <input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="btn btn-primary" style="height:35px;width:100px;border-radius:5px"/>
            </div></div></div></div></div></div></div>
            
        
         
       </g:form>
  </div></div>
  </body>
</html>