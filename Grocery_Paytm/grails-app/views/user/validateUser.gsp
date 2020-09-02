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

<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/merchant/location1"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" style="padding-top:30px; padding-bottom:30px;" href="/Skeleton/user/marketdata">Home</a></li>
							
							<li class="nav-item"><a class="nav-link" style="padding-top:30px; padding-bottom:30px;" href="/Skeleton/user/marketdata">Shop</a></li>
													
							<li class="nav-item"><a class="nav-link" style="padding-top:30px; padding-bottom:30px;" href="/Skeleton/user/contact2">Contact</a></li>
							

								
						</ul>
						
					</div>
				</div>
			</nav>
		</div>
	
	</header>
	<!-- End Header Area -->
	
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
   <%--$("#password").focusout(
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
     });--%>

  });

function validateForm() {
var newPassword = document.forms["myform"]["newPwd"].value;
var confirmpassword = document.forms["myform"]["confirmPwd"].value;
var ff = /\s$/;

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
               
         <g:form class="form-horizontal" controller="user" ID="myform" action="passwordSave3"  nonvalidate="nonvalidate"> 
            
           <div class="form-group">
                 <div class="col-sm-6">
            <label style="color: black;">New Password:</label>
           <input type="password" id="newPwd" name="newPwd" class="form-control" value="" >
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
			<input type="hidden" id="username" name="username" value="${result.uname.userName}"> 
             <div class="form-group ic-no-mgbottom">
                            <div class="col-sm-6 text-center">
           <input type="submit" ID="btnsave" value="Save" onclick="return validateForm()" class="btn btn-primary" />
            </div>
            </div></g:form>
            </div></div></div>
            

            </body>
            </html>