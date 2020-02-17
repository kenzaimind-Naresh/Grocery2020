<%@ page import="skeleton.Grocery" %>
<!DOCTYPE div PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
function off(){
	
	var cost = document.getElementById('cost').value;
	var offer = document.getElementById('offer').value;
    var total = Number(document.getElementById('total').value);

    x = cost/100*offer;
	document.getElementById('total').value = x;
    
}

</script>

<script type="text/javascript">
$("#categoryName > option").each(function() {

	console.log(this.text + ' ' + this.value);

	//Add operations here

	});

</script>



<style type="text/css">

/* Create two equal columns that floats next to each other */
.fieldcontai {
  float: left;
  width: 50%;
  height: 50px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  clear: both;
}


</style>

<script type="text/javascript">

function getdata() {
  	var groceryName= document.getElementById("groceryName").value
     // alert(testName);
  	var path = "/Skeleton/Grocery/getdata";
  	$.ajax({
  		url : path,
  		type : "get",
  		data :{
  			groceryName : groceryName
  		},
  		success : function(result) {
  			//alert(result);
  		    document.getElementById("categoryName").value =result.split("#")[0];
  		    document.getElementById("cost").value =result.split("#")[1];
  		   
  		},
  		error : function() {
  		}
  	})
  }



  $(function() {
  	

      $("#groceryName").autocomplete({
      	
      	  source:[
      	<g:each in="${result.test}">
      	
          '${it.groceryName}',
             
          </g:each>]
      });
    });






</script>


</head>
<body>



<div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             <div class="form-group">
             <div class="row">
             


<div class="col-md-4 col-sm-4">

  
<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'categoryName', 'error')} required">
	<label for="categoryName">
		<g:message code="category.categoryName.label" default="Category Name" />
		<span id=categoryNameinfo></span>
	</label>
	
	<g:textField name="categoryName" maxlength="50" id="categoryName" class="form-control" required="" />
       
      

</div>
</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'groceryName', 'error')} required">
	<label for="groceryName">
		<g:message code="grocery.groceryName.label" default="Grocery Name" />
	</label>
	<g:textField name="groceryName" maxlength="50" id="groceryName" class="form-control" onfocusout="getdata()" />
		<span id=groceryNameinfo></span>

</div>
</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="grocery.cost.label" default="Cost" />
	</label>
	<g:textField name="cost" maxlength="50" required=""  id="cost" onchange="off()" class="form-control" value="${groceryInstance?.cost}"/>
            <span id=costinfo></span>

</div></div></div></div>



 <div class="form-group">
             <div class="row">
             
<div class="col-md-4 col-sm-4">


<div class="fieldcontai ${hasErrors(bean: groceryInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="grocery.weight.label" default="Weight" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="weight" required="" id="weight" class="form-control" value="${groceryInstance?.weight}"/>
</div><br>
<div class="fieldcontai ${hasErrors(bean: groceryInstance, field: 'weight', 'error')} required">

<select name="weight" required="" id="weight" class="form-control">
  <option>Select</option>
  <option value="grms">Grms</option>
  <option value="kgs">Kgs</option>
  <option value="liter">Liter</option>
</select>

</div>

</div>



<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="grocery.quantity.label" default="Quantity" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="quantity" id="quantity" class="form-control" required="" value="${groceryInstance?.quantity}"/>

</div>


</div>
<div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'offer', 'error')} required">
	<label for="offer">
		<g:message code="grocery.offer.label" default="Offer" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="offer" required="" id="offer" onchange="off()" class="form-control"  value="${groceryInstance?.offer}"/>

</div>

</div>

</div></div>



<div class="form-group">
             <div class="row">
             
             <div class="col-md-4 col-sm-4">

<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="grocery.createDate.label" default="Create Date" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="createDate" required="" id="createDate" class="form-control"  value="${groceryInstance?.createDate}"/>

</div></div>
   <div class="col-md-4 col-sm-4">


<div class="fieldcontain ${hasErrors(bean: groceryInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="grocery.total.label" default="Total" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="total" maxlength="50" required="" id="total"  class="form-control"  value="${groceryInstance?.total}"/>

</div>
</div>


<input type="hidden" id="merchantId" name="merchantId"  value="${result.uname.id}"/>
<input type="hidden" id="merchantshopName" name="merchantshopName"  value="${result.uname.shopName}"/>

<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="myaction" name="myaction" value="saveupdate">
 <input type="hidden" id="mode" name="mode" value="web">
 


</div>
</div>
</div></div></div>
</body>
</html>
