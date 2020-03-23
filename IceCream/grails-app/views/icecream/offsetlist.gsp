<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
<title>CCTVService List</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
 <link rel="stylesheet" type="text/css" href="/dashboard/webapp/Finance/css/bootstrap-grid.css">
<link rel="stylesheet" type="text/css" href="/dashboard/webapp/Finance/css/bootstrap-grid.min.css">
<link rel="stylesheet" type="text/css" href="/dashboard/webapp/Finance/css/bootstrap.css"> 
  <style>
     td{
  color:black;
  font-size:13px;
  width:400px;
  }
  
  .ui-autocomplete { height: 200px; overflow-y: scroll; overflow-x: hidden;}
  </style>



</head>

<body>
 <g:render template="/cctvservice/adminviewlist"/>
 <div class="container signin">
       <div class="row">
            <div class="col-xs-9 col-sm-6 col-md-4">
                <h3>CCTVService List <b style="font-size:11px">
                (No of Cctvservice Registered = ${result.totalcount })</b></h3>
            </div>
            <div class="col-xs-3 col-sm-6 col-md-8">
                <i class="fa fa-archive pull-right dashicon"></i>
            </div>
        </div> 
  <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
 <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover">
      <thead>
      <tr>
       <th style="color:black">ccName</th>
        <th style="color:black">ccType</th>
      <th style="color:black">price</th>
      <th style="color:black">quantity</th>
      <th style="color:black">model</th>
	  <th style="color:black">serviceType</th>
	  <th style="color:black">serviceDate</th>
	   <th style="color:black">createdBy</th>
	   <th style="color:black">dateCreated</th>
	  	          </tr>
      </thead>
       <g:findAll in="${result.cctvdata}" expr="true">
     <tbody>
      <tr>
       <td>${it.ccName }</td>
        <td>${it.ccType }</td>
       <td>${it.price }</td>
      <td>${it.quantity}</td>
      <td>${it.model}</td>
       <td>${it.serviceType}</td>
	  <td>${it.serviceDate}</td>
	   <td>${it.createdBy}</td>
	    <td>${it.dateCreated}</td>
	    
      </tr>
      </tbody>
      </g:findAll>
      </table>
      </div>
       <div class="form-group">
     <div class="col-sm-12 text-right">
       <g:if test="${result.offset > 0}">
     <button class="btn btn-primary"><g:link type="button" style="color:&#8249;" controller="cctvrepair" action="offsetlist" params="${[offset:result.offset-5]}" value="Previous">Previous</g:link></button>
    </g:if>
  
    <g:if test="${result.offset/5 < (result.totalcount)/5-1}">
     <button class="btn btn-primary"> <g:link type="button" style="color:&#8249;" controller="cctvrepair" action="offsetlist"   params="${[offset: result.offset+5]}" value="Next" >Next</g:link></button>
       </g:if>
        
      </div></div></div></div></div></div>
      <style>
     .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:#696969;
   color: white;
   text-align: center;
}
</style>
</head>

</body>
</html>
      
      
