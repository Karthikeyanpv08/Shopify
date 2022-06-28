<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>

<style>
   body {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-image: url("https://t3.ftcdn.net/jpg/02/64/92/28/360_F_264922838_NErJEovZiP9MTa49apqL1Vs3f88ZT8Dg.jpg");
  background-repeat: no-repeat;
  background-position: float;
  background-size: cover;
}

.button{
margin-left: 40%;
}
</style>
</head>
<body >

<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Product Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<%
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
}
catch(Exception e)
{
	System.out.println(e);
}

%>
<form action="addNewProductAction.jsp" method="post">

<h3 style="color: yellow;">Product ID: <% out.println(id); %> </h3>
<input type="hidden" name="id" value="<% out.println(id); %>">


<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Name" required>
 
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
<select class="input-style" name="category" >
<option value="Electronics">Electronics</option>
<option value="Fashion">Fashion</option>
<option value="Accessories">Accessories</option>
<option value="Toys">Toys</option>
<option value="Kitchen">Kitchen</option>
</select>
   
<hr>
</div>
<div class="left-div">
<h3>Enter URL</h3>
 <input class="input-style" type="text" name="url" placeholder="Enter URL" required>
</div>
<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="number" name="price" placeholder="Enter Price" required>
 
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
<select class="input-style" name="active" >
<option value="Yes">Yes</option>
<option value="No">No</option>
</select>
   
<hr>
</div>
 <button class="button" style="width: 20%;" >Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>