<%
String msg = (String) session.getAttribute("login");
if (msg == null) {
	response.sendRedirect("login.jsp");
	return;
}
%>