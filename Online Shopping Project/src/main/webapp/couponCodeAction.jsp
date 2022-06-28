<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
Object id=session.getAttribute("id");
String couponCode=request.getParameter("couponCode");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st= con.createStatement();

	ResultSet rs4=st.executeQuery("select * from coupon");

	while(rs4.next()){
		System.out.println("HI2");
		System.out.println(rs4);
	}
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	
	
}


%>