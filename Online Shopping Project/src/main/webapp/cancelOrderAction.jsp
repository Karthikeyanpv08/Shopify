<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="Cancel";
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update cart set status='"+status+"'where product_id='"+id+"' and email='"+email+"' and address is noy NULL");
	response.sendRedirect("ordersRecived.jsp?msg=cancel");
	}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("ordersRecived.jsp?msg=wrong");
}
%>