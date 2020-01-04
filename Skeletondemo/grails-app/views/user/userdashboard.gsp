
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

   	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/Skeleton/user/userdashboard"><img src="/Skeleton/website/img/logo12.jpg" alt=""></a>
					 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				
			
					<div class="collapse navbar-collapse offset" >
	
						<ul class="nav navbar-nav menu_nav ml-auto" style="padding-top:30px">
  				
  							<g:form class="example" action="search" controller="user" method="GET" style="width:500px">			
  <input type="text" name="groceryName" id="groceryName" placeholder="Search..">
  <button type="submit"><i class="fa fa-search"></i></button>
</g:form>&emsp;&emsp;&emsp;&emsp;
  				
							<li class="nav-item active"><a class="nav-link" href="/Skeleton/user/userdashboard"  style="color:black">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop </a>
								
							</li>
							
							<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
							
							<li class="fa fa-shopping-cart" style="font-size:15px; padding-top:10px" data-toggle="modal" data-target="#cart">(<span class="total-count"></span>)</li>
							&emsp;&emsp;
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="userName-md"></span><i class="fa fa-user" style="font-size:20px;"></i></a>
								<ul class="dropdown-menu">
								<li><g:link controller="user" action="updateuser" class="active"  style="color:	#DAA520;"><i class="fa fa-user"></i> Profile</g:link></li>
								<li><g:link controller="user" action="changepass" class="active" style="color:	#DAA520;"><i class="fa fa-key"></i> ChangePassword</g:link></li>
								<li><g:link controller="user" action="myorders" class="active"  style="color:	#DAA520;"><i class='fa fa-cart-arrow-down'></i> My Orders </g:link></li>
								<li><a href="/Skeleton/user/logout" style="color: #DAA520;"><i class="fa fa-sign-out fa-fw"></i> Logout</a>

								</ul>
							</li>
								
																				
						</ul>
						
						
					</div>
				</div>
				
			
			</nav>
		</div>
		
	</header>
	<!-- End Header Area -->
	<br><br><br><br><br>		

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
								<div class="row">		
<%--								<form class="add-to-cart" action="/Skeleton/address/checkout.gsp" method="post">--%>
<%--								<g:link controller="address" class="show" resource="${cartInstance}" data-name="${fieldValue(bean: groceryInstance, field: "groceryName")}" data-price="${fieldValue(bean: groceryInstance, field: "total")}">--%>
<%--								<button type="submit"  class="btn btn-info">Add To Cart</button>--%>
<%--								</g:link>--%>
<%--								</form>	--%>
								
								<a href="/Skeleton/address/checkout" data-toggle="modal" data-target="#cart" data-name="${fieldValue(bean: groceryInstance, field: "groceryName")}" data-price="${fieldValue(bean: groceryInstance, field: "total")}" class="add-to-cart btn btn-primary">Add to Cart</a>
<%--   							  	<g:link controller="address" class="add-to-cart" action="checkout" resource="${cartInstance}" data-name="${fieldValue(bean: groceryInstance, field: "groceryName")}" data-price="${fieldValue(bean: groceryInstance, field: "total")}"><button type="submit"  class="btn btn-info">Add To Cart</button></g:link>--%>
								  &emsp;<g:link controller="grocery" class="show" action="show" resource="${groceryInstance}"><button type="submit"  class="btn btn-info">Details</button></g:link>
									</div>
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
						<p><a href="/Skeleton/user/userdashboard1" style="position:fixed;color:red;padding-left:800px;"><button type="submit"  class="btn btn-primary" style="width:250px;font-size: 20px;">Loading More</button></a></p>	
	
	<!-- end product Area -->

				
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
        <div>Total price: &#x20b9; <span class="total-cart"></span></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <g:link controller="address" action="checkout" ><button type="button" class="btn btn-primary">Check Out</button></g:link>
      </div>
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


function displayCart() {
  var cartArray = shoppingCart.listCart();
  var output = "";
  for(var i in cartArray) {
    output += "<tr>"
      + "<td>" + cartArray[i].name + "</td>" 
      + "<td>(" + cartArray[i].price + ")</td>"
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
  color: white;
}
a:hover {
  color: white;
}


</style>


<div class="footer">
<div align="center">
<p>Copyright  <a href="http://www.kenzaimindapps.in/" target="_blank"><strong> Kenzaimind Info Solutions</strong></a> All rights reserved.</p> 
<p>
</div>
</div>

</body>
</html>