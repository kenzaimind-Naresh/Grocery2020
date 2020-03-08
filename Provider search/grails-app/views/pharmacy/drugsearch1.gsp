<html>
<head>

 <script type="text/javascript">
$(function() {
	
    $("#locality").autocomplete({
       source:[
               <g:each in="${result.locality}">
               
               '${it}', 
           
        </g:each>]
    });

    $("#drugName").autocomplete({
        source:[
                <g:each in="${result.drugName}">
                
                '${it}', 
            
         </g:each>]
     });
  });


jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});

</script>
 
 <style type="text/css">
 table tr {
    cursor: pointer;
}

 .ui-autocomplete { height: 200px; width: 200px;overflow-y: scroll; overflow-x: hidden;}
 </style>

<script>
function myFunction() {
var elmnt = document.getElementById("content");
elmnt.scrollIntoView();
}
</script>

</head>


<body>

<div class="tab-pane fade in active" id="drug">
                              <g:form class="form-signin text-center" role="form" id="myform" name="myform" controller="pharmacy" action="drugSearchinfo">
                                   <input class="form-control" id="drugName" name="drugName" type="text" placeholder="Search by DrugName"/>
                                    <input class="form-control" id="locality" name="locality" type="text" placeholder="Search by Locality"/>
						             <input type="hidden" id="mode" name="mode" value="web">
                                     <button class="btn btn-primary " name="submit" type="submit">Submit</button>
                                </g:form>
                            </div>

</body>



</html>