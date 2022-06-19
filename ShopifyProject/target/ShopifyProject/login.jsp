<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="includes/header.jsp" %>
<title>Login Page</title>
</head>
<body>
<div class="container">
<div class="card w-50 mx-auto my-5">
<div class="card-header text-center"> User login</div>
<div class="card-body">

<form action="" method="post">
<div>
<label>Email Address</label>
<input type="email" class="form-control" name="login-email " plaaceholder="Enter your Email"  required>
</div>

<div>
<label>Password</label>
<input type="password" class="form-control" name="login-password " plaaceholder="********"  required>
</div>
<div class="text-center" >
<button type="submit" class="btn btn-primary">Login</button>
</div>

</form>
</div>
</div>
</div>
<%@include file="includes/footer.jsp"%>
</body>
</html>