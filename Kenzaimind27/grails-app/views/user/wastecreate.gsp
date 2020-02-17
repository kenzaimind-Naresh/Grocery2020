<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
font-family: Arial, Helvetica, sans-serif;
}

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
  padding: 2px 16px;
  background-color: #5cb85c;
  color: white;
}

.modal-body {
padding: 2px 16px;


}



.overlay {
  position: absolute;
  top: 100px;
  left: 0;
  width: 60%;
  height: 60%;
  background-color: white(0,0,0,0.88);
    padding-left:350px;
  
}

</style>
</head>
<body>



<!-- The Modal -->
<div id="myModal"  class="overlay">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <h2>Welcome to Online Store Book your Order by Area Wise to get Groceries.</h2>
    </div>
    <div class="modal-body">
            <p>Welcome to Online Store Book your Order by Area Wise to get Groceries.</p>

    </div><br><br>
    <div class="modal-footer" align="center">
    <g:form controller="test">
    <g:actionSubmit value="Proceed" action="success"/>
</g:form>
    </div>
    <br><br>
  </div>

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

</body>
</html>
