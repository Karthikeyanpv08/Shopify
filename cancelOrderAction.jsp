<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.grtParameter("id");
String email=request.getParamerter("email");
String status="Cancel";
try
{
	Connnection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	sst.executeUpdate("update cart set status='"+status+"'where product_id='"+id+"' and email='"+email+"' and address is noy NULL");
	response.sendRedirect("ordersRecived.jsp?msg=cancel");
	}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("ordersRecived.jsp?msg=wrong");
}
%>