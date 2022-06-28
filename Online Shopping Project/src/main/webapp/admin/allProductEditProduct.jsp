<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>


body
{

  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-image: url("https://images.unsplash.com/photo-1519750783826-e2420f4d687f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJldHR5JTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&w=1000&q=80");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}


h3
{
	color: yellow;
	text-align: center;
}
table{
border-collapse: collapse;
width: 100%;


}
td{
text-allign: center;
white-space: wrap;
}

</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">All Products <i class='fab fa-elementor'></i></div>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Product Successfully Updated!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col" style="width: 70%" >Image</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
       <%
       try
       {
    	   Connection con=ConnectionProvider.getCon();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select *from product");
    	   while(rs.next())
    	   {

      
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
          </tr>
          <%
    	   }
       }
          
           catch(Exception e)
       {
        	   System.out.println(e);
       }%>
         
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>