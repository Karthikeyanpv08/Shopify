<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<style>
    .input-style {
  width: 40%;
  padding: 12px 20px;
  margin-left:30%;
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
  background-color: white; /* Green */
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
  margin-left:30%;
  font-size: 16px;
}

.button:hover {
  background-color: #555555;
  color: white;
}

hr
{
	width: 40%
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
</style>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>    
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
String msg=request.getParameter("msg");
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
 <form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Securtiy Question</h3>
<select class="input-style" name="SecurityQuestion">
    <option value="What is the name of your first pet?">What is the name of your first pet?</option>
    <option value="What elementary school did you attend?">What elementary school did you attend?</option>
    <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
    <option value="What is your first mobile number? ">What is your first mobile number?</option>
</select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter your new answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter password(For Security)" required>
<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>