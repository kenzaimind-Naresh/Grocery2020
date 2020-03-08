<html>
<head>
<title>Solr Search</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <style>
  span{
  color:Crimson;
  }
  
  .ui-autocomplete { height: 200px;width: 200px; overflow-y: scroll; overflow-x: hidden;}
  </style>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Core CSS - Include with every page -->
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/plugins/bootstrap', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/font-awesome/css', file: 'font-awesome.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/plugins/pace', file: 'pace-theme-big-counter.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'hospitalmgnt/assets/css', file: 'main-style.css')}" type="text/css">
      <!-- Core Scripts - Include with every page -->
<script src="${resource(dir: 'hospitalmgnt/assets/plugins', file: 'jquery-1.10.2.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/bootstrap', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/metisMenu', file: 'jquery.metisMenu.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/plugins/pace', file: 'pace.js')}"></script>
<script src="${resource(dir: 'hospitalmgnt/assets/scripts', file: 'siminta.js')}"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
<script type="text/javascript">
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};
</script>

<script type="text/javascript">
function validateForm() {
	var city = document.forms["myform"]["city"].value;
	if (city.trim() == null || city.trim() == "") {
	    document.getElementById('cityinfo').style.display = 'inline';	
		 $("#cityinfo").text("Please Select City");	
		 return false;
	}	
}
</script>
<script type="text/javascript">
$(function() {
	
    $("#city").autocomplete({
       source:[
               <g:each in="${result.solrresult.solrdata}">
               
               '${it}', 
           
        </g:each>]
    });
  });
</script>
 
</head>

<body>

 <!--  wrapper -->
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
               <a class="navbar-brand" href="/HospitalMgnt/user/solrSearch">
                    <strong	style="color:white;font-size:20px;">SOLR SEARCH</strong>
                </a>
            </div>
            <!-- end navbar-header -->

        </nav>
<br><br><br><br>

 <g:form Id="myform" name="myform" controller="user" action="solrSearchinfo">
    <div class="row" align="center">
        <div class="col-md-12" >
		<!--<div style="font-size:20px;padding-right:320px"><b>Solr Search</b></div>-->
           <div class="form-group">
		<div class="box-tools">
		<!--<label style="padding-right:400px">City: </label>-->
                <div class="input-group input-group-sm" style="width: 150px;">
					
					<input type="text" id="city" class="form-control pull-right" placeholder="Search by City"
						name="city" style="height: 30px; width: 400px; border-radius: 5px"/>
						<div class="input-group-btn">
						<button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-search" onclick="return validateForm()" onclick="return check()"></i></button>
						  </div>
		</div></div>
						<span id="cityinfo"></span></div></div></div>
						
	<input type="hidden" id="mode" name="mode" value="web">
	</g:form>
 	<table class="table table-hover" style="max-width:832px" align="center">
              			<tbody>
					   <g:each in="${result.solrcity.solrdata}" expr="true">
					   <tr>
					  <td><i class="fa fa-tint" style="color:#E8053A"></i><b> ${it.provider_name}</b><br>
					 	${it.city }<br><br>
					 	Location:&nbsp;&nbsp;&nbsp;<small>${it.house_number },${it.landmark_1},${it.city },${it.state }</small><br>
						Email:&nbsp;&nbsp;&nbsp;<small>${it.email_1}</small>
					  </td>
					  </tr>
					  </g:each>
					  </tbody>
					  </table>
</body>
</html>

