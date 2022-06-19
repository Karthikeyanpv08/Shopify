<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- font awesome -->
<script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
<link rel="shortcut icon" href="https://www.vectorlogo.zone/logos/shopify/shopify-ar21.png">

<style>
    @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&family=Roboto:wght@300;400;500;700;900&display=swap');

:root{
    --white-light: rgba(255, 255, 255, 0.5);
    --alice-blue: #f8f9fa;
    --carribean-green: #40c9a2;
    --gray: #ededed;
}
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    font-family: 'Quicksand', sans-serif;
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
display: flex;
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
color: #088178;

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

:root{
--white-light: rgba(255, 255, 255, 0.5);
--alice-blue: #f8f9fa;
--carribean-green: #40c9a2;
--gray: #ededed;
}
*{
padding: 0;
margin: 0;
box-sizing: border-box;
}
body{
font-family: 'Quicksand', sans-serif;
}

/* Utility stylings */
img{
width: 100%;
display: block;
border-radius:15px ;
}
.container{
width: 88vw;
margin: 0 auto;
}
.lg-title,
.md-title,
.sm-title{
font-family: 'Roboto', sans-serif;
padding: 0.6rem 0;
text-transform: capitalize;
}
.lg-title{
font-size: 2.5rem;
font-weight: 500;
text-align: center;
padding: 1.3rem 0;
opacity: 0.9;
}
.md-title{
font-size: 2rem;
font-family: 'Roboto', sans-serif;
}
.sm-title{
font-weight: 300;
font-size: 1rem;
text-transform: uppercase;
}
.text-light{
font-size: 1rem;
font-weight: 600;
line-height: 1.5;
opacity: 0.5;
margin: 0.4rem 0;
}

/* product section */
.products{
background: var(--alice-blue);
padding: 3.2rem 0;
}
.products .text-light{
text-align: center;
width: 70%;
margin: 0.9rem auto;
}
.product{
margin: 2rem;
position: relative;
}
.product-content{
background: var(--gray);
padding: 3rem 0.5rem 2rem 0.5rem;
cursor: pointer;
}
.product-img{
background: var(--white-light);
box-shadow: 0 0 20px 10px var(--white-light);
width: 200px;
height: 200px;
margin: 0 auto;
border-radius: 50%;
transition: background 0.5s ease;
}
.product-btns{
display: flex;
justify-content: center;
margin-top: 1.4rem;
opacity: 0;
transition: opacity 0.6s ease;
}
.btn-cart, .btn-buy{
background: transparent;
border: 1px solid black;
padding: 0.8rem 0;
width: 125px;
font-family: inherit;
text-transform: uppercase;
cursor: pointer;
border: none;
transition: all 0.6s ease;
}
.btn-cart{
background: black;
color: white;
}
.btn-cart:hover{
background: var(--carribean-green);
}
.btn-buy{
background: white;
}
.btn-buy:hover{
background: var(--carribean-green);
color: #fff;
}
.product-info{
background: white;
padding: 2rem;
}
.product-info-top{
display: flex;
justify-content: space-between;
align-items: center;
}
.rating span{
color: var(--carribean-green);
}
.product-name{
color: black;
display: block;
text-decoration: none;
font-size: 1rem;
text-transform: uppercase;
font-weight: bold;
}
.product-price{
padding-top: 0.6rem;
padding-right: 0.6rem;
display: inline-block;
}
.product-price:first-of-type{
text-decoration: line-through;
color: var(--carribean-green);
}
.product-img img{
transition: transform 0.6s ease;
}
.product:hover .product-img img{
transform: scale(1.1);
}
.product:hover .product-img{
background: var(--carribean-green);
}
.product:hover .product-btns{
opacity: 1;
}
.off-info .sm-title{
background: var(--carribean-green);
color: white;
display: inline-block;
padding: 0.5rem;
position: absolute;
top: 0;
left: 0;
writing-mode: vertical-lr;
transform: rotate(180deg);
z-index: 1;
letter-spacing: 3px;
cursor: pointer;
}

/* product collection */
.product-collection{
padding: 3.2rem 0;
}
.product-collection-wrapper{
padding: 3.2rem 0;
}
.product-col-left{
background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("https://effortlessgent.com/wp-content/uploads/2021/01/Spier-Mackay-Sport-Coat.jpg.webp") center/cover no-repeat;
}
.product-col-r-top{
background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("http://images.phi.content-cdn.io/cdn-cgi/image/%7Bwidth%7D,%7Bheight%7D,quality=75,format=auto,fit=cover,g=top/yum-resources/c3516bb3-46b0-491d-b8d2-ac739710bb4c/Images/ProductImages/Source/1547541456.1870975-S2704731_C333_Alt1.jpg") center/cover no-repeat;
}
.flex{
display: flex;
justify-content: center;
align-items: flex-end;
height: 50vh;
padding: 2rem 1.5rem 3.2rem;
margin: 10px;

}
.product-col-r-bottom > div:first-child{
background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("https://static.toiimg.com/thumb/msid-81489980,width-1200,height-900,resizemode-4/.jpg") center/cover no-repeat;;
}
.product-col-r-bottom > div:last-child{
background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("https://static.vecteezy.com/system/resources/previews/000/524/056/original/vector-fashion-cloth-seamless-pattern-retail-women-dress-sale-background.jpg") center/cover no-repeat;
}
.product-col-content{
text-align:center;
color: white;
position: absolute;
}
.product-collection .text-light{
opacity: 1;
font-size: 0.8;
font-weight: 400;
line-height: 1.7;
}
.btn-dark{
background: black;
color: white;
outline: 0;
border-radius: 25px;
padding: 0.7rem 1rem;
border: 0;
margin-top: 1rem;
cursor: pointer;
transition: all 0.6s ease;
font-size: 1rem;
font-family: inherit;
}
.btn-dark:hover{
background: var(--carribean-green);
}

/* Media Queries */
@media screen and (min-width: 992px){
.product-items{
display: grid;
grid-template-columns: repeat(2, 1fr);
}
.product-col-r-bottom{
display: grid;
grid-template-columns: repeat(2, 1fr);
}
}
@media screen and (min-width: 1200px){
.product-items{
grid-template-columns: repeat(3, 1fr);
}
.product{
margin-right: 1rem;
margin-left: 1rem;
}
.products .text-light{
width: 50%;
}
}

@media screen and (min-width: 1336px){
.product-items{
grid-template-columns: repeat(4, 1fr);
}
.product-collection-wrapper{
display: grid;
grid-template-columns: repeat(2, 1fr);
}
.flex{
height: 60vh;
}
.product-col-left{
height: 121.5vh;
}
}
#kids{
    color: white;
    font-weight: 500;
}

.summer{
    color: white;
    font-weight: 700;
}

.off{
    color:black;
}
</style>
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

<div class = "products">
    <div class = "container">
        <h1 class = "lg-title">Branded Clothes With Offers</h1>
        <p class = "text-light"><b>ALWAYS DRESS WELL, <br>KEEP IT SIMPLE, <br>BUT SIGNIFICANT.</b></p>

        <div class = "product-items">
            <!-- single product -->
            <div class = "product">
                <div class = "product-content">
                    <div class = "product-img">
                        <img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRtR7nVg4Im5La9bSs1yJL0AA1m2jX9Efw-g&usqp=CAU" height="100%" alt = "product image">
                    </div>
                    <div class = "product-btns">
                        <button type = "button" class = "btn-cart"> add to cart
                            <span><i class = "fas fa-plus"></i></span>
                        </button>
                        <button type = "button" class = "btn-buy"> buy now
                            <span><i class = "fas fa-shopping-cart"></i></span>
                        </button>
                    </div>
                </div>

                <div class = "product-info">
                    <div class = "product-info-top">
                        <h2 class = "sm-title">lifestyle</h2>
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                    </div>
                    <a href = "#" class = "product-name">Zara Exclusive Shirt, New Product</a>
                    <p class = "product-price">₹4000</p>
                    <p class = "product-price">₹2200</p>
                </div>

                <div class = "off-info">
                    <h2 class = "sm-title">25% off</h2>
                </div>
            </div>
            <!-- end of single product -->
            <!-- single product -->
            <div class = "product">
                <div class = "product-content">
                    <div class = "product-img">
                        <img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNNRIEdtr8bTPKqRYPjcanN-4Z6aRVYlbWgQ&usqp=CAU" height="98%" alt = "product image">
                       
                    </div>
                    <div class = "product-btns">
                        <button type = "button" class = "btn-cart"> add to cart
                            <span><i class = "fas fa-plus"></i></span>
                        </button>
                        <button type = "button" class = "btn-buy"> buy now
                            <span><i class = "fas fa-shopping-cart"></i></span>
                        </button>
                    </div>
                </div>

                <div class = "product-info">
                    <div class = "product-info-top">
                        <h2 class = "sm-title">lifestyle</h2>
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                    </div>
                    <a href = "#" class = "product-name">Zara Exclusive T-Shirt, New Product</a>
                    <p class = "product-price">₹2500</p>
                    <p class = "product-price">₹1500</p>
                </div>
            </div>
            <!-- end of single product -->
            <!-- single product -->
            <div class = "product">
                <div class = "product-content">
                    <div class = "product-img">
                        <img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF8ypjFPdcRB8C0lTfcYKHZTWYAGnDrzQmIA&usqp=CAU" height="98%" alt = "product image">
                    </div>
                    <div class = "product-btns">
                        <button type = "button" class = "btn-cart"> add to cart
                            <span><i class = "fas fa-plus"></i></span>
                        </button>
                        <button type = "button" class = "btn-buy"> buy now
                            <span><i class = "fas fa-shopping-cart"></i></span>
                        </button>
                    </div>
                </div>

                <div class = "product-info">
                    <div class = "product-info-top">
                        <h2 class = "sm-title">lifestyle</h2>
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                    </div>
                    <a href = "#" class = "product-name">H&M Exclusive Hoodie, New Product</a>
                    <p class = "product-price">₹1700</p>
                    <p class = "product-price">₹999</p>
                </div>
            </div>
            <!-- end of single product -->
            <!-- single product -->
            <div class = "product">
                <div class = "product-content">
                    <div class = "product-img">
                        <img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5W77DoBkeEy7R7Us5ByMAMcr8XICrUJcQNQ&usqp=CAU"alt = "product image" height="98%">
                    </div>
                    <div class = "product-btns">
                        <button type = "button" class = "btn-cart"> add to cart
                            <span><i class = "fas fa-plus"></i></span>
                        </button>
                        <button type = "button" class = "btn-buy"> buy now
                            <span><i class = "fas fa-shopping-cart"></i></span>
                        </button>
                    </div>
                </div>

                <div class = "product-info">
                    <div class = "product-info-top">
                        <h2 class = "sm-title">lifestyle</h2>
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                    </div>
                    <a href = "#" class = "product-name">U.s. Polo Pant, New Product</a>
                    <p class = "product-price">₹2900</p>
                    <p class = "product-price">₹1500</p>
                </div>

                <div class = "off-info">
                    <h2 class = "sm-title">25% off</h2>
                </div>
            </div>
            <!-- end of single product -->
            <!-- single product -->
            <div class = "product">
                <div class = "product-content">
                    <div class = "product-img">
                        <img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwR5waGXamYkUPxzfFDUHRA5nka2icIWUlew&usqp=CAU" height="98%" alt = "product image">
                    </div>
                    <div class = "product-btns">
                        <button type = "button" class = "btn-cart"> add to cart
                            <span><i class = "fas fa-plus"></i></span>
                        </button>
                        <button type = "button" class = "btn-buy"> buy now
                            <span><i class = "fas fa-shopping-cart"></i></span>
                        </button>
                    </div>
                </div>

                <div class = "product-info">
                    <div class = "product-info-top">
                        <h2 class = "sm-title">lifestyle</h2>
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                    </div>
                    <a href = "#" class = "product-name">Van Heusen Premium Pant, New Product</a>
                    <p class = "product-price">₹2500</p>
                    <p class = "product-price">₹1800</p>
                </div>
            </div>
            <!-- end of single product -->
            <!-- single product -->
            <div class = "product">
                <div class = "product-content">
                    <div class = "product-img">
                        <img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlfdn4bYGHKODbmVAtLdzN--3tRdfVm_f9nAYTxlsOBOcWmE7czInzqHW5ZoI_NJ5fwRM&usqp=CAU" height="98%" alt = "product image">
                    </div>
                    <div class = "product-btns">
                        <button type = "button" class = "btn-cart"> add to cart
                            <span><i class = "fas fa-plus"></i></span>
                        </button>
                        <button type = "button" class = "btn-buy"> buy now
                            <span><i class = "fas fa-shopping-cart"></i></span>
                        </button>
                    </div>
                </div>

                <div class = "product-info">
                    <div class = "product-info-top">
                        <h2 class = "sm-title">lifestyle</h2>
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                    </div>
                    <a href = "#" class = "product-name">Van Heusen Suit, New Product</a>
                    <p class = "product-price">₹6000</p>
                    <p class = "product-price">₹3500</p>
                </div>
            </div>
            <!-- end of single product -->
            <!-- single product -->
            <div class = "product">
                <div class = "product-content">
                    <div class = "product-img">
                        <img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR95NqYS9aATn-EkzwngSXm3jWTS4wsdrLt7w&usqp=CAU" height="98%" alt = "product image">
                    </div>
                    <div class = "product-btns">
                        <button type = "button" class = "btn-cart"> add to cart
                            <span><i class = "fas fa-plus"></i></span>
                        </button>
                        <button type = "button" class = "btn-buy"> buy now
                            <span><i class = "fas fa-shopping-cart"></i></span>
                        </button>
                    </div>
                </div>

                <div class = "product-info">
                    <div class = "product-info-top">
                        <h2 class = "sm-title">lifestyle</h2>
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                    </div>
                    <a href = "#" class = "product-name">Zara Exclusive Kids T-Shirt , New Product</a>
                    <p class = "product-price">₹2500</p>
                    <p class = "product-price">₹1200</p>
                </div>
            </div>
            <!-- end of single product -->
            <!-- single product -->
            <div class = "product">
                <div class = "product-content">
                    <div class = "product-img">
                        <img src = "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/14641706/2022/3/2/ee87dc80-e501-4075-82bb-79d6ab5f15e21646222187260-Allen-Solly-Junior-Boys-Maroon-Slim-Fit-Regular-Trousers-609-1.jpg" height="98%" alt = "product image">
                    </div>
                    <div class = "product-btns">
                        <button type = "button" class = "btn-cart"> add to cart
                            <span><i class = "fas fa-plus"></i></span>
                        </button>
                        <button type = "button" class = "btn-buy"> buy now
                            <span><i class = "fas fa-shopping-cart"></i></span>
                        </button>
                    </div>
                </div>

                <div class = "product-info">
                    <div class = "product-info-top">
                        <h2 class = "sm-title">lifestyle</h2>
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                    </div>
                    <a href = "#" class = "product-name">Allen Solly Exclusive Kids Pant ,New Product</a>
                    <p class = "product-price">₹1800</p>
                    <p class = "product-price">₹1200</p>
                </div>

                <div class = "off-info">
                    <h2 class = "sm-title">35% off</h2>
                </div>
            </div>
            <!-- end of single product -->
        </div>
    </div>
</div>

<div class = "product-collection">
    <div class = "container">
        <div class = "product-collection-wrapper">
            <!-- product col left -->
            <div class = "product-col-left flex">
                <div class = "product-col-content">
                    <h2 class = "sm-title"> </h2>
                    <h2 class = "md-title" style="color: crimson;">Collection - Men </h2>
                    <button type = "button" class = "btn-dark">Shop now</button>
                </div>
            </div>

            <!-- product col right -->
            <div class = "product-col-right">
                <div class = "product-col-r-top flex">
                    <div class = "product-col-content">
                        <h2 class = "sm-title"> </h2>
                        <h2 class = "md-title" style="color: crimson;">Kids collections - Boys </h2>
                        <button type = "button" class = "btn-dark">Shop now</button>
                    </div>
                </div>

                <div class = "product-col-r-bottom">
                    <!-- left -->
                    <div class = "flex">
                        <div class = "product-col-content">
                            <h2 class = "sm-title summer"> summer sale </h2>
                            <h2 class = "md-title off">Extra 50% Off </h2>
                            <button type = "button" class = "btn-dark">Shop now</button>
                        </div>
                    </div>
                    <!-- right -->
                    <div class = "flex">
                        <div class = "product-col-content">
                            <h2 class = "sm-title summer">Mens And Kids</h2>
                            <h2 class = "md-title off">Best Sellers </h2>
                            <button type = "button" class = "btn-dark">Shop now</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>