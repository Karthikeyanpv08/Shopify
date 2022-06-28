<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
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
    font-size: 1.5rem;
    font-weight: 600;
    line-height: 1.5;
    opacity: 0.5;
    margin: 0.4rem 0;
    position: relative;
    left: 800px;
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
.btn-buy{
    background: white;
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
    background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("https://images.moneycontrol.com/static-mcnews/2020/04/footwear-28042020-770x433.jpg") center/cover no-repeat;
}
.product-col-r-top{
    background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("https://media.istockphoto.com/photos/young-man-shopping-shoes-picture-id1292261872?b=1&k=20&m=1292261872&s=170667a&w=0&h=AA5F-5LPlJJjqpUqB5UjCuYhk5YnNEEcEAqa5Ya4lEA=") center/cover no-repeat;
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
    background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("https://static.businessworld.in/article/article_extra_large_image/1560859917_Yqz5H0_sneaker2_470.jpg") center/cover no-repeat;;
}
.product-col-r-bottom > div:last-child{
    background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3)), url("https://cdn3.vectorstock.com/i/1000x1000/76/12/shoe-sale-vector-3077612.jpg") center/cover no-repeat;
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
@media screen{
    .product-items{
        display: grid;
        grid-template-columns: repeat(2, 1fr);
    }
    .product-col-r-bottom{
        display: grid;
        grid-template-columns: repeat(2, 1fr);
    }
}
@media screen{
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

@media screen {
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


/* footer style  starts */


.footer{
    background: #E3E6F3;
    font-family: 'Quicksand', sans-serif;
}

.footer .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
    gap:1.5rem;
}

.footer .box-container .box h3{
    font-size: 1rem;
    color:var(--black);
    padding:1rem 0;
    font-weight: bolder;
}

.footer .box-container .box h3 i{
    color:#ff7800;
}

.footer .box-container .box .links{
    display: block;
    font-size: 1rem;
    color:var(--light-color);
    padding:1rem 0;
}

.footer .box-container .box .links i{
    color:#ff7800;
    padding-right: .5rem;
}

.footer .box-container .box a{
    text-decoration: none;
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
    font-size: 1rem;
    color:var(--black);
    margin-right: .2rem;
    background: #eee;
    text-align: center;
    text-decoration: none;
}

.footer .box-container .box .share a:hover{
    background: #ff7800;
    color: white;
}

.footer .box-container .box .email{
    width: 100%;
    margin:.7rem 0;
    padding:1rem;
    border-radius: .5rem;
    background: #eee;
    font-size: 1rem;
    color:var(--black);
    text-transform:none;
    border: none;
}



.footer .box-container .box .payment-img{
    margin-top: 2rem;
    height: 3rem;
    display: block;
    width: 200px;
}

.footer .credit{
    text-align: center;
    margin-top: 2rem;
    padding:1rem;
    padding-top: 2.5rem;
    font-size: 1rem;
    color:var(--black);
    border-top: .2rem solid rgba(0,0,0,.1);
    font-weight: bolder;
}

.footer .credit span{
    color:#ff7800;
}

.btn{
    margin-top: 1rem;
    display: inline-block;
    padding:.8rem 3rem;
    font-size: 1.7rem;
    border-radius: .5rem;
    border:.2rem solid #ff7800;
    color:#ff7800;
    cursor: pointer;
    background: none;
}

.btn:hover{
    background: #ff7800 ;
    color:#fff;
}

.footer .box img{
    padding-top: 10px;
}


@media (max-width:450px){
    .footer{
        text-align: center;
    }

    .footer .box-container .box .payment-img{
        margin: 2rem auto;
    }
}
.parent {
  display: flex;
  flex-wrap: wrap;
}

.child {
  width: 25%;
  padding: 45px
}
/* footer style ends */

</style>
    </head>
    <body>
        <section id="header">
        
            <a href="#" class="logo"> <img src="https://www.vectorlogo.zone/logos/shopify/shopify-ar21.png" alt="myLogo" style="width:125px;"></a>        
            <div>
                <ul id="navbar">
                    <li><a class="active" href="home.jsp">Home</a></li>
                    <li><a href="#">Product</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="messageUs.jsp">Contact</a></li>
                    <li><a href="login.jsp">Account</a></li>
                    <li><a href="myCart.jsp" class="fa-solid fa-cart-shopping" >
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                      </svg></a></li>
    
                </ul>
            </div>
        </section>

        
                <h1 class = "lg-title">Accessories</h1>
                <p class = "text-light">"It's an Add To Cart kind of Day"</p>
                <div class="parent">                <%
try
{
Connection con=ConnectionProvider.getCon();
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select *from product where active='Yes' and category='Accessories'");
  while(rs.next())
  {

%>

               
                    <!-- single product -->
                    <div class = "child">
                        <div class = "product-content">
                            <div class = "product-img">
                                <img src = "<%=rs.getString(4)%>"height="100%" alt = "product image">
                            </div>
                            <div class = "product-btns">
                                 <button type = "button" onclick="window.location.href='addToCartAction.jsp?id=<%=rs.getString(1) %>'" class ="btn-cart"> add to cart
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
                            <a href = "#" class = "product-name"><%=rs.getString(2) %></a>
                            <p class = "product-price"></p>
                        
                            <p class = "product-price"> <%=rs.getString(5) %></p>
                            
                        
                            
                        </div>
                    </div>
                    
                    <%}%>
  
</div>
               <%} 
catch(Exception e)
{
	System.out.println(e);
}

                    
                    %>
                   
                    <br><br><br>
                    <!-- end of single product -->
                    
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
                    
    </body>
</html>