<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String couponName=request.getParameter("couponName");
String couponCode=request.getParameter("couponCode");
String discount=request.getParameter("discount");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into coupon (couponName,couponCode,discount) values(?,?,?)");
	ps.setString(1, couponName);
	ps.setString(2, couponCode);
	ps.setString(3, discount);
	
	ps.executeUpdate();
	response.sendRedirect("Coupon.jsp?msg=done");
}
catch(Exception e)
{
	response.sendRedirect("Coupon.jsp?msg=wrong");
}
%>