
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<style>
body{
background-image: url('https://img.freepik.com/free-photo/shopping-concept-red-shopping-cart-white-background-with-copy-space_9635-4018.jpg');
background-repeat: no-repeat;
background-attachment: fixed;
background-size: 100% 100%;
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
/*body {
	background-image: url('https://img.freepik.com/free-photo/shopping-concept-red-shopping-cart-white-background-with-copy-space_9635-4018.jpg');
  font: 1em Helvetica;
}

/*#container {
  width: 840px;
  margin: 25px auto;
  margin-top: 50px;
}

/*.whysign {
  float: right;
  margin-left: 25%;
  background-color: white;
  width: 480px;
  height: 528px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}
/*.whysignLogin
{
	float: right;
  background-color: white;
  width: 480px;
  height: 347px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}*/

.whyforgotPassword
{
	float: left;
  background-color: white;
  width: 480px;
  height: 470px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}
/*.signup {
  float: left;
  width: 50%;
  display: flex;
  margin: 100px auto;
  padding: 5px 10px;
  text-align: center;
  border-radius: 5px 0 0 5px;
}*/


[type=text],[type=email],[type=number],[type=password],select,option {
  display: block;
  margin: 0 auto;
  width: 20%;
  border: 0;
  border-bottom: 1px solid rgba(0,0,0,.2);
  height: 45px;
  line-height: 45px;  
  margin-bottom: 10px;
  font-size: 1em;
  color: black;
  position: relative;
  right: 30%;
  top: 170px;
}

[type=submit] {
  margin-top: 25px;
  width: 10%;
  border: 0;
  background-color: #0080FF;
  border-radius: 5px;
  height: 50px;
  color: white;
  font-weight: 400;
  font-size: 1em;
  position: relative;
  left: 15%;
  top: 170px;
}

[type='text']:focus {
  outline: none;
  border-color: #53CACE;
  
}
h2{
  position: relative;
  left: 15%;
  top: 170px;
}

h1 {
  color: red;
  font-weight: 900;
  font-size: 2.5em;
}

p {
  color: rgba(0,0,0,.6);
  font-size: 1.2em;
  margin: 50px 0 50px 0;
}

span {
  font-size: .75em;
  background-color: white;
  padding: 2px 5px;
  color: rgba(0,0,0,.6);
  border-radius: 2px;
  box-shadow: 1px 1px 1px rgba(0,0,0,.3);
  margin: 5px;
}

span:hover {
  color: #53CACE;
}

p:nth-of-type(2) {
  font-size: 1em;
}
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

        
<div id='container'>
  <div class='signup' >
  <form action="loginAction.jsp"  method="post">
  
  <input type="email" name="email" placeholder="Enter your Email" required>
  <br>
   <input type="password" name="password" placeholder="Enter Password" required>
   <br>
   <input type="submit" value="login">
   <br>
   
  </form>
  </div>
  <div>
  <a href="signup.jsp">
      <input type="submit" value="signup" /></a>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  
  <div>
  
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  
  <h1>Incorrect Username or Password</h1>
  <% } %>
  <% if("invalid".equals(msg))
  {%>

<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
  </div>
</div>

</body>
</html>