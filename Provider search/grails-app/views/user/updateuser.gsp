<html>
	<head>
	<style type="text/css">
	span{
  color:Crimson;
  }   
       </style>
	   <script src="https://code.jquery.com/jquery-1.12.4.js"></script><%--
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>       
  



--%><script type="text/javascript">
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
	    	 }
	if (c == null || c == "") {
	    document.getElementById('passwordinfo').style.display = 'inline';	
		 $("#passwordinfo").text("please enter password");	
	    	 }
	 if (l == null || l == "") {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("Please Enter MobileNumber");
	    }
	if (k == null || k == "") {
		document.getElementById('dobinfo').style.display = 'inline';
		 $("#dobinfo").text("Please Enter DateOfBirth");
	    }
	 if (j == null || j == "") {
	    	document.getElementById('addressinfo').style.display = 'inline';
	    	 $("#addressinfo").text("Please Enter Address");
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
<h1 align="center">Profile</h1><br>



   
         <g:form controller="user"  ID="myform" action="saveuser"  nonvalidate="nonvalidate"> 
         <div class="row">
               
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                      
         
            <div class="panel-body">
            <div class="row">
                <!-- Page Header -->
                 <div class="col-lg-2">
                 <div class="fieldgroup">
                 </div></div>
                <div class="col-lg-5">
                 <div class="fieldgroup">
            <label for="username">User Name: </label>
            <input type="text" id="username" name="username" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${result.uname.username}" >
            <span id=usernameinfo></span></div></div>
            <div class="col-lg-5">
                 <div class="fieldgroup">
             <label for="mobileNumber">Mobile Number: </label>
            <input type="text" id="mobileNumber" name="mobileNumber" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${result.uname.mobileNumber}">
            <span id=mobileNumberinfo></span></div></div></div>
           
           <div class="row">
                <!-- Page Header -->
                 <div class="col-lg-2">
                 <div class="fieldgroup">
                 </div></div>
                <div class="col-lg-5">
                 <div class="fieldgroup">
                      
            <label for="dob">Date Of Birth: </label>
            <input type="text" id="dob" name="dob" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${result.uname.dob}">
            <span id=dobinfo></span></div></div>
             <div class="col-lg-5">
                 <div class="fieldgroup">
            <label for="address">Address: </label>
            <input type="text" id="address" name="address" class="form-control" style="height:27px;width:260px;border-radius:5px" value="${result.uname.address}">
            <span id=addressinfo></span></div></div></div>

              <div class="row">
                <!-- Page Header -->
                 <div class="col-lg-2">
                 <div class="fieldgroup">
                 </div></div>
                <div class="col-lg-5">
                 <div class="fieldgroup">           
            <label for="modifiedBy">Modified By: </label>
            <input type="text" id="modifiedBy" name="modifiedBy" class="form-control" style="height:27px;width:260px;border-radius:5px"  value="${result.uname.modifiedBy}">
            <span id=modifiedByinfo></span></div></div></div>
           
             
            <input type="hidden" id="myaction" name="myaction" value="update">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <div align="center">
            <input type="submit" ID="btnsave" value="Update" onclick="return validateForm()" class="btn btn-primary" style="height:35px;width:100px;border-radius:5px"/></td></tr>
            </div>
              <!--        <td><label for="password">Password: </label></td>-->
            <td><input type="hidden" id="password" name="password" style="height:27px;width:260px;border-radius:5px" value="${result.uname.password}" ><br>
        <!--      <span id=passwordinfo></span></td></tr>-->
        </td></div></div></div></div>
         </table>
       </g:form>
  </div></div>
  </body>
</html>