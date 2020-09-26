<html>
<title>Change Password</title>
	<head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
  
  .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}
  </style>
	
<script type="text/javascript">

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
</script>
   
   <script type="text/javascript">
   history.pushState({ page: 1 }, "Title 1", "#no-back");
   window.onhashchange = function (event) {
     window.location.hash = "no-back";
   };
   </script>
 </head>

  <body>
<g:render template="/user/dDashboard"/> 
	<div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Change Password</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-key pull-right dashicon"></i>
            </div>
        </div>
   
    <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
         <g:form class="form-horizontal" controller="doctor" ID="myform" action="passwordSave2"  nonvalidate="nonvalidate"> 
	<input type="hidden" name="pass" Id="pass" value="${result.uname.password}" />
            <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">Old Password:</label>
           <input type="password" id="password" name="password" class="form-control" value="">
            <span id=passwordinfo></span>
            </div>
            </div>
            
           <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">New Password:</label>
           <input type="password" id="newPwd" name="newPwd" class="form-control" value="" >
            <span id=newPwdinfo></span>
            </div>
            </div>
            
           <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">Confirm Password: </label>
           <input type="password" id="confirmPwd" name="confirmPwd" class="form-control" value="">
            <span id=confirmPwdinfo></span>
            </div></div>
           
            <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
             <div class="form-group ic-no-mgbottom">
                            <div class="col-sm-6 text-center">
           <input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="btn btn-primary" />
            </div>
            </div></g:form>
            </div></div></div></div>
             <div class="footer site-footer">
        <div class="container copy-foot">
            <div class="row">
                <div class="col-xs-12 col-md-6">
                    <ul>
                        <li><a href="#">Terms and Conditions</a></li>
                        <li class="foot-vert-line">|</li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-md-6">
                    <p>Copyright © 2017. Provider Search. All right reserved.</p>
                </div>
            </div>
        </div>
    </div>
            </body>
            </html>