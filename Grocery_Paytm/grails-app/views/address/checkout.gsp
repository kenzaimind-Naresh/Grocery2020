
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


<style type="text/css">  

 
     .search-form-wrapper {
    display: none;
    position: absolute;
   width: 100%;
    left: 0;
    right: 0;
    padding-left: 470px;
    padding-right:470px;
}
.search-form-wrapper.open {
    display: block;
}
     

</style>	


    <script type="text/javascript">
    $( document ).ready(function() {
    	$('[data-toggle=search-form]').click(function() {
    	    $('.search-form-wrapper').toggleClass('open');
    	    $('.search-form-wrapper .search').focus();
    	    $('html').toggleClass('search-form-open');
    	  });
    	  $('[data-toggle=search-form-close]').click(function() {
    	    $('.search-form-wrapper').removeClass('open');
    	    $('html').removeClass('search-form-open');
    	  });
    	$('.search-form-wrapper .search').keypress(function( event ) {
    	  if($(this).val() == "Search") $(this).val("");
    	});

    	$('.search-close').click(function(event) {
    	  $('.search-form-wrapper').removeClass('open');
    	  $('html').removeClass('search-form-open');
    	});
		
		

    	});



    </script>  
    

<script>

$(function() {
	

    $("#groceryName").autocomplete({
    	
    	  source:[
    	<g:each in="${groceryInstanceList}">
    	
        '${it.groceryName}',
           
        </g:each>]
    });
  });


</script>

<script>
history.pushState({ page: 1 }, "Title 1", "#no-back");
window.onhashchange = function (event) {
  window.location.hash = "no-back";
};

function orderCheck(){

	var grandTotal= document.getElementById("grandTotal").value;
	var minPrice = 200;

	if(parseInt(grandTotal)>minPrice){
		return true;
	}
	else{
		event.preventDefault();
		alert("Order payment should be more than Rs.200");
		location.href = "/Skeleton/user/marketdata";
		return;
		}
}

</script>

<style>


form.example input[type=text] {
  padding: 5px;
  font-size: 15px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: white;
}

form.example button {
  float: left;
  width: 20%;
  padding: 4px;
  background: orange;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>

</head>
<body>

<g:render template="/user/userheader2"/>

<!-- start product Area -->
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
			
			<div class="row">
<div class="col">
<div class="block">
<g:each in="${groceryInstanceList}" status="i" var="groceryInstance">
<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

<div class="col-lg-3 col-md-6">
						<div class="single-product">
							
				 <g:link controller="grocery" class="show" action="show" resource="${groceryInstance}"><img src="${createLink(controller:'grocery', action:'showPayload', id:"${groceryInstance.id}")}" alt=" " style="width:135px;height:128px;" /></g:link>
							<div class="product-details">
							
								<h6 class="card-title">${fieldValue(bean: groceryInstance, field: "groceryName")}</h6>
								<div class="price">
								
									<h6>Cost:&#x20b9;${fieldValue(bean: groceryInstance, field: "cost")}</h6>
									<h6>Wgt:${fieldValue(bean: groceryInstance, field: "weight")}</h6>
									<h6>Offer:${fieldValue(bean: groceryInstance, field: "offer")}%</h6>
									<h6>T.Amt:&#x20b9;${fieldValue(bean: groceryInstance, field: "total")}</h6>
									<h6>Shop Name:${fieldValue(bean: groceryInstance, field: "merchantshopName")}</h6><br>	
								</div>
							</div>
						</div>
					</div>
				</tr>
				</g:each>
			</div>
		</div>
	</div>
</div>
</div>
						
	<!-- end product Area -->

	<style>
	.modal {
  visibility: hidden;
  color:white
}
	
	</style>	
		
<script type="text/javascript">
 // $('#modal fade').modal('hide');

</script>
			
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
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <g:link controller="address" action="create" ><button type="button" class="btn btn-primary">Order now</button></g:link>
      </div>
    </div>
  </div>
</div> 

<!--================Order Details Area =================-->
<g:form  role="form" controller="cart" Id="myform" name="myform" action="save">
	<section class="order_details section_gap">
		<div class="container">
			<h2 class="title_confirmation">${result.message}</h2>
			<div class="order_details_table">
				<h2>Order Details</h2>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"><h5>Grocery Name</h5></th>
								<th scope="col"><h5>Quantity x Price</h5></th>
								<th scope="col"><h5>Total</h5></th>
							</tr>
						</thead>
						<tbody>
						<g:each in="${result.result.cartList}" expr="true">
							<tr>
								<td>
									<h5>${it.gname.split("00")[0]}</h5>
								</td>
								<td>
									<h5>${it.gname.split("00")[1]} X ${it.gprice}</h5>
								</td>
								<td>
									<h5>${it.tcount}</h5>
								</td>
							</tr>
						</g:each>
							<tr>
								<td>
									<h5 style="color: brown;">Grand Total</h5>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<h5 style="color: brown;">${result.result.totAmt}</h5>
								</td>
							</tr>
						</tbody>
					</table>
				</div><br>
				<g:link controller="user" action="marketdata"><button type="button"  class="genric-btn primary circle" style="font-size: 15px;">Add More</button></g:link>
				<input type="submit" ID="btnsave" onclick="orderCheck()" value="Order now" class="genric-btn primary circle" style="font-size: 15px;"/>
			</div>
		</div>
	</section>
<input type="hidden" name="gname" id="gname"/>
<input type="hidden" name="gprice" id="gprice"/>
<input type="hidden" name="tcount" id="tcount"/>
<input type="hidden" name="tamount" id="tamount"/>
<input type="hidden"  name="qCount" id="qCount"/>
 <input type="hidden" name="groceryId" id="groceryId"/>

<input type="hidden" id="usercartId" name="usercartId" value="${result.uname.id}"/>
<input type="hidden" id="grandTotal" name="grandTotal" value="${result.result.totAmt}" />

<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
<input type="hidden" id="mode" name="mode" value="web"/>
<input type="hidden" id="myaction" name="myaction" value="save"/>

</g:form>
	<!--================End Order Details Area =================-->
              
   	
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
  function Item(name, price, count) {
    this.name = name;
    this.price = price;
    this.count = count;
  }
  
  // Save cart
  function saveCart() {
    sessionStorage.setItem('shoppingCart', JSON.stringify(cart));
  }
  
    // Load cart
  function loadCart() {
    cart = JSON.parse(sessionStorage.getItem('shoppingCart'));
  }
  if (sessionStorage.getItem("shoppingCart") != null) {
    loadCart();
  }
  

  // =============================
  // Public methods and propeties
  // =============================
  var obj = {};
  
  // Add to cart
  obj.addItemToCart = function(name, price, count) {
    for(var item in cart) {
      if(cart[item].name === name) {
        cart[item].count ++;
        saveCart();
        return;
      }
    }
    var item = new Item(name, price, count);
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
 for(var item in cart){
    gname += cart[item].name+"00"+cart[item].count+"#";
	 }
    return  gname
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
    //grocid
  obj.grocid = function(){
var grocid = [];
//alert("groceryId "+grocid);
for(var item in cart){
	grocid += cart[item].id+"#";
}
return grocid
	  }
  // price 
  obj.gprice = function(){
		var gprice = [];
		for(var item in cart){
		gprice += cart[item].price+"#";
		//result = gprice.split("#");
			} 
		return gprice

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
  shoppingCart.addItemToCart(name, price, 1);
  displayCart();
});

// Clear items
$('.clear-cart').click(function() {
	shoppingCart.clearCart();
  displayCart();
});


function clearCart() {
	alert("clear");
	sessionStorage.clear('shoppingCart');

}

function displayCart() {
  var cartArray = shoppingCart.listCart();
  var output = "";
  for(var i in cartArray) {
    output += "<tr>"
      + "<td>" + cartArray[i].name + "</td>" 
      + "<td>(" + cartArray[i].price + cartArray[i].count+")</td>"
      + "<td><div class='input-group'><button class='minus-item input-group-addon btn btn-primary' data-name=" + cartArray[i].name + ">-</button>"
      + "<input type='number' class='item-count form-control' data-name='" + cartArray[i].name + "' value='" + cartArray[i].count + "'>"
      + "<button class='plus-item btn btn-primary input-group-addon' data-name=" + cartArray[i].name + ">+</button></div></td>"
      + "<td><button class='delete-item btn btn-danger' data-name=" + cartArray[i].name + ">X</button></td>"
      + " = "
      + "<td>" + cartArray[i].total + "</td>" 
      +  "</tr>";
  }

  
  $('.show-cart').html(output);
  $('.total-cart').html(shoppingCart.totalCart());
  $('.total-count').html(shoppingCart.totalCount());

 $('.qCount').html(shoppingCart.qCount());
  
  $("#qCount").val(shoppingCart.qCount());

  $('.g-name1').html(shoppingCart.gname());
  $('.g-price1').html(shoppingCart.gprice());
  $('.g-tcount1').html(shoppingCart.totalCount());
  $('.g-tamount1').html(shoppingCart.totalCart());
  

  $("#gname").val(shoppingCart.gname());
  $("#tamount").val(shoppingCart.totalCart());
  $("#tcount").val(shoppingCart.totalCount());
  $("#groceryId").val(shoppingCart.grocid());
  
  $("#gprice").val(shoppingCart.gprice());
  
}

// Delete item button

$('.show-cart').on("click", ".delete-item", function(event) {
  var name = $(this).data('name')
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
  var name = $(this).data('name')
  shoppingCart.addItemToCart(name);
  displayCart();
})

// Item count input
$('.show-cart').on("change", ".item-count", function(event) {
   var name = $(this).data('name');
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
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong>Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
</div>

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="/Skeleton/website/js/vendor/bootstrap.min.js"></script>
	<script src="/Skeleton/website/js/jquery.ajaxchimp.min.js"></script>
	<script src="/Skeleton/website/js/jquery.nice-select.min.js"></script>
	<script src="/Skeleton/website/js/jquery.sticky.js"></script>
	<script src="/Skeleton/website/js/nouislider.min.js"></script>
	<script src="/Skeleton/website/js/countdown.js"></script>
	<script src="/Skeleton/web-app/website/js/jquery.magnific-popup.min.js"></script>
	<script src="/Skeleton/website/js/owl.carousel.min.js"></script>
	           

</body>
</html>

		
    
          	