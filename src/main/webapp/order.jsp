<%@page import="com.mughalsaraibazaar.main.model.PlacedOrderPage"%>
<%@page import="com.mughalsaraibazaar.main.dao.PlacedOrderDao"%>
<%@page
	import="com.mughalsaraibazaar.main.model.CheckoutOrderCustomerDetailsPage"%>
<%@page import="java.util.List"%>
<%@page
	import="com.mughalsaraibazaar.main.dao.CheckoutOrderCustomerDetailsDao"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.mughalsaraibazaar.main.ApplicationContextClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="Session/session.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="refresh" content="5">
<title>New Order</title>
<link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

header {
	background-color: #333;
	color: #fff;
	padding: 10px;
	text-align: center;
}

.container {
	max-width: 800px;
	margin: 20px auto;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 5px;
}

input[type="text"], select, button {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

img {
	max-width: 100%;
	height: auto;
	margin-top: 10px;
}

button {
	width: 20%;
	background-color: #4CAF50;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-left: 300px;
}

button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>

	<header>
		<h3>
			<a style="color: white;" href="admin.jsp">ADMIN HOME</a>
		</h3>
		<h1>New Order</h1>
		<h2><%@include file="Message/message.jsp" %></h2>
	</header>

	<%
	int t_price = 0;
	ApplicationContext ac = ApplicationContextClass.getApplicationContext();

	PlacedOrderDao pod = ac.getBean(PlacedOrderDao.class);
	CheckoutOrderCustomerDetailsDao ccd = ac.getBean(CheckoutOrderCustomerDetailsDao.class);

	List<CheckoutOrderCustomerDetailsPage> cd = ccd.findAll();

	int count = 1;
	for (CheckoutOrderCustomerDetailsPage list : cd) {

		if (list.getIsDelivered().equalsIgnoreCase("No")) {
	%>

	<div class="container">


		<b> SN:<%=count%>
		</b><br>
		<h2>
			<b> Name:</b>
			<%=list.getName()%>
		</h2>
		<p>
			<b>Address:</b>
			<%=list.getApartment()%></p>
		<p>
			<b>Address:</b>
			<%=list.getStreet()%></p>
		<p>
			<b> Town:</b>
			<%=list.getCity()%></p>
		<p>
			<b>Address:</b>
			<%=list.getPostcode()%></p>
		<p>
			<b>Order phone:</b>
			<%=list.getMobile()%></p>
		<p>
			<b>Signup phone:</b>
			<%=list.getPhone()%>
		</p>
		<p>
			<b> Date & Time: </b><%=list.getDate()%></p>
		<p>
			<b>Note: </b><%=list.getNotes()%></p>

		<%
		String orderID = list.getOrderID();
		List<PlacedOrderPage> pop = pod.readOrder(orderID);

		for (PlacedOrderPage li : pop) {

			int c = li.getCount();
			String price = li.getMainprice();

			int price_count = Integer.parseInt(price) * c;
			t_price = t_price + price_count;
		%>


		<img alt="img" style="width: 100px;"
			src="img/productsFile/<%=li.getProductImage()%>"> <br>
		<br> <b> Product title:</b><%=li.getTitle()%>
		<br> <b> Product Price:</b>Rs.<%=li.getMainprice()%>
		/- <br> <b> Count:</b><%=li.getCount()%>
		<br>
		<br>

		<%
		}
		%>

		<%
		String dc = list.getDelivery();
		if (!dc.equalsIgnoreCase("Free")) {

			t_price = t_price + Integer.parseInt(dc);
		}
		%>
		
		

		<b> Total price: <%=t_price%></b>


		<form action="delivered" method="post">
			<select name="confirm" required="required">
				<option value="" disabled selected>Select</option>
				<option value="confirm delivery">Confirm delivery</option>
			</select> <input type="hidden" name="sn" value="<%=list.getSn()%>">
			<button>Delivered</button>
		</form>

		<br>
		<br>
	</div>
	<%
	t_price = 0;} /* Closing of If Statement  */
	count++;
	} /* Closing of For Loop */
	%>
</body>
</html>