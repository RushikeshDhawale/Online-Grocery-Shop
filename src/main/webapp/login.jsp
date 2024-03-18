<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap')
	;

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	background: url("img/ad.jpg");
	font-family: 'Poppins', sans-serif;
}

form {
	border-radius: 20px;
	margin-top: 150px !important;
	width: 24% !important;
	background-color: white !important;
	padding: 50px;
}

.btn-primary {
	width: 100%;
	border: none;
	border-radius: 50px;
	background: black;
	font-family: 'Poppins', sans-serif;
	/* Apply Poppins font to the button */
}

.form-control {
	color: rgba(0, 0, 0, .87);
	border-bottom-color: rgba(0, 0, 0, .42);
	box-shadow: none !important;
	border: none;
	border-bottom: 1px solid;
	border-radius: 4px 4px 0 0;
	font-family: 'Poppins', sans-serif;
	/* Apply Poppins font to the form control */
}

h4 {
	font-size: 2rem !important;
	font-weight: 700;
	font-family: 'Poppins', sans-serif;
	/* Apply Poppins font to the heading */
}

.form-label {
	font-weight: 800 !important;
	font-family: 'Poppins', sans-serif;
	/* Apply Poppins font to the form label */
}

@media only screen and (max-width: 600px) {
	form {
		width: 100% !important;
	}
}
</style>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->

<link

	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href="./style.css" rel="stylesheet">
<title>Admin Login</title>
<link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
</head>
<body>
	<div class="container-fluid">
		<form action="login" method="post" class="mx-auto">

			<img class="text-center" align="middle" alt="notfound"
				src="img/logo.png">


			<!-- <h4 class="text-center">Login</h4> -->
			<div class="mb-3 mt-5">
				<label for="exampleInputEmail1" class="form-label">User Name</label>
				<input type="text" name="username" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<input type="password" name="password" class="form-control"
					id="exampleInputPassword1">
				<div id="emailHelp" class="form-text mt-3">Forget password ?</div>
			</div>

			<button type="submit" class="btn btn-primary mt-5">Login</button>
		</form>
	</div>


	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>