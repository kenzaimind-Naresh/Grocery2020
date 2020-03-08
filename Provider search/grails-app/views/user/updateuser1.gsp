<html>
	<head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
 
  .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}
  </style>
	
<script type="text/javascript">
$(document).ready(function(){

	$("#username").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
			
		 if ( $("#username").val().match('^[a-zA-Z]{3,16}$') ) {
	   	 
			$("#usernameinfo").text("");
	 } else {
		 $("#usernameinfo").text("Please Enter Valid Username");
	 }
		  });

	$("#password").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	
		
	 if ( $("#password").val().match('^[a-zA-Z]{3,16}$') ) {
   	 
		$("#passwordinfo").text("");
 } else {
	 $("#passwordinfo").text("Please Enter Valid Password");
 }
	  });

	 $("#mobileNumber").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#mobileNumber").val().match('^[0-9]{10,16}$') ) {
		   	 
	   		$("#mobileNumberinfo").text("");
	     } else {
	    	 $("#mobileNumberinfo").text("Please Enter MobileNumber");
	     }
	   	  });

	$("#dob").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
			
		 if ( $("#dob").val() ){
	   	 
			$("#dobinfo").text("");
	 } else {
		 $("#dobinfo").text("Please Enter DateOfBirth");
	 }
		  });

	 $("#address").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#address").val().match('^[a-zA-Z0-9\-\,.@#$%^&*_  ]{3,20}$') ) {
		   	 
	   		$("#addressinfo").text("");
	     } else {
	    	 $("#addressinfo").text("Please Enter Address");
	     }
	   	  });
	$("#modifiedBy").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
		
		 if ( $("#modifiedBy").val().match('^[a-zA-Z]{3,16}$')){
	   	 
			$("#modifiedByinfo").text("");
	 } else {
		 $("#modifiedByinfo").text("Please Enter ModifiedBy");
	 }
		  });

	});
	function validateForm() {
		 var x = document.forms["myform"]["username"].value;
		 var c=  document.forms["myform"]["password"].value;		
		 var l = document.forms["myform"]["mobileNumber"].value;
		 var k = document.forms["myform"]["dob"].value;
		 var j = document.forms["myform"]["address"].value;
		 var g = document.forms["myform"]["modifiedBy"].value;

	if (x == null || x == "") {
	    document.getElementById('usernameinfo').style.display = 'inline';	
		 $("#usernameinfo").text("Please Enter Username");
		 return false;	
	    	 }
	if (c == null || c == "") {
	    document.getElementById('passwordinfo').style.display = 'inline';	
		 $("#passwordinfo").text("Please Enter Password");
		 return false;	
	    	 }
	 if (l == null || l == "") {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("Please Enter MobileNumber");
	    	 return false;
	    }
	if (k == null || k == "") {
		document.getElementById('dobinfo').style.display = 'inline';
		 $("#dobinfo").text("Please Enter DateOfBirth");
		 return false;
	    }
	 if (j == null || j == "") {
	    	document.getElementById('addressinfo').style.display = 'inline';
	    	 $("#addressinfo").text("Please Enter Address");
	    	 return false;
	    }
	if (g == null || g == "") {
		document.getElementById('modifiedByinfo').style.display = 'inline';
		 $("#modifiedByinfo").text("Please Enter ModifiedBy");
	 	 return false;
	}else{
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
  
<g:render template="/user/aDashboard"/> 
<div class="container">
<div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>Profile</h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-refresh pull-right dashicon"></i>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
         <g:form class="form-horizontal" controller="user" id="myform" action="saveuser"  nonvalidate="nonvalidate"> 
         
         <div class="form-group">
                            <div class="col-md-6 col-sm-6">
            <label style="color:black">User Name:</label>
           <input type="text" id="username" name="username" class="form-control"  value="${result.user.username}">
            <span id=usernameinfo></span>
            </div> 
            <div class="col-md-6 col-sm-6">
            <label style="color:black">Mobile Number: </label>
           <input type="text" id="mobileNumber" name="mobileNumber" class="form-control" value="${result.user.mobileNumber}" >
            <span id=mobileNumberinfo></span>
            </div></div>
            
            
            <div class="form-group">
                            <div class="col-md-6 col-sm-6">
            <label style="color:black">Date Of Birth:</label>
           <input type="text" id="dob" name="dob" class="form-control" value="${result.user.dob}">
            <span id=dobinfo></span>
            </div>
             <div class="col-md-6 col-sm-6">
            <label style="color:black">Address:</label>
           <input type="text" id="address" name="address" class="form-control" value="${result.user.address}">
            <span id=addressinfo></span>
            </div></div>
            
           
            <div class="form-group">
                            <div class="col-md-12 col-sm-12">
            <label style="color:black">Modified By:</label>
           <input type="text" id="modifiedBy" name="modifiedBy" class="form-control" value="${result.user.modifiedBy }" >
            <span id=modifiedByinfo></span>
            </div></div>
            

            <input type="hidden" id="myaction" name="myaction" value="update">
            <input type="hidden" id="mode" name="mode" value="web"> 
            
                <div class="form-group">
                            <div class="col-sm-12 text-center">
           <input type="submit" ID="btnsave" value="Update" onclick="return validateForm()" class="btn btn-primary" />
            
              <!--        <td><label for="password">Password: </label></td>-->
      <input type="hidden" id="password" name="password"  value="${result.user.password}" >
        <!--      <span id=passwordinfo></span></td></tr>-->
       </div>
       </div>
       </g:form>
       </div>
       </div>
       </div>
       </div>
       
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