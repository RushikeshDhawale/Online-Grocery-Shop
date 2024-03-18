<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Category Form</title>
<link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
<style>
body {
	justify-content: center;
	height: 100vh;
	background: url('img/ad.jpg') center center fixed;
	background-size: cover;
	color: white; /* Set text color to white */
}

.container {
	max-width: 600px;
	margin: 0 auto;
	background: rgba(42, 7, 7, 0.8); /* Set background color with alpha for transparency */
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-size: 18px;
	margin-bottom: 5px;
}

input, select {
	width: 100%;
	padding: 10px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

.add-button {
	background: #4CAF50;
	color: #fff;
	padding: 10px 20px;
	font-size: 16px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.home-button {
	background: #3498db;
	color: #fff;
	padding: 10px 20px;
	font-size: 16px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	float: right;
}

@media screen and (max-width: 768px) {
	.container {
		width: 80%;
	}
}
</style>
</head>
<body>

	<div class="container">
		<button class="home-button">
			<a href="#">Home</a>
		</button>
		<h3 align="center"><%@include file="Message/message.jsp"%></h3>
		<h2 align="center">Add Category Form</h2>
		<form action="addcategory" method="post">
			<div class="form-group">
				<label for="department">Department:</label> <select id="department"
					name="department" required="required">
					<option value="" disabled selected>Select an option</option>
					<option value="grocery">Grocery</option>
					<option value="stationary">Stationary</option>
					<option value="confectionery">Confectionery</option>
					<option value="vegetable">Vegetable</option>
					<option value="fruit">Fruit</option>
				</select>
			</div>
			<div class="form-group">
				<label for="category">Product Category:</label> <input type="text"
					id="category" name="category" placeholder="Enter product category"
					required="required">
			</div>
			<button type="submit" class="add-button">Add</button>
		</form>
	</div>

</body>
</html>
