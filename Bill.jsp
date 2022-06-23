
<html>
<head>
<style>
   body 
   {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-color: white;
}
:root{
    --white-light: rgba(255, 255, 255, 0.5);
    --alice-blue: #f8f9fa;
    --carribean-green: #40c9a2;
    --gray: #ededed;
}

*{
    padding:0;
    margin: 0;
    box-sizing: border-box;
}

#header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 20px 80px;
    background-color: #E3E6F3;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.06);
}

#image{
  width: 100px;
  height:5rem;
}

#navbar {
    display:flex;
    align-items: center;
    justify-content: center;
}

#navbar li {
    list-style: none;
    padding: 0 20px;
    position: relative;

}

#navbar li a {
    text-decoration: none;
    font-size: 16px;
    font-weight: 600;
    color: #1a1a1a;
    transition: 0.3s ease;
}

#navbar li a:hover,
#navbar li a:active {
    color: orange;

}

#navbar li a:active::after {
    content: "";
    width: 30%;
    height: 2px;
    background-color: #088178;
    position: absolute;
    bottom: -4px;
    left: 20px;
}


/*footer*/
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:#ccc;
   color:black;
   text-align: center;
}





.input-style {
  width: 90%;
  padding: 12px 20px;
  margin-left:5%;
  box-sizing: border-box;
  border: none;
  background-color:white;
  color: black;
  font-size: 16px;
}

input[type=text]:focus, textarea:focus,button:focus{
  outline: 4px solid var(--white-light);
  background-color:rgb(224, 255, 219);     /* oranges! yey */
}

.button {
  background-color: aqua;
  border: none;
  color: black;
  padding: 8px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  font-size: 16px;
  width: 10%;
   border-radius: 25px;
}

.button:hover {
  background-color: pink;
  color: black;
}
h2
{
  float:left;


}

hr
{
	width: 100%
}
h3
{
	text-align: center;
	color: black;
}
.alert
{
	color:yellow;
}

.profile-style
{
	border-style: dotted;
	
}

.left-button
{
  float:right;
	width: 28%;
	display:inline-block;
}

.right-button
{
	float: right;
	width: 28%;
	display:inline-block;
}

.left-div
{
  float:left;
	width: 33.33%;
	display:inline-block;
}

.right-div
{
	float:right;
	width: 33.33%;
	display:inline-block;
}
.right-div-right
{
	float:right;
	width: 33.33%;
	display:inline-block;
}
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  -moz-box-align:center;
  width: 100%;
}

#customers td, #customers th 
{
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even)
{
  background-color: #f2f2f2;
}

#customers tr:hover 
{
  background-color: #ddd;
}

#customers th 
{
  padding-top: 12px;
  padding-bottom: 12px;
  text-align:center;
  background-color: white;
  color: black;
}
</style>
<title>Bill</title>
</head>
<body>
  <section id="header">
    <a href="#" class="logo"> <img src="https://www.vectorlogo.zone/logos/shopify/shopify-ar21.png" alt="myLogo" style="width:125px;"></a>        
    <div>
        <ul id="navbar">
            <li><a class="active" href="#">Home</a></li>
            <li><a href="#">Product</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Account</a></li>
            <li><a href="#" class="fa-solid fa-cart-shopping" >
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
              </svg></a></li>

        </ul>
    </div>
</section>
<br>
<h3> Products Bill </h3>
<hr>
<br>
<div class="left-div"><h3>Name:  </h3><br></div>
<div class="right-div-right"><h3>Email:  </h3><br></div>
<div class="right-div"><h3>Mobile Number:  </h3><br></div>  

<div class="left-div"><h3>Order Date:  </h3><br></div>
<div class="right-div-right"><h3>Payment Method:  </h3><br></div>
<div class="right-div"><h3>Expected Delivery:  </h3><br></div>

<div class="left-div"><h3>Transaction Id:  </h3><br></div>
<div class="right-div-right"><h3>City:  </h3><br></div> 
<div class="right-div"><h3>Address:  </h3><br></div> 

<div class="left-div"><h3>State:  </h3><br></div>
<div class="right-div-right"><h3>Country:  </h3><br></div>  
<hr>

<hr>
<br>
<table id="customers">
<h3> Product Details </h3>
<br>
  <tr>
    <th>S.No</th>
    <th>Product Name</th>
    <th>category</th>
    <th>Price</th>
    <th>Quantity</th>
     <th>Sub Total</th>
  </tr>
  
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
     <td></td>
  </tr>
</table>
<br><br><br><br>
<h2>Total: </h2>
<a href="index.jsp"><button class="button left-button">Continue Shopping</button></a>
<a onclick="window.print();"><button class="button right-button">Print</button></a>
<br><br><br><br>

</body>
</html>