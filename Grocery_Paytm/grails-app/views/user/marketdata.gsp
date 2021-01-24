<!DOCTYPE html>
<html>
<head>



 <link rel="stylesheet" href="/Skeleton/website/css/linearicons.css">
<link rel="stylesheet" href="/Skeleton/website/css/font-awesome.min.css">
<link rel="stylesheet" href="/Skeleton/website/css/themify-icons.css">
<link rel="stylesheet" href="/Skeleton/website/css/bootstrap.css">

<link rel="stylesheet" href="/Skeleton/website/css/nice-select.css">
<link rel="stylesheet" href="/Skeleton/website/css/nouislider.min.css">
<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.css" />
<link rel="stylesheet" href="/Skeleton/website/css/ion.rangeSlider.skinFlat.css" />
<link rel="stylesheet" href="/Skeleton/website/css/magnific-popup.css">
<link rel="stylesheet" href="/Skeleton/website/css/main.css">


   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">    

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type='text/javascript' src="js/jquery.mycart/jquery.mycart.js"></script>




  <script type="text/javascript">

jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});


$(document).ready(function () {
$("#date").datepicker({
        minDate: 0,autoclose: true,
        onSelect:function (){
$("#dateinfo").text("");
   }
    });
    });


function getdata() {
	var quantity= document.getElementById("quantity").value
	var path = "/Skeleton/grocery/getdata";
	$.ajax({
	 url : path,
	 type : "get",
	 data :{
		 quantity : quantity,
	 },
	 success : function(res) {
	 //alert(res.split("#")[1])
	 },
	 error : function() {
	 }
	})
	}
	
	function getavail(name) {
	var name= name;
	var path = "/Skeleton/grocery/getavail";
	$.ajax({
	 url : path,
	 type : "post",
	 data :{
		 name : name
	
	 },
	 success : function(res) {
	 //alert(res);
	$('#qtyvalue').val(res);
	 },
	 error : function() {
	 }
	})
	}
</script>
 
</head>

<body>
<g:render template="/user/userheader"/>
<br><br><br><br><br><br>
<div class="container" >
	<b style="color: brown;font-size: 24px;padding-left: 100px;">${result.merchShop}</b>
    <div class="row">
    	<g:each in="${result.data}" expr="true">
   		<tr>
     		<div class="single-product"  style="padding-left:100px"><br>
				<img src="${createLink(controller:'grocery', action:'showPayload', id:"${it.id}")}" alt=" " style="width:145px;height:128px;" />
				<div class="product-details">
					<h6 class="card-title"><b style="color:black;">${it.groceryName}</b></h6>
					<div class="price">
						<h6>Cost:&#x20b9;${it.cost}</h6>
						<h6>Wgt:${it.weight}</h6><br>
						<h6>Offer:${it.offer}%</h6>
						<h6>T.Amt:&#x20b9;${it.total}</h6>
						<div class="row">
							<g:if test="${it.reducedQuantity>"0"}"><br>
								<a href="#" data-name="${it.groceryName}" data-price="${it.total}" data-quantity="${it.quantity}" data-weight="${it.weight}" data-id="${it.id}" class="add-to-cart genric-btn info circle" style="font-size: 15px;">Add to Cart</a>&nbsp;&nbsp;
    						</g:if> 
    						<g:else>
    							<button class="genric-btn danger circle" style="font-size: 17px;" disabled="disabled">Out of Stock</button>&nbsp;&nbsp;
    						</g:else>
    					</div>
					</div>
				</div>
			</div>
        </tr>
    	</g:each>
   </div>
</div>

 <!-- Modal -->
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
   
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cart</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="show-cart table">
         
         
        </table>
        <div>Total price: &#x20b9;<span class="total-cart"></span></div>
      </div>
           
             
<g:form  role="form" controller="address" Id="myform" name="myform" action="checkout" >

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 signin-pdtop">
             <div class="form-group">
             

 <input type="hidden"  name="gname" id="gname"/>
<input type="hidden" name="gprice" id="gprice"/>
 <input type="hidden" name="tcount" id="tcount"/>
 <input type="hidden" name="tamount" id="tamount"/>
 <input type="hidden" name="grocid" id="grocid"/>
       <input type="hidden"  name="qCount" id="qCount"/>
	   <input type="hidden"  name="qtyvalue" id="qtyvalue"/>
	     <input type="hidden"  name="eetest" id="eetest"/>
   
 
</div>
</div>

</div>

<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="mode" name="mode" value="web"/>
<input type="hidden" id="myaction" name="myaction" value="save"/>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
<input type="submit" id="btnsave" value="Check out" class="btn btn-primary" />

</div>
</g:form>
     
   
     
    </div>
  </div>
</div>




  <script type="text/javascript">
  // ************************************************
// Shopping Cart API
// ************************************************

var shoppingCart = (function() {
  // =============================
  // Private methods and propeties
  // =============================
  cart = [];
 
  // Constructor
  function Item(name, price, count,weight,quantity, id) {
    this.name = name;
    this.price = price;
    this.count = count;
    this.weight = weight;
	this.quantity = quantity;
	this.id = id;
    
  }
 
  // Save cart
  function saveCart() {
    sessionStorage.setItem('shoppingCart', JSON.stringify(cart));
	sessionStorage.setItem("merchantName",'${result.merchShop}');
	
  }

 //alert("in session "+marchantTest);
 //alert("in from controller "+'${result.merchShop}');
   var marchantTest=sessionStorage.getItem("merchantName");
  if(marchantTest=='${result.merchShop}'){
  if (sessionStorage.getItem("shoppingCart") != null) {
    loadCart();
  }
  // sessionStorage.setItem('shoppingCart', null);
 }

 
    // Load cart
  function loadCart() {
    cart = JSON.parse(sessionStorage.getItem('shoppingCart'));
  }



  // =============================
  // Public methods and propeties
  // =============================
  var obj = {};
 
  // Add to cart
  obj.addItemToCart = function(name,price,count,weight,quantity,id) {
  // getavail(name);
    for(var item in cart) {
      if(cart[item].name === name) {
	 //alert("count in cart" +cart[item].count);
	  //alert("quantity "+quantity);
	  //getavail(name);
	  setTimeout(function(){ 
		$("#eetest").val("time pass");
	  }, 2000);
	  var qtytotal=$("#qtyvalue").val();
	  
	//alert("from ajax"+qtytotal);
	//alert("count is "+cart[item].count);
	  if(cart[item].count<Number(quantity)){	  
        cart[item].count ++;
		cart[item].quantity=quantity;
		saveCart();
        return;
		}else{
		alert("Quantity not available at Store");
		return;
		}
      }
    }
    var item = new Item(name, price, count,weight,quantity,id);

    cart.push(item);
    saveCart();
  }


  // Set count from item
  obj.setCountForItem = function(name, count) {
    for(var i in cart) {
      if (cart[i].name === name) {
        cart[i].count = count;
        break;
      }
    }
  };
  // Remove item from cart
  obj.removeItemFromCart = function(name) {
      for(var item in cart) {
        if(cart[item].name === name) {
          cart[item].count --;
          if(cart[item].count === 0) {
            cart.splice(item, 1);
          }
          break;
        }
    }
    saveCart();
  }

  // Remove all items from cart
  obj.removeItemFromCartAll = function(name) {
    for(var item in cart) {
      if(cart[item].name === name) {
        cart.splice(item, 1);
        break;
      }
    }
    saveCart();
  }

  // Clear cart
  obj.clearCart = function() {
    cart = [];
    saveCart();
  }

  // Count cart
  obj.totalCount = function() {
    var totalCount = 0;
    for(var item in cart) {
      totalCount += cart[item].count;
    }
    return totalCount;
  }

  //gname
  obj.gname = function(){
var gname = [];
alert("gname "+gname)
 for(var item in cart){
    gname += cart[item].name+"00"+cart[item].count+"#";
}
 return gname

 }

//Quantity Count
  obj.qCount = function() {
    var qCount =0;
    for(var item in cart) {
    	if(cart[item].name !=null){
    		qCount ++;
        		}     
      }
    return qCount;
  }
  
 
  // price
  obj.gprice = function(){
var gprice = [];
for(var item in cart){
gprice += cart[item].price+"#";
}
return gprice

 }

  //grocid
  obj.grocid = function(){
var grocid = [];
alert("groceryId "+grocid);
for(var item in cart){
	grocid += cart[item].id+"#";
}
return grocid
	  }
 
  // Total cart
  obj.totalCart = function() {
    var totalCart = 0;
    for(var item in cart) {
      totalCart += cart[item].price * cart[item].count;
    }
    return Number(totalCart.toFixed(2));
  }

  // List cart
  obj.listCart = function() {
    var cartCopy = [];
    for(i in cart) {
      item = cart[i];
      itemCopy = {};
      for(p in item) {
        itemCopy[p] = item[p];

      }
      itemCopy.total = Number(item.price * item.count).toFixed(2);
      cartCopy.push(itemCopy)
    }
    return cartCopy;
  }

 
 
  // cart : Array
  // Item : Object/Class
  // addItemToCart : Function
  // removeItemFromCart : Function
  // removeItemFromCartAll : Function
  // clearCart : Function
  // countCart : Function
  // totalCart : Function
  // listCart : Function
  // saveCart : Function
  // loadCart : Function
  return obj;
})();


// *****************************************
// Triggers / Events
// *****************************************
// Add item
$('.add-to-cart').click(function(event) {
  event.preventDefault();
  var name = $(this).data('name');
  var price = Number($(this).data('price'));
  var quantity=Number($(this).data('quantity'));
  var id =Number($(this).data('id'));

  //alert("first avail qty on db"+quantity);
  alert("first groceryId on db"+id);
  shoppingCart.addItemToCart(name,price,1,1,quantity,id);
  displayCart();
});

//Clear items
$('.clear-cart').click(function() {
	shoppingCart.clearCart();
	displayCart();
});


// data-id='"+ cartArray[i].id +"'
function displayCart() {
  var cartArray = shoppingCart.listCart();
  var output = "";
  for(var i in cartArray) {
    output += "<tr>"
      + "<td>" + cartArray[i].name + "</td>"
      + "<td>(" + cartArray[i].price + ")</td>"
      + "<td><div class='input-group'><button class='minus-item input-group-addon btn btn-primary' data-name='" + cartArray[i].name + "'>-</button>"
      + "<input type='text' class='item-count form-control' data-name='" + cartArray[i].name + "' value='" + cartArray[i].count + "'x` readonly>"
      + "<button class='plus-item btn btn-primary input-group-addon' data-name='" + cartArray[i].name + "' data-quantity='" + cartArray[i].quantity +"' data-price='"+cartArray[i].price+    "'>+</button></div></td>"
      + "<td><button class='delete-item btn btn-danger' data-name='" + cartArray[i].name + "'>X</button></td>"
      + " = "
      + "<td>" + cartArray[i].total + "</td>"
      +  "</tr>";
  }

 
 
  $('.show-cart').html(output);
  $('.total-cart').html(shoppingCart.totalCart());
  //alert(shoppingCart.totalCart());
  if(shoppingCart.totalCart()==0){
  
  $('#btnsave').hide();
  }else{
   $('#btnsave').show();
  }
  $('.total-count').html(shoppingCart.totalCount());

  $('.qCount').html(shoppingCart.qCount());
  
  $("#qCount").val(shoppingCart.qCount());

  $("#gname").val(shoppingCart.gname());
  $("#tamount").val(shoppingCart.totalCart());
  $("#tcount").val(shoppingCart.totalCount());
 
  $("#gprice").val(shoppingCart.gprice());
  $("#grocid").val(shoppingCart.grocid());
  alert(shoppingCart.grocid());
}

// Delete item button

$('.show-cart').on("click", ".delete-item", function(event) {
  var name = $(this).data('name');
  
  shoppingCart.removeItemFromCartAll(name);
  displayCart();
})

 
// -1
$('.show-cart').on("click", ".minus-item", function(event) {
  var name = $(this).data('name')
  shoppingCart.removeItemFromCart(name);
  displayCart();
})
// +1
$('.show-cart').on("click", ".plus-item", function(event) {
  var name = $(this).data('name');
  var quantity = Number($(this).data('quantity'));
  var price = Number($(this).data('price'));
  var id =Number($(this).data('id'));
// alert("name at pop"+name);
 
  shoppingCart.addItemToCart(name,price,1,1,quantity,id);
  displayCart();
})

// Item count input
$('.show-cart').on("change", ".item-count", function(event) {
   var name = $(this).data('name');
   //alert(name);
   var count = Number($(this).val());
   
  shoppingCart.setCountForItem(name, count);
  displayCart();
});

displayCart();

 </script>
 
<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:black;
   color: white;
   text-align: center;
}

a {
 // color: white;
}
a:hover {
  //color: white;
}


</style>

<br><br>
<div class="footer ">
<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>  
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong style="color: blue;"> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong>Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
</div>

	           

</body>
</html>