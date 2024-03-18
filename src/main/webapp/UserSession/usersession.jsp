<!-- 
 For getting a user name or password we can use session object for unique data transformations into tables
 and we can store or add to value into cart uniquely.
 -->

<%@page import="java.util.ArrayList"%>
<%

ArrayList<String> loginList = (ArrayList<String>)session.getAttribute("userlogin");
if(loginList==null){
	response.sendRedirect("index.jsp");
	return;
}

%>