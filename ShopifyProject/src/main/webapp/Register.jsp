<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-----CSS----->
<html>
<head>
<title>Registration form</title>
<link rel="stylesheet" href="alert/dist/sweetalert.css">

<style>
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

  .input-field{
      width: 100%;
      padding: 10px 0px;
      margin: 5px 0px;
      border-left: 0px;
      border-top: 0px;
      border-right: 0px;
      border-bottom: 1px solid #999;
      outline: none;
      background: transparent;
    }
    
     .submit-btn{
      width: 85%;
      padding: 10px 30px;
      cursor: pointer;
      display: block;
      margin: auto;
      background: linear-gradient(to right, #ff105f, #ffad06);
      border: 0;
      outline: none;
      border-radius: 30px;
    }
    
     .check-box{   /* this is for check box style */
      margin: 30px 10px 30px 0px;
    }
     
      #register{
      left: 450px;
    }
    
       .input-group{     /* this style is for form */
      top: 180px;
      position: absolute;
      width: 280px;
      transition: .5s;
    }
    
</style>

</head>
<!---html---->
<body>
  <section id="header">
        <a href="#"><img src="https://www.vectorlogo.zone/logos/shopify/shopify-ar21.png" class="logo" width="12px " height="10%" id="image"></a>

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
    
    <input type="hidden" id="status"  value="<%=request.getAttribute("status")%>">
        <form action="user-register" method="post" id="register" class="input-group">
        <input type="text" class="input-field" placeholder="Email id" id="name" name="email" required>
      
        <input type="password" class="input-field" placeholder="Password" id="pass" name="password" required>

        <input type="password" class="input-field" placeholder="Confirm Password" name="confpassword" required>
        
        <input type="checkbox" class="check-box" required><span>I agree to the terms & conditions</span>
        <button type="submit" class="submit-btn" >Register</button>
      </form>
    </div>

  </div>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">

var status= document.getElementById("status");
if (status == "success"){
	swal("Congrats, you successfully registered");
}
</script>
  </body>
</html>