
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
  padding-left: 50px;
}

form.example button {
  float: left;
  width: 20%;
  padding: 4px;
  border-radius: 22px;
  background: #ffa600;
  color: white;
  font-size: 17px;
  border: 1px solid orange;
  cursor: pointer;
}

form.example button:hover {
  background: white;
  color: #ffa600;
  border: 1px solid orange;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>


<style>



/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  
}

/* Modal Content */
.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  border: 1px solid #888;
  width: 80%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
  
}

/* Add Animation */
@-webkit-keyframes animatetop {

  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {

  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}


.modal-header {
  background-color: #5cb85c;
}

.modal-body {
padding: 2px 16px;


}



.overlay {
  position: absolute;
  top: 60px;
  left: 0;
  width: 80%;
  height: 60%;
  background-color: white(0,0,0,0.88);
    padding-left:350px;
  
}

</style>

</head>
<body>
<g:render template="/user/userheader2"/>
 
	<br><br><br><br><br>		

<!-- The Modal -->
<div id="myModal"  class="overlay">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header"><br><br>
    <div class="row">
      <h3 style="color: white;  padding-left:100px">Welcome to Online Store</h3>
      
      <h3 style="color: white; padding-left:100px">Book your Order by Area  Wise</h3> 
       </div>
    </div>
           
    <br><br>
<div align="center">
<g:form class="example" action="searchlocation" controller="merchant" method="GET" style="width:500px">			
  <div class="row">
  <input type="text" name="city" id="city" class="form-control" required=""  placeholder="Enter Location.."> <br><br><br>
  </div>
 
  <div align="center" style="padding-left:140px">
  <button type="submit" class="form-control" class="btn btn-primary" style="width: 40%;">Proceed</button>
    
    </div>
</g:form>

</div>
 
    
    <br><br>
   

</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>




<script>
$(function() {
	

    $("#city").autocomplete({
    	
    	  source:[
    	<g:each in="${result.city}">
    	
        '${it.city}',
           
        </g:each>]
    });
  });

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

 <!-- Modal Start-->
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
        		<table class="show-cart table"></table>
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
   					</div>
				</div>
			</div>
			<input type="hidden" id="modifiedBy" name="modifiedBy" value="self"/>
			<input type="hidden" id="mode" name="mode" value="web"/>
			<input type="hidden" id="myaction" name="myaction" value="save"/>
			<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<input type="submit" ID="btnsave" value="Check out" class="btn btn-primary" />
			</div>
			</g:form>
  		</div>
 	</div>
</div>
<!-- Modal End -->
    
<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

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
    gname += cart[item].name+"#";
}
 return gname

 }
 
  // price
  obj.gprice = function(){
var gprice = [];
for(var item in cart){
gprice += cart[item].price+"#";
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

//Clear items
$('.clear-cart').click(function() {
	shoppingCart.clearCart();
	displayCart();
});


<%--function clearCart() {--%>
<%--	alert("clear");--%>
<%--	sessionStorage.clear('shoppingCart');--%>
<%----%>
<%--}--%>



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

 

  $("#gname").val(shoppingCart.gname());
  $("#tamount").val(shoppingCart.totalCart());
  $("#tcount").val(shoppingCart.totalCount());
 
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
<a href="http://www.kenzaimindapps.in/" target="_blank"><strong style="color: blue;"> Kenzaimind Info Solutions</strong></a> | All rights reserved </p>
<p> <a href="/Skeleton/user/paytmTerms" target="_blank"><strong style="color: blue;">Paytm</strong></a> Privacy Policies | Terms & Conditions </p>
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