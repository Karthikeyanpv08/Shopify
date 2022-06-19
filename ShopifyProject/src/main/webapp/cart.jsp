<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.shopify.connection.DbConnect"%>
<%@page import="com.shopify.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>
<%
 
User auth=(User) request.getSession().getAttribute("auth");
if(auth!=null){
	request.setAttribute("auth", auth);
}

%>

<style type="text/css">
<!-----CSS----->
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
</style>

<%@include file="/includes/header.jsp" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" >
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

<div class="container my-3">
		<div class="d-flex py-3"><h3>Total Price: Rs.30000 </h3> <a class="mx-3 btn btn-primary" href="#">Check Out</a></div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
				
				<tr>
					<td>LapTop</td>
					<td>Electronics</td>
					<td>Rs.30000</td>
					<td>
						<form action="" method="" class="form-inline">
						<input type="hidden" name="id" value="" class="form-input">
							<div class="form-group d-flex justify-content-between">
								<a class="btn bnt-sm btn-incre" href="#"><i class="fas fa-plus-square"></i></a> 
								<input type="text" name="quantity" class="form-control"  value="" readonly> 
								<a class="btn btn-sm btn-decre" href="#"><i class="fas fa-minus-square"></i></a>
							</div>
							<button type="submit" class="btn btn-primary btn-sm">Buy</button>
						</form>
					</td>
					<td><a href="#" class="btn btn-sm btn-danger">Remove</a></td>
				</tr>
				
				<tr>
					<td>Shoes</td>
					<td>Men's Wear</td>
					<td>Rs.300</td>
					<td>
						<form action="" method="" class="form-inline">
						<input type="hidden" name="id" value="" class="form-input">
							<div class="form-group d-flex justify-content-between">
								<a class="btn bnt-sm btn-incre" href="#"><i class="fas fa-plus-square"></i></a> 
								<input type="text" name="quantity" class="form-control"  value="" readonly> 
								<a class="btn btn-sm btn-decre" href="#"><i class="fas fa-minus-square"></i></a>
							</div>
							<button type="submit" class="btn btn-primary btn-sm">Buy</button>
						</form>
					</td>
					<td><a href="#" class="btn btn-sm btn-danger">Remove</a></td>
				</tr>
				
				<tr>
					<td>Mobile </td>
					<td>Electronics</td>
					<td>Rs.10000</td>
					<td>
						<form action="" method="" class="form-inline">
						<input type="hidden" name="id" value="" class="form-input">
							<div class="form-group d-flex justify-content-between">
								<a class="btn bnt-sm btn-incre" href="#"><i class="fas fa-plus-square"></i></a> 
								<input type="text" name="quantity" class="form-control"  value="" readonly> 
								<a class="btn btn-sm btn-decre" href="#"><i class="fas fa-minus-square"></i></a>
							</div>
							<button type="submit" class="btn btn-primary btn-sm">Buy</button>
						</form>
					</td>
					<td><a href="#" class="btn btn-sm btn-danger">Remove</a></td>
				</tr>
			
			</tbody>
		</table>
 	</div>
<%@include file="/includes/footer.jsp" %>
</body>
</html>