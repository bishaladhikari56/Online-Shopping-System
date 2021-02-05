<%@page import="Project.ConnectionProviderClass"%>
<%@page import="java.sql.*" %>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="Cancel";
try
{
	Connection con=ConnectionProviderClass.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not null");
	response.sendRedirect("ordersReceived.jsp?msg=canceled");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("ordersReceived.jsp?msg=wrong");

}
%>