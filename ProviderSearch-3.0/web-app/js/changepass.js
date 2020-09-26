$(document).ready(function() {

   $("#newPwd").focusout(function() {
        $(this).find("span").css("display","inline");
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
   $("#confirmPwd").focusout(function() {
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
   $("#password").focusout(function() {
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