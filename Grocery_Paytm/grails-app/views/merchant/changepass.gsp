<!DOCTYPE html>
<html lang="en">
<head>


<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Skeleton</title>
	<!--
		CSS
		============================================= -->
    <link rel="stylesheet" href="/Skeleton/website/css/linearicons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/themify-icons.css">
	<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">
	<link rel="stylesheet" href="/Skeleton/website/css/owl.carousel.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nice-select.css">
	<link rel="stylesheet" href="/Skeleton/website/css/nouislider.min.css">
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/Skeleton/website/css/magnific-popup.css">
	<link rel="stylesheet" href="/Skeleton/website/css/main.css">



<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

</head>

<body>

  <script  src="${resource(dir: 'js', file: 'usermerchant.js')}"></script>

	<g:render template="/merchant/merchantheader1"/>
	
     <br><br><br>
     




<div align="center">
<p style="color:black;font-Size: 20px">${flash.message}</p>
<br>
    </div>

<script>
     if (sessionStorage.getItem("Page2Visited")) {
          sessionStorage.removeItem("Page2Visited");
          window.location.reload(true); // force refresh page1
     }
</script>
<script>
history.pushState(null, null, location.href);
window.onpopstate = function () {
history.go(1);
};
</script>


  
	
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
   
    </head>



	<div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3 align="center">Change Password</h3>
            </div>
            
        </div>
   
    <div class="row">
            <div class="col-lg-12">
               
         <g:form class="form-horizontal" controller="merchant" ID="myform" action="passwordSave2"  nonvalidate="nonvalidate"> 
	<input type="hidden" name="pass" Id="pass" value="${result.uname.password}" />
            <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">Old Password:</label>
           <input type="password" id="password" name="password" class="form-control" value="">
            <span id=passwordinfo style="color:red"></span>
            </div>
            </div>
            
           <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">New Password:</label>
           <input type="password" id="newPwd" name="newPwd" class="form-control" value="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*])(?=.*[a-zA-Z!@#$%^&*]).{6,}" 
           			title="Password must have atleast 6 characters(Uppercase,Lowercase,Numeric,Special character)">
            <span id=newPwdinfo style="color:red"></span>
            </div>
            </div>
            
           <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">Confirm Password: </label>
           <input type="password" id="confirmPwd" name="confirmPwd" class="form-control" value="">
            <span id=confirmPwdinfo style="color:red"></span>
            </div></div>
           
            <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
             <div class="form-group ic-no-mgbottom">
                            <div class="col-sm-6 text-center">
           <input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="genric-btn primary circle" style="font-size: 15px;" />
            </div>
            </div></g:form>
            </div></div></div>

<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:black;
   color: white;
   text-align: center;
}

a {
 // color: white;
}
a:hover {
  //color: white;
}


</style>

<br><br>
<div class="footer ">
<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>  
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong>Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
</div>

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="/Skeleton/website/js/vendor/bootstrap.min.js"></script>
	<script src="/Skeleton/website/js/jquery.ajaxchimp.min.js"></script>
	<script src="/Skeleton/website/js/jquery.nice-select.min.js"></script>
	<script src="/Skeleton/website/js/jquery.sticky.js"></script>
	<script src="/Skeleton/website/js/nouislider.min.js"></script>
	<script src="/Skeleton/website/js/countdown.js"></script>
	<script src="/Skeleton/web-app/website/js/jquery.magnific-popup.min.js"></script>
	<script src="/Skeleton/website/js/owl.carousel.min.js"></script>
	
            </body>
            </html>