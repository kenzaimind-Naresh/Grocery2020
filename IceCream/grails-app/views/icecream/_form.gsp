


<script>


function medical(){
}
</script>




<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="jewelleryName">Medicine Name :</label>
<input type="text" id="jewelleryName" name="jewelleryName" class="form-control" value="${createmedicineInstance?.jewelleryName}" required />
 <span id="medicneNameinfo" style="color:red"></span>
</div>


<div class="col-md-4 col-sm-4">
<label for="wholesalePrice">Wholesale Price :</label>
<input type="text" id="wholesalePrice" name="wholesalePrice" class="form-control" value="${createmedicineInstance?.wholesalePrice}"  />
 <span id="wholesalePriceinfo" style="color:red"></span>
</div>



<div class="col-md-4 col-sm-4">
<label for="retailPrice"> Retail Price :</label> 
<input type="text" id="retailPrice" name="retailPrice" class="form-control" value="${createmedicineInstance?.retailPrice}" />
 <span id="retailPriceinfo" style="color:red"></span>
</div></div>



<div class="form-group">
<div class="col-md-4 col-sm-4">
<label for="mQuantity">Quantity :</label>
<input type="text" id="mQuantity" name="mQuantity" class="form-control" value="${createmedicineInstance?.mQuantity}"/>
 <span id="mQuantityinfo" style="color:red"></span>
</div>

<div class="col-md-4 col-sm-4">
<label for="totalAvailable">Available :</label>
<input type="text" id="totalAvailable" name="totalAvailable" class="form-control" value="${createmedicineInstance?.totalAvailable}"/>
 <span id="totalAvailableinfo" style="color:red"></span>
</div>

<div class="col-md-4 col-sm-4">
<label for="createdBy">CreatedBy :</label>
<input type="text" id="createdBy" name="createdBy" class="form-control" value="${createmedicineInstance?.createdBy}" />
 <span id="createdByinfo" style="color:red"></span>
</div>


</div>