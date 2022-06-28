<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopify.com Buy More,Smile More</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
 
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');

:root{
    --orange:#ff7800;
    --black:#130f40;
    --light-color:#666;
    --box-shadow:0 .5rem 1.5rem rgba(0,0,0,.1);
    --border:.2rem solid rgba(0,0,0,.1);
    --outline:.1rem solid rgba(0,0,0,.1);
    --outline-hover:.2rem solid var(--black);
}

*{
    font-family: 'Poppins', sans-serif;
    margin:0; padding:0;
    box-sizing: border-box;
    outline: none; border:none;
    text-decoration: none;
    text-transform: capitalize;
    transition: all .2s linear;
}

html{
    font-size: 62.5%;
    overflow-x: hidden;
    scroll-behavior: smooth;
    scroll-padding-top: 7rem;
}

body{
    background:#eee;
}

section{
    padding:2rem 9%;
}

.heading{
    text-align: center;
    padding:2rem 0;
    padding-bottom: 3rem;
    font-size: 3.5rem;
    color:var(--black);
}

.heading span{
    background: var(--orange);
    color:#fff;
    display: inline-block;
    padding:.5rem 3rem;
    clip-path: polygon(100% 0, 93% 50%, 100% 99%, 0% 100%, 7% 50%, 0% 0%);
}

.btn{
    margin-top: 1rem;
    display: inline-block;
    padding:.8rem 3rem;
    font-size: 1.7rem;
    border-radius: .5rem;
    border:.2rem solid var(--orange);
    color:var(--orange);
    cursor: pointer;
    background: none;
}



.btn:hover{
    background: var(--orange);
    color:#fff;
}

.header{
    position: fixed;
    top:0; left:0; right: 0;
    z-index: 1000;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding:2rem 9%;
    background:#fff;
    box-shadow: var(--box-shadow);
}

.header .logo{
    padding-top: 5px;
    padding-right: 30px; 
}

.header .logo i{
    color:var(--orange);
}

.header .navbar a{
    font-size: 1.7rem;
    margin:0 1rem;
    color:var(--black);
}

.header .navbar a:hover{
    color:var(--orange);
}

.header .icons div{
    height: 4.5rem;
    width: 4.5rem;
    line-height: 4.5rem;
    border-radius: .5rem;
    background: #eee;
    color:var(--black);
    font-size: 2rem;
    margin-left: .3rem;
    cursor: pointer;
    text-align: center;
}

.header .icons a{
    height: 4.5rem;
    width: 4.5rem;
    line-height: 4.5rem;
    border-radius: .5rem;
    background: #eee;
    color:var(--black);
    font-size: 2rem;
    margin-left: .3rem;
    cursor: pointer;
    text-align: center;
}

.header .icons a:hover{
    color:var(--orange);
}


.header .icons div:hover{
    background: var(--orange);
    color:#fff;
}



#menu-btn{
    display: none;
}

.header .search-form{
    position: absolute;
    top:110%; right:-110%;
    width: 50rem;
    height:5rem;
    background: #fff;
    border-radius: .5rem;
    overflow: hidden;
    display: flex;
    align-items: center;
    box-shadow: var(--box-shadow);
}

.header .search-form.active{
    right:2rem;
    transition: .4s linear;
}

.header .search-form input{
    height:100%;
    width:100%;
    background: none;
    text-transform: none;
    font-size: 1.6rem;
    color:var(--black);
    padding:0 1.5rem;
}

.header .search-form label{
    font-size: 2.2rem;
    padding-right: 1.5rem;
    color:var(--black);
    cursor: pointer;
}

.header .search-form label:hover{
    color:var(--orange);
}

.header .shopping-cart{
    position: absolute;
    top:110%; right:-110%;
    padding:1rem;
    border-radius: .5rem;
    box-shadow: var(--box-shadow);
    width:35rem;
    background: #fff;
}

.header .shopping-cart.active{
    right:2rem;
    transition: .4s linear;
}

.header .shopping-cart .box{
    display: flex;
    align-items: center;
    gap:1rem;
    position: relative;
    margin:1rem 0;
}


.header .shopping-cart .box img{
    height:10rem;
}

.header .shopping-cart .saree img{  /* we create this style to move the saree image */
    padding-left: 35px;
}

.header .shopping-cart .box .fa-trash{
    font-size: 2rem;
    position: absolute;
    top:50%; right:2rem;
    cursor: pointer;
    color:var(--light-color);
    transform: translateY(-50%);
}

.header .shopping-cart .box .fa-trash:hover{
    color:var(--orange);
}

.header .shopping-cart .box .content h3{
    color:var(--black);
    font-size: 1.7rem;
    padding-bottom: 1rem;
}

.header .shopping-cart .box .content span{
    color:var(--light-color);
    font-size: 1.6rem;
}

.header .shopping-cart .box .content .quantity{
    padding-left: 1rem;
}

.header .shopping-cart .total{
    font-size: 2.5rem;
    padding:1rem 0;
    text-align: center;
    color:var(--black);
}

.header .shopping-cart .btn{
    display: block;
    text-align: center;
    margin:1rem;
}

.header .login-form{
    position: absolute;
    top:110%; right:-110%;
    width:35rem;
    box-shadow: var(--box-shadow);
    padding:2rem;
    border-radius: .5rem;
    background: #fff;
    text-align: center;
}

.header .login-form.active{
    right:2rem;
    transition: .4s linear;
}

.header .login-form h3{
    font-size: 2.5rem;
    text-transform: uppercase;
    color: var(--black);
}

.header .login-form .box{
    width: 100%;
    margin:.7rem 0;
    background:#eee;
    border-radius: .5rem;
    padding:1rem;
    font-size: 1.6rem;
    color:var(--black);
    text-transform: none;
}

.header .login-form p{
    font-size: 1.4rem;
    padding:.5rem 0;
    color:var(--light-color);
}

.header .login-form p a{
    color:var(--orange);
    text-decoration: underline;
}

.home{
    display: flex;
    align-items: center;
    justify-content: center;
    background: url('https://img.freepik.com/free-photo/front-view-cyber-monday-shopping-cart-with-bags-copy-space_23-2148657638.jpg?w=2000') no-repeat;
    background-position: center;
    background-size: cover;
    padding-top: 17rem;
    padding-bottom: 10rem;
}

.home .content{
    text-align: left;
    width:60rem;
    margin-right: 40%;  /* we create this margin-right to move the content into left */
}

.home .content h3{
    color:rgba(0, 200, 200, 0.7);
    font-size: 3rem;
}

.home .content h3 span{
    color:var(--orange);
}

.home .content p{
    color:rgba(200, 177, 0, 0.701);
    font-size: 1.7rem;
    padding:1rem 0;
    line-height: 1.8;
}

.features .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
    gap:1.5rem;
}

.features .box-container .box{
    padding:3rem 2rem;
    background: #fff;
    outline: var(--outline);
    outline-offset: -1rem;
    text-align: center;
    box-shadow: var(--box-shadow);
}

.features .box-container .box:hover{
    outline: var(--outline-hover);
    outline-offset: 0rem;
}

.features .box-container .box img{
    margin:1rem 0;
    height: 15rem;
}

.features .box-container .box h3{
    font-size: 2.5rem;
    line-height: 1.8;
    color:var(--black);
}

.features .box-container .box p{
    font-size: 1.5rem;
    line-height: 1.8;
    color:var(--light-color);
    padding:1rem 0;
}



.products .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(26rem, 1fr));
    gap:1.5rem;
}

.products .box-container .box{
    padding:3rem 2rem;
    border-radius: .5rem;
    background:#fff;
    box-shadow: var(--box-shadow);
    outline:var(--outline);
    outline-offset: -1rem;
    text-align: center;
}

.products .box-container .box:hover{
    outline:var(--outline-hover);
    outline-offset: 0rem;
}

.products .box-container .box img{
    margin:1rem 0;
    height:15rem;
}

.products .box-container .box h3{
   font-size: 2rem;
   color:var(--black);
   line-height: 1.8;
}

.products .box-container .box p{
    font-size: 1.7rem;
    color:var(--light-color);
    line-height: 1.8;
    padding:1rem 0;
}

.products .box-container .box .price{
    font-size: 2rem;
    color:var(--light-color);
    padding:.5rem 0;
}

.products .box-container .box .stars i{
    font-size: 1.7rem;
    color:var(--orange);
    padding:.5rem 0;
} 




.categories .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(26rem, 1fr));
    gap:1.5rem;
}

.categories .box-container .box{
    padding:3rem 2rem;
    border-radius: .5rem;
    background:#fff;
    box-shadow: var(--box-shadow);
    outline:var(--outline);
    outline-offset: -1rem;
    text-align: center;
}

.categories .box-container .box:hover{
    outline:var(--outline-hover);
    outline-offset: 0rem;
}

.categories .box-container .box img{
    margin:1rem 0;
    height:15rem;
}

.categories .box-container .box h3{
   font-size: 2rem;
   color:var(--black);
   line-height: 1.8;
}

.categories .box-container .box p{
    font-size: 1.7rem;
    color:var(--light-color);
    line-height: 1.8;
    padding:1rem 0;
}

.review .review-slider{
    padding:1rem;
}

.review .review-slider .box{
    height: 50%;
    background: #fff;
    border-radius: .5rem;
    text-align: center;
    padding:3rem 2rem;
    outline-offset: -1rem;
    outline: var(--outline);
    box-shadow: var(--box-shadow);
    transition: .2s linear;
}

.review .review-slider .box:hover{
    outline:var(--outline-hover);
    outline-offset: 0rem;
}

.review .review-slider .box img{
    height:10rem;
    width:10rem;
    border-radius: 50%;
}

.review .review-slider .box p{
    padding:1rem 0;
    line-height: 1.8;
    color:var(--light-color);
    font-size: 1.5rem;
}

.review .review-slider .box h3{
    padding-bottom: .5rem;
    color:var(--black);
    font-size: 2.2rem;
}

.review .review-slider .box .stars i{
    color:var(--orange);
    font-size: 1.7rem;
}

.blogs .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
    gap:1.5rem;
}

.blogs .box-container .box{
    overflow: hidden;
    border-radius: .5rem;
    box-shadow: var(--box-shadow);
    background:#fff;
}

.blogs .box-container .box img{
    height:25rem;
    width:100%;
    object-fit: cover;
}

.blogs .box-container .box .content{
    padding:2rem;
}

.blogs .box-container .box .content .icons{
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 1.5rem;
    margin-bottom: 1rem;
    border-bottom: var(--border);
}

.blogs .box-container .box .content .icons a{
    color:var(--light-color);
    font-size: 1.5rem;
}

.blogs .box-container .box .content .icons a:hover{
    color:var(--black);
}

.blogs .box-container .box .content .icons a i{
    color:var(--orange);
    padding-right: .5rem;
}

.blogs .box-container .box .content h3{
    line-height: 1.8;
    color:var(--black);
    font-size: 2.2rem;
    padding:.5rem 0;
}

.blogs .box-container .box .content p{
    line-height: 1.8;
    color:var(--light-color);
    font-size: 1.5rem;
    padding:.5rem 0;
}

.footer{
    background: #fff;
    position: relative;
}

.footer .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
    gap:1.5rem;
}

.footer .box-container .box h3{
    font-size: 2.5rem;
    color:var(--black);
    padding:1rem 0;
}

.footer .box-container .box h3 i{
    color:var(--orange);
}

.footer .box-container .box .links{
    display: block;
    font-size: 1.5rem;
    color:var(--light-color);
    padding:1rem 0;
}

.footer .box-container .box .links i{
    color:var(--orange);
    padding-right: .5rem;
}

.footer .box-container .box .links:hover i{
    padding-right: 2rem;
}


.footer .box-container .box p{
    line-height: 1.8;
    font-size: 1.5rem;
    color:var(--light-color);
    padding:1rem 0;
}

.footer .box-container .box .share a{
    height:4rem;
    width:4rem;
    line-height:4rem;
    border-radius: .5rem;
    font-size: 2rem;
    color:var(--black);
    margin-right: .2rem;
    background: #eee;
    text-align: center;
}

.footer .box-container .box .share a:hover{
    background: var(--orange);
    color: #fff;
}

.footer .box-container .box .email{
    width: 100%;
    margin:.7rem 0;
    padding:1rem;
    border-radius: .5rem;
    background: #eee;
    font-size: 1.6rem;
    color:var(--black);
    text-transform: none;
}

.footer .box-container .box .payment-img{
    margin-top: 2rem;
    height: 3rem;
    display: block;
}

.footer .credit{
    text-align: center;
    margin-top: 2rem;
    padding:1rem;
    padding-top: 2.5rem;
    font-size: 2rem;
    color:var(--black);
    border-top: var(--border);
}

.footer .credit span{
    color:var(--orange);
}






/* media queries  */

@media (max-width:991px){

    html{
        font-size: 55%;
    }

    .header{
        padding:2rem;
    }

    section{
        padding:2rem;
    }

}

@media (max-width:768px){

    #menu-btn{
        display: inline-block;
    }

    .header .search-form{
        width:90%;
    }

    .header .navbar{
        position: absolute;
        top:110%; right:-110%;
        width:30rem;
        box-shadow: var(--box-shadow);
        border-radius: .5rem;
        background: #fff;
    }

    .header .navbar.active{
        right:2rem;
        transition: .4s linear;
    }

    .header .navbar a{
        font-size: 2rem;
        margin:2rem 2.5rem;
        display: block;
    }

}

@media (max-width:450px){

    html{
        font-size: 50%;
    }

    .heading{
        font-size: 2.5rem;
    }

    .footer{
        text-align: center;
    }

    .footer .box-container .box .payment-img{
        margin: 2rem auto;
    }

}
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>


<h3 class="alert">Product added successfully!</h3>
<%} %>
<%
if("exist".equals(msg))
{
%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try Again!</h3>
<%} %>
<img alt="" src="">

<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo"> <img src="https://www.vectorlogo.zone/logos/shopify/shopify-ar21.png" alt="myLogo" style="width:125px"></a>

    <nav class="navbar">
        <a href="#home">home</a>
        <a href="#features">features</a>
        <a href="#products">products</a>
        <a href="#categories">categories</a>
        <a href="#review">review</a>
        <!-- <a href="#blogs">blogs</a> -->
    </nav>


    <div class="icons">
        <div class="fas fa-bars" id="menu-btn" ></div>
    
         <a href="myCart.jsp" id="cart"><i class="fas fa-shopping-cart icon-large(20% increase)" ></i></a>
     
        <a href="login.jsp" class="fas fa-user" id="login-btn"></a>
        
         <a href="logout.jsp"><i class="fa-regular fa-arrow-right-to-arc"></i></a>
    </div>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <h3>Stay Home and <span>Shop</span> Online Products </h3>
        <p> You're too pretty to have to look for a Parking Spot</p>
        <a href="#" class="btn">shop now</a>
    </div>

</section>

<!-- home section ends -->

<!-- features section starts  -->

<section class="features" id="features">

    <h1 class="heading"> our <span>features</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="https://thumbs.dreamstime.com/b/best-price-guarantee-16054167.jpg" alt="">
            <h3>High quality Low price</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt, earum!</p>
            <a href="#" class="btn">read more</a>
        </div>

        <div class="box">
            <img src="https://thumbs.dreamstime.com/b/free-delivery-sign-fast-shipping-service-icon-stock-vector-156316331.jpg" alt="">
            <h3>free delivery</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt, earum!</p>
            <a href="#" class="btn">read more</a>
        </div>

        <div class="box">
            <img src="https://cdn4.vectorstock.com/i/1000x1000/80/88/easy-online-payments-concept-with-cartoon-hand-vector-38798088.jpg" alt="">
            <h3>easy payments</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt, earum!</p>
            <a href="#" class="btn">read more</a>
        </div>

    </div>

</section>

<!-- features section ends -->

<!-- products section starts  -->


<section class="products" id="products">

    <h1 class="heading"> our <span>products</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="http://cdn.shopify.com/s/files/1/0523/1925/6741/files/Cover_Photo_-_1_2a224907-35c6-4823-895f-4b0d8b2f3af6_1200x1200.jpg?v=1626203456" width="200px" alt="">
            <h3>kitchen appliances</h3>
            <div class="price"> Rs.500/- to 10,000/-</div>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <a href="kitchen.jsp" class="btn">see more</a>
        </div>

        <div class="box">
            <img src="https://img.etimg.com/thumb/width-1200,height-900,imgsize-485221,resizemode-1,msid-81140349/news/economy/policy/eight-toy-clusters-worth-2300-crore-approved.jpg" alt="">
            <h3>toys</h3>
            <div class="price"> Rs.500/- to 5,000/-</div>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <a href="toys.jsp" class="btn">see more</a>
        </div>

        <div class="box">
            <img src="http://bytefixx.com/wp-content/uploads/2014/04/sales1.jpg" alt="">
            <h3>electronics</h3>
            <div class="price"> Rs.500/- to 2,000/-</div>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <a href="electronics.jsp" class="btn">see more</a>
        </div>

    </div>

</section>


<!-- products section ends -->

<!-- categories section starts  -->

<section class="categories" id="categories">

    <h1 class="heading"> product <span>categories</span> </h1>

    <div class="box-container">
        <div class="box">
            <img src="https://i1.wp.com/turkpidya.com/wp-content/uploads/2021/02/%D8%A7%D9%84%D9%85%D9%84%D8%A7%D8%A8%D8%B3-%D8%A7%D9%84%D8%AA%D8%B1%D9%83%D9%8A%D8%A9-1.jpg?resize=750%2C422&ssl=1" alt="">
            <h3>Fashion Products</h3>
            <p>upto 25% off</p>
            <a href="Men'sClothing.jsp" class="btn">see more</a>
        </div>



        <div class="box">
            <img src="https://img.freepik.com/free-photo/clothing-accessories-men-women-ready-travel-life-style_11304-1345.jpg" alt="">
            <h3>Accessories</h3>
            <p>upto 20% off</p>
            <a href="Maccessories.jsp" class="btn">see more</a>
        </div>

    </div>

</section>

<!-- categories section ends -->

<!-- review section starts  -->

<section class="review" id="review">

    <h1 class="heading"> customer's <span>review</span> </h1>

    <div class="swiper review-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="http://learnyzen.com/wp-content/uploads/2017/08/test1-481x385.png" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                <h3>john deo</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
            
            
            <div class="swiper-slide box">
                <img src="https://media.gettyimages.com/photos/self-acceptance-goes-a-long-way-to-being-happy-picture-id629077354?k=20&m=629077354&s=612x612&w=0&h=SXGiTcyanEQorkueuaGPVtHj3bDwk1VjrhjtHcGRA0M=" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                <h3>jenifer maria</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="https://images.unsplash.com/photo-1600878459138-e1123b37cb30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2Zlc3Npb25hbCUyMG1hbnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                <h3>robert aldo</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="https://media.istockphoto.com/photos/smiling-african-american-business-woman-wearing-stylish-eyeglasses-picture-id1325565779?b=1&k=20&m=1325565779&s=170667a&w=0&h=mg7anQmF533oAt9xqypvLR-y0ei692eWC7zsnnjjlQc=" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                <h3>susan carol</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

        </div>

    </div>

</section>

<!-- review section ends -->

<!-- blogs section starts  -->

<section class="blogs" id="blogs">

    <h1 class="heading"> our <span>blogs</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="https://images.pexels.com/photos/208512/pexels-photo-208512.jpeg?cs=srgb&dl=pexels-pixabay-208512.jpg&fm=jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i> by user </a>
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may, 2022 </a>
                </div>
                <h3>medicines</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam, expedita.</p>
                <a href="#" class="btn">read more</a>
            </div>
        </div>

        <div class="box">
            <img src="https://images.livemint.com/img/2021/12/08/600x338/WhatsApp_Image_2021-12-08_at_12.44.17_PM_1638948111004_1638948116182.jpeg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i> by user </a>
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may, 2022 </a>
                </div>
                <h3>vehicles</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam, expedita.</p>
                <a href="#" class="btn">read more</a>
            </div>
        </div>

        <div class="box">
            <img src="https://5.imimg.com/data5/VF/CT/MY-49857352/organic-vegetables-500x500.png" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i> by user </a>
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may, 2022 </a>
                </div>
                <h3>organic vegetables</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam, expedita.</p>
                <a href="#" class="btn">read more</a>
            </div>
        </div>

    </div>

</section>

<!-- blogs section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <a href="#" class="logo"> <img src="https://www.vectorlogo.zone/logos/shopify/shopify-ar21.png" alt="myLogo" style="width:125px"></a>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam, saepe.</p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#" class="links"> <i class="fas fa-envelope"></i> abc@atos.net</a>
            <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> chennai, india - 600042 </a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> features </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> products </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> categories </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> review </a>
            <!-- <a href="#" class="links"> <i class="fas fa-arrow-right"></i> blogs </a> -->
        </div>

        <div class="box">
            <h3>newsletter</h3>
            <p>subscribe for latest updates</p>
            <input type="email" placeholder="your email" class="email">
            <input type="submit" value="subscribe" class="btn">
            <img src="https://icon-library.com/images/visa-master-icon/visa-master-icon-18.jpg" class="payment-img" alt="">
        </div>

    </div>

    <div class="credit"> created by <span> shopify team </span> | all rights reserved </div>

</section>

<!-- footer section ends -->


<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>