
<%
String message =(String) session.getAttribute("msg");
if(message!=null){
	

%>
<%=message %>
<%
session.removeAttribute("msg");
}
%>