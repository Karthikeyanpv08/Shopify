<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- font awesome cdn link  -->
  <script src="https://kit.fontawesome.com/cd856d88be.js" crossorigin="anonymous"></script>
  <title>Login & Register</title>
  <style>
    *{
      margin: 0;
      padding: 0;
      font-family: sans-serif;
    }
    .hero{
      height: 100%;
      width: 100%;
      background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url('https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/stock%2FGettyImages-1221124797');
      background-position: center;
      background-size: cover;
      position: absolute;
    }
    .form-box{
      width: 380px;
      height: 450px;
      position: relative;
      margin: 6% auto;
      background-color:#fff;
      padding: 5px;
      overflow: hidden;   /* this property is to hide the second form when we click on the either login or register button */
    }
    .button-box{
      width: 220px;
      margin: 35px auto;
      position: relative;
      box-shadow: 0 0 20px 9px #ff61241f;
      border-radius: 30px;
    }
    .toggle-btn{
      padding: 10px 30px;
      cursor: pointer;
      background: transparent;
      border: 0;
      outline: none;
      position: relative;
    }
    #btn{
      top: 0;
      left: 0;
      position: absolute;
      width: 110px;
      height: 100%;
      background:linear-gradient(to right, #ff105f, #ffad06);
      border-radius: 40px;
      transform: .5s;
    }
    .social-icons{
      margin: 30px auto;
      text-align: center;
    }
    .social-icons i{
      width: 30px;
      background:linear-gradient(to right, #ff105f, #ffad06);
      padding: 4px 0px;   /* inner space inside the icon*/
      margin: 0px 12px;
      box-shadow: 0 0 20px 0 #7f7f7f3d;
      cursor: pointer;
      border-radius: 50%;
    }
    .input-group{     /* this style is for form */
      top: 180px;
      position: absolute;
      width: 280px;
      transition: .5s;
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
    span{
      color: #777;
      font-size: 12px;
      bottom: 68px;
      position: absolute;
    }
    #login{
      left: 50px;
    }
    
     #register{
      left: 450px;
    }
    
  
  </style>
</head>
<body>
  <div class="hero">
    <div class="form-box">
      <div class="button-box">
        <div id="btn"></div>
        <button type="button" class="toggle-btn" onclick="login()">Log in</button>
        <button type="button" class="toggle-btn" onclick="register()">Register</button>
      </div>
      <div class="social-icons">
        <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
        <a href="#"><i class="fa-brands fa-twitter"></i></a>
        <a href="#"><i class="fa-brands fa-google"></i></a>
      </div>
      <form action="user-login" method="post" id="login" class="input-group" onsubmit=" return validate()">
        <input type="text" class="input-field" placeholder="Username" name="login-email" id="uname" >
        <label id="label1" style="color: red; visibility : hidden";>Invalid name</label>
        <input type="password" class="input-field" placeholder="Password"  name ="login-password" id="password" >
        <label id="label2" style="color: red; visibility : hidden">invalid password</label>
        <br>
        <input type="checkbox" class="check-box"><span>Remember Password</span>
        <button type="submit" class="submit-btn">Log  in</button>
      </form>
      
      
      <!--------------------------------------------- Register form --------------------------------------------------------->
  	<form action="user-Register" method="post" id="register" class="input-group">
        <input type="text" class="input-field" placeholder="Email id" id="name" name="email" required>
      
        <input type="password" class="input-field" placeholder="Password" id="pass" name="password" required>

        <input type="password" class="input-field" placeholder="Confirm Password" name="confpassword" required>
        
        <input type="checkbox" class="check-box" required><span>I agree to the terms & conditions</span>
        <button type="submit" class="submit-btn" >Register</button>
      </form>
    </div>

  <script>
    var x = document.getElementById("login");
    var y = document.getElementById("register");
    var z = document.getElementById("btn");

    function register(){
      x.style.left = "-400px";
      y.style.left = "50px";
      z.style.left = "110px";
    }

    function login(){
      x.style.left = "50px";
      y.style.left = "450px";
      z.style.left = "0px";
     
    }
    
    
    function validate(){
    	var uname= document.getElementById("uname");
    	var password=document.getElementById("password");
    	if (uname.value.trim()==""){
    		//alert("Blank username");
    		//uname.style.border="solid 3px red";
    		document.getElementById("label1").style.visibility="visible";
    		return false;n
    	}
    	else if(password.value.trim()==""){
    		//alert("Blank password");
    		//password.style.border="solid 3px red";
    		document.getElementById("label2").style.visibility="visible";
    		return false;
    	}
    	else if(password.value.trim().length<5){
    		alert("Password too short");
    		return false;
    	}
    	else{
    		return true;
    	}
    }
    
    
   /*function registerform(){
       	var name= document.getElementById("name");
    	var pass=document.getElementById("pass");
    	var confpassword =document.getElementById("confpassword");
    	if (name.value.trim()==""){
    		//alert("Blank username");
    		//uname.style.border="solid 3px red";
    		document.getElementById("label3").style.visibility="visible";
    		return false;
    	}
    	else if(pass.value.trim()==""){
    		//alert("Blank password");
    		password.style.border="solid 3px red";
    		document.getElementById("label4").style.visibility="visible";
    		return false;
    	}
    	else if(pass.value.trim().length<5){
    		alert("Password too short");
    		return false;
    	}
    	else if(confpassword.value.trim()==""){
    		//alert("Blank password");
    		pass.style.border="solid 3px red";
    		document.getElementById("label5").style.visibility="visible";
    		return false;
    	}
    	else if(confpassword.value.trim().length<5){
    		alert("Password too short");
    		return false;
    	}
    	else if (){
    		if (pass==confpassword){
    			return true;
    		}else{
    			return false;
    		}
    	}
    	}
    	else{
    		return true;
    	}
    	
    }*/
  </script>
</body>
</html>