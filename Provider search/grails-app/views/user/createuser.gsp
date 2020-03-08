<html>
	<head>
	<style type="text/css">
     #error{
            display:none;
            color:red;
            width:250px;
            font-size:20px;
            font-family:Tahoma, Geneva, sans-serif;
           }

      body{
		    background-image: url("../images/lite.jpg");
            background-size:cover;
            background-position:center;
		  }
		   tab3 { padding-left: 6em; }
		   tab5 { padding-right:0em; }   
		   tab6 { padding-left: 3.5em; }   
		   tab7 { padding-right: 0.4em; }
		   tab8 { padding-right: 1.4em; } 
		   tab9 { padding-left: 4em; } 
		   tab10 { padding-left: 5.5em; }
		   tab11 { padding-right: 6.4em; } 
		   tab12 { padding-left: 4em; }
		   tab13 { padding-left: 4.5em; }
		   tab14 { padding-right: 4em; }
		   tab15 { padding-left: 4.4em; }
		   tab16 { padding-left: 4em; }
		   tab17 { padding-right: 7.1em; }
		   tab18 { padding-left: 3.8em; }
		   tab19 { padding-left: 2.4em; }
		   tab20 { padding-right: 4.3em; }
		   tab22 { padding-left: 2em; }
		   tab23 { padding-right: 2em; }
		   tab25 { padding-left: 2em; }
		   tab26 { padding-left: 0em; }  
		   tab21 { padding-left: 4em; }
		   tab24 { padding-left: 4em; }
		   tab27 { padding-left: 4em; }
		   tab28 { padding-left: 1.8em; }
		   tab29 { padding-left: 0em; }
		   tab30 { padding-left: 4em; }
		   tab31 { padding-left: 0.8em; }
		   tab33 { padding-left: 4em; }
		   tab34 { padding-left: 0em; }
		   tab35 { padding-right: 0.9em; }
		   tab36 { padding-left: 4em; }
		   tab38 { padding-right: 2.3em; }
		   tab39 { padding-left: 4.8em; }
		   tab41 { padding-right: 1.7em; }
		   tab42 { padding-left: 4.3em; }
		   tab44 { padding-right: 2.2em; }
		   tab45 { padding-left: 4.8em; }
		   tab47 { padding-right: 2.5em; }
		   tab48 { padding-left: 4.9em; }
		   tab50 { padding-right: 3.0em; }
		   tab51 { padding-left: 4.9em; }
		   tab53 { padding-right: 1.8em; }
		   tab54 { padding-left: 4.9em; }
		   tab56 { padding-right: 2.8em; }
		   tab57 { padding-left: 4.9em; }
		   tab58 { padding-left: 0em; }
		   tab59 { padding-right: 2.8em; }
		   tab60 { padding-left: 4.9em; }
		   tab64 { padding-left: 3.8em; }
           input[type=text], select {
                  position:static;
                  width: 15%;
                  padding: 4px 10px;
                  margin: 4px 0;
                  display: inline-block;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  box-sizing: border-box;
           }
           

           input[type=submit] {
                  width: 15%;
                  background-color: #4CAF50;
                  color: white;
                  padding: 4px 10px;
                  margin: 4px 0;
                  border: none;
                  border-radius: 4px;
                  cursor: pointer;
           }
           
            input[type=date], select {
                  position:static;
                  width: 15%;
                  padding: 4px 10px;
                  margin: 4px 0;
                  display: inline-block;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  box-sizing: border-box;
           }
            input[type=password], select {
                  position:static;
                  width: 15%;
                  padding: 4px 10px;
                  margin: 4px 0;
                  display: inline-block;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  box-sizing: border-box;
           }

            input[type=submit]:hover {
                  background-color: pink;
            }
            
             div {
                   border-radius: 1px;
                   /* background-color: yellow;*/
                   padding: 0.5px;
                  }
             span{
                  color:green;
                  }
                   #header {
    background-color:green;
    color:white;
    text-align:center;
    padding:25px;
}
                  
                   .form-inline > .checkbox {margin-left:5px;margin-right:5px;}
                   .form-inline  .form-control {width:auto;}
                   .form-inline label {margin-right:5px;}
   .nav a{
font-size: 1em
}                  
   </style>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>



<script type="text/javascript">
$(document).ready(function(){

	$("#username").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
			
		 if ( $("#username").val().match('^[a-zA-Z]{3,16}$') ) {
	   	 
			$("#usernameinfo").text("");
	 } else {
		 $("#usernameinfo").text("please enter valid Username");
	 }
		  });

	$("#password").focusout(function(){
		$( this ).find( "span" ).css( "display", "inline" );	
		
	 if ( $("#password").val().match('^[a-zA-Z]{3,16}$') ) {
   	 
		$("#passwordinfo").text("");
 } else {
	 $("#passwordinfo").text("please enter valid Password");
 }
	  });

	 $("#mobileNumber").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#mobileNumber").val().match('^[0-9]{10,16}$') ) {
		   	 
	   		$("#mobileNumberinfo").text("");
	     } else {
	    	 $("#mobileNumberinfo").text("please enter valid number");
	     }
	   	  });

	$("#dob").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
			
		 if ( $("#dob").val() ){
	   	 
			$("#dobinfo").text("");
	 } else {
		 $("#dobinfo").text("please enter DateOfBirth");
	 }
		  });

	 $("#address").focusout(function(){
	   		$( this ).find( "span" ).css( "display", "inline" );	
	   		
	   	 if ( $("#address").val().match('^[a-zA-Z0-9\-\,.@#$%^&*_  ]{3,20}$') ) {
		   	 
	   		$("#addressinfo").text("");
	     } else {
	    	 $("#addressinfo").text("please enter Address");
	     }
	   	  });
	$("#modifiedBy").focusout(function(){
			$( this ).find( "span" ).css( "display", "inline" );	
		
		 if ( $("#modifiedBy").val().match('^[a-zA-Z]{3,16}$')){
	   	 
			$("#modifiedByinfo").text("");
	 } else {
		 $("#modifiedByinfo").text("please enter ModifiedBy");
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
		 $("#usernameinfo").text("please enter username");	
	    	 }
	if (c == null || c == "") {
	    document.getElementById('passwordinfo').style.display = 'inline';	
		 $("#passwordinfo").text("please enter password");	
	    	 }
	 if (l == null || l == "") {
	    	document.getElementById('mobileNumberinfo').style.display = 'inline';
	    	 $("#mobileNumberinfo").text("please enter MobileNumber");
	    }
	if (k == null || k == "") {
		document.getElementById('dobinfo').style.display = 'inline';
		 $("#dobinfo").text("please enter DateOfBirth");
	    }
	 if (j == null || j == "") {
	    	document.getElementById('addressinfo').style.display = 'inline';
	    	 $("#addressinfo").text("please enter Address");
	    }
	if (g == null || g == "") {
		document.getElementById('modifiedByinfo').style.display = 'inline';
		 $("#modifiedByinfo").text("please enter ModifiedBy");
	 	 return false;
	}else{
		return true;
	    }
	}

   </script>
 </head>

  <body>
 <div id="Canvas" style="background-image:url('${resource(dir: "images/", file: "lite.jpg")}');height: 750px; background-size:cover;"><br>
<div id="header">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:link controller="user" action="logout" class="active"><input type="button" align = "right" value="Logout"></g:link>
	
    </div><br><br><br><br><br><br>


   <div>
         <g:form controller="user" align="center" ID="myform" action="saveuser"  nonvalidate="nonvalidate"> 
            <table align="center">
          
         <col width="150">
         <col width="30">
         <col width="150">
         <col width="30">
            
            
            <tr class="fieldgroup">
            <td><label for="username">UserName: </label></td>
            <td><input type="text" id="username" name="username" style="height:27px;width:260px;border-radius:5px"><br>
            <span id=usernameinfo></span></td>
            <td><label for="password">Password: </label></td>
            <td><input type="password" id="password" name="password" style="height:27px;width:260px;border-radius:5px"><br>
            <span id=passwordinfo></span></td></tr>
            
            <tr class="fieldgroup">
            <td><label for="mobileNumber">MobileNumber: </label></td>
            <td><input type="text" id="mobileNumber" name="mobileNumber" style="height:27px;width:260px;border-radius:5px"><br>
            <span id=mobileNumberinfo></span></td>            
            <td><label for="dob">DateOfBirth: </label></td>
            <td><input type="date" id="dob" name="dob" style="height:27px;width:260px;border-radius:5px"><br>
            <span id=dobinfo></span></td></tr>
            
            <tr class="fieldgroup">
            <td><label for="address">Address: </label></td>
            <td><input type="text" id="address" name="address" style="height:27px;width:260px;border-radius:5px"><br>
            <span id=addressinfo></span></td><br>                       
            <td><label for="modifiedBy">ModifiedBy: </label></td>
            <td><input type="text" id="modifiedBy" name="modifiedBy" style="height:27px;width:260px;border-radius:5px"><br>
            <span id=modifiedByinfo></span></td></tr>
            
            <tr class="fieldgroup">
             <td><label for="admin">Admin: </label></td>
            <td><input type="text" id="admin" name="admin" style="height:27px;width:260px;border-radius:5px"><br>
            <span id=admininfo></span></td></tr>
            
            <tr class="fieldgroup">
             <input type="hidden" id="myaction" name="myaction" value="save">
            <input type="hidden" id="mode" name="mode" value="web"> 
            <td></td><td></td>
            <td><input type="submit" ID="btnsave" value="Save" class="submit" onclick="return validateForm()" style="height:27px;width:120px;border-radius:5px"/></td></tr>
           
            
        
         </table>
       </g:form>
    </div>
  </body>
</html>