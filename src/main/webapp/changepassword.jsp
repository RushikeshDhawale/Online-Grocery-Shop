<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Change Password</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	background: url('img/ad.jpg') center center fixed;
	background-size: cover;
	text-decoration: white;
}

body {
	font-family: sans-serif;
}

.container {
	display: flex;
	flex-direction: column;
	height: 100vh;
	align-items: center;
	justify-content: center;
}

.card {
	width: 500px;
	margin-bottom: 20px;
}

.card-header {
	background-color: #f8f9fa;
	padding: 20px;
}

.card-body {
	padding: 20px;
}

.form-group {
	margin-bottom: 15px;
}

.form-label {
	font-weight: bold;
}

.form-control {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.btn {
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.btn-primary {
	background-color: #007bff;
	color: #fff;
}
</style>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h3 align="center"><%@include file="Message/message.jsp"%></h3>
				<h2>Change Username or Password</h2>
			</div>

			<div class="card-body">
				<form action="updatecredentials" method="post">
					<div class="form-group">
						<label for="newusername" class="form-label">New Username</label> <input
							type="text" class="form-control" name="nuser" id="nuser"
							placeholder="Enter New User Name" required>
					</div>

					<div class="form-group">
						<label for="reusername" class="form-label">Re-enter
							Username</label> <input type="text" class="form-control" name="ruser"
							id="ruser" placeholder="Re-enter New User Name" required>
					</div>

					<div class="form-group">
						<label for="newPassword" class="form-label">New Password</label> <input
							type="password" class="form-control" name="npass"
							id="newPassword" placeholder="Enter new password" required>
					</div>

					<div class="form-group">
						<label for="reenterPassword" class="form-label">Re-enter
							Password</label> <input type="password" class="form-control" name="rpass"
							id="reenterPassword" placeholder="Re-enter new password" required>
					</div>

					<button type="submit" class="btn btn-primary">Change
						Password</button>
				</form>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>
