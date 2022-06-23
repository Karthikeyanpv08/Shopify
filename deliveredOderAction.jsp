<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.grtParameter("id");
String email=request.getParamerter("email");
String status="Deliverd";
try
{
	Connnection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	sst.executeUpdate("update cart set status='"+status+"'where product_id='"+id+"' and email='"+email+"' and address is not NULL");
	response.sendRedirect("ordersRecived.jsp?msg=deliverd");
	}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("orderssRecived.jsp?msg=wrong");
}
%>