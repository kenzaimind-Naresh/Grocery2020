
    
<input id="autocomplete" type="text"   placeholder="Search For Service" value="" class="search1" required/>
 <button type="submit"><i class="fa fa-search"></i></button>

</div>

<script type="text/javascript">

var source1=[
    	<g:each in="${result.tableData}">
    	
        '${it}',
           
        </g:each>];

$("input#autocomplete").autocomplete({
source: source1,
select: function( event, ui ) { 

}
});



</script>
    