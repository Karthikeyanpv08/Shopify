<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.project.ConnectionProvider"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
if(window.history.forward(1) != null){
	window.history.forward(1);
}
</script>

<style>

body
{

  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-image: url("https://png.pngtree.com/thumb_back/fh260/back_our/20190619/ourmid/pngtree-taobao-vector-creative-technology-online-shopping-illustration-computer-finger-poster-image_131803.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

a
{
	text-decoration: none;
}
.sticky {
  position: -webkit-sticky;
  position: sticky;
  top: 0;
}

table {
  border: 1px solid #ccc;
  border-collapse: collapse;
  margin: 0;
  padding: 0;
  width: 100%;
  /*margin-left: 5%;*/
  table-layout: fixed;
}

table caption {
  font-size: 1.5em;
  margin: .5em 0 .75em;
}

table tr {
  background-color: #f8f8f8;
  border: 1px solid #ddd;
  padding: .35em;
}

table th,
table td {
  padding: .625em;
  text-align: center;
}

table th {
  font-size: .85em;
  letter-spacing: .1em;
  text-transform: uppercase;
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }

  table caption {
    font-size: 1.3em;
  }
  
  table thead {
    border: none;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
  }
  
  table tr {
    border-bottom: 3px solid #ddd;
    display: block;
    margin-bottom: .625em;
  }
  
  table td {
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .8em;
    text-align: right;
  }
  
  table td::before {
    /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
    content: attr(data-label);
    float: left;
    font-weight: bold;
    text-transform: uppercase;
  }
  
  table td:last-child {
    border-bottom: 0;
  }
}

/*Header Css*/
* {box-sizing: border-box;}
    
    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
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
  outline: 4px solid orange;
  background-color:rgb(224, 255, 219);     /* oranges! yey */
}

.button {
  background-color: aqua;
  border: none;
  color: black;
  padding: 12px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  margin-left:5%;
  font-size: 16px;
  width: 90%;
   border-radius: 25px;
}

.button:hover {
  background-color: #555555;
  color: white;
}

hr
{
	width: 90%
}
h3
{
	text-align: center;
	color: white;
}
.alert
{
	color:yellow;
}

.profile-style
{
	border-style: dotted;
	
}

.left-div
{
	width: 50%;
	display:inline-block;
}

.right-div
{
	float:right;
	width: 50%;
	display:inline-block;
}

.btn{
   background-color:blue;
   color:#67c722;
   width:40%;
   height:50%;
   padding:10px;
   border-radius:5px;
   font-size:30px;
  
}

.coupon{
   font-size:30px;
   padding:10px;
   margin-left:30%;
   position: relative;
   align-items: center;
   left: 5%;
   

}
#couponCode{
height:40%;
padding:20px;
width:40%;
margin-bottom:5px;

}

.back-btn{
width:30%;
display:block;
border-style: solid;
background-color:#d2eb34;
padding:14px 20px;
font-size:15px;
cursor:pointer;
text-align:center;
border-radius: 20px;
position: relative;
top: 42px;


}

.btn2{
align-items:right;
width:30%;
display:block;
border-style: solid;
background-color:#d2eb34;
padding:14px 20px;
font-size:15px;
cursor:pointer;
text-align:center;
margin-left:70%;
border-radius: 20px;
}
</style>

</head>

<body>

<br>
<table>
<thead>
<%
int total=0;
int sno=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
	while (rs1.next()){
		
		total=rs1.getInt(1);
		
	
%>
          <tr>
          <th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i><span id="totalAmount" ><%out.println(total);%></span> </th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
        
        <%
	}
	ResultSet rs=st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL"); 
        	while(rs.next()){
        		 %>
          <tr>
          <%sno=sno+1;%>
           <td><%out.println(sno);%></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i> <%= rs.getString(5) %></td>
            <td> <%= rs.getString(9) %></td>
            <td><i class="fa fa-inr"></i> <%= rs.getString(11) %></td>
            </tr>
         <%} 
        	        
        		  
                  
                    
                 
        	ResultSet rs2=st.executeQuery("select * from users where email='"+email+"'");
          
         while(rs2.next()){
        	 %>
        </tbody>
      </table>
      
 
    


      
      
<hr style="width: 100%">


<%
}%>
         <div class="coupon">
         <label>Coupon code: </label><br><br>
         <input type="text" id="couponCode" placeholder="Enter code" ><br><br>
         <label>Coupon discount percentage: </label>
         <span id="discount"></span>
         <br><br><button onclick="applyCouponCode()" class="btn">Apply Coupon code</button>
         <span id="couponvalid" ></span>
         </div>
         
         
       <button class="back-btn"> <a href="myCart.jsp" ><i class='fas fa-arrow-circle-left'> Back</i></a></button>
       <button class="btn2"> <a href="addressForPay.jsp"><i class='fas fa-arrow-circle-right'> <b>Continue for address</b></i></a></button>
        
 
<%}
catch(Exception e){
	System.out.println(e);
}

%>

      <br>
      <br>
      <br>
<script >
function applyCouponCode(){
	<%
	
	Connection con=ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs4=st.executeQuery("select * from coupon");
	List<Integer> couponDis = new ArrayList<Integer>();
	List<String> couponCode = new ArrayList<String>();
	while(rs4.next()){
	couponDis.add(rs4.getInt(4));
	couponCode.add(rs4.getString(3));
	%>
		
		<%
	}
	%>
	var couponDis=('<%=couponDis%>')
	var couponCode=('<%=couponCode%>')
	var discount
	var totalAmount=document.getElementById("totalAmount").innerHTML
	var originalAmount=<%=total%>
	console.log(originalAmount);
	var inputValue = document.getElementById("couponCode").value
	var ind;
	couponCode=couponCode.replace(/'/g, '"');
	couponCode=couponCode.slice(1,-1);
	couponCode=couponCode.split(', ');
	couponDis=couponDis.slice(1,-1);
	couponDis=couponDis.split(', ');
	couponCode.forEach((e,i) => {
		if(e == inputValue){
			ind = i;
		
		}else{
			document.getElementById("couponvalid").innerHTML="Coupon is invalid"
			document.getElementById("couponvalid").style.color="red"
			document.getElementById("totalAmount").innerHTML=originalAmount
		}
	})
	console.log(couponDis[ind]);
	if(couponDis[ind]!=undefined){
		discount=totalAmount*couponDis[ind]/100
		console.log(discount)
		totalAmount=totalAmount-discount
		document.getElementById("totalAmount").innerHTML=totalAmount
		document.getElementById("discount").innerHTML=couponDis[ind]
		document.getElementById("couponvalid").innerHTML="Coupon is valid"
		document.getElementById("couponvalid").style.color="green"

	}
	
	
}
</script>
</body>
</html>

















