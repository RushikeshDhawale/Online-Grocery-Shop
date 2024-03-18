<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Session/session.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">


<title>Leelai Admin</title>
<link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
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
	
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/admin.css" rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
</head>
<body>

	<div class="container mt-5 pt-4">

		<h3 style="text-align: center;"></h3>


		<div class="row align-items-end mb-4 pb-2">
			<div class="col-md-8">
				<div class="section-title text-center text-md-start">
					<h4 class="title mb-4">ADMIN PANEL</h4>
					<h3 style="color: red;">
						<%@include file="Message/message.jsp"%>
					</h3>
					<p class="text-muted mb-0 para-desc">Discover a new era of
						convenience with leelai Mart, your go-to online grocery
						store. We bring you fresh, top-notch products, ensuring a seamless
						shopping experience. Say goodbye to hassles and hello to quality
						delivered right to your doorstep – leelai Mart, where
						grocery shopping becomes a breeze..</p>
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">



						<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">
							read</span>
						<h5>Contact List</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class="fa fa-home"
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">BlackCoder</a></span> <span class="text-muted d-block"><i
								class="fa fa-map-marker" aria-hidden="true"></i> INDIA</span>
						</div>
						<div class="mt-3">
							<a href="read-contact.jsp" class="btn btn-info">Read Message</a>
						</div>
					</div>
				</div>
			</div>


			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">

						<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">insert</span>
						<h5>Add Product</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class="fa fa-home"
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">BlackCoder</a></span> <span class="text-muted d-block"><i
								class="fa fa-map-marker" aria-hidden="true"></i> INDIA</span>
						</div>
						<div class="mt-3">
							<a href="addproduct.jsp" class="btn btn-warning">Add Product</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">

						<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">insert</span>
						<h5>Add Category</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class="fa fa-home"
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">BlackCoder</a></span> <span class="text-muted d-block"><i
								class="fa fa-map-marker" aria-hidden="true"></i> INDIA</span>
						</div>
						<div class="mt-3">
							<a href="addcategory.jsp" class="btn btn-success">Add
								Category</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">

						<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">read</span>
						<h5>Read Product</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class="fa fa-home"
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">BlackCoder</a></span> <span class="text-muted d-block"><i
								class="fa fa-map-marker" aria-hidden="true"></i> INDIA</span>
						</div>
						<div class="mt-3">
							<a href="adminreadproduct.jsp" class="btn btn-dark">Read Product</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">

						<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">insert</span>
						<h5>Add Area With Delivery</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class="fa fa-home"
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">BlackCoder</a></span> <span class="text-muted d-block"><i
								class="fa fa-map-marker" aria-hidden="true"></i> INDIA</span>
						</div>
						<div class="mt-3">
							<a href="1addarea.jsp" class="btn btn-info">Add Area With
								Delivery</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">

						<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">read</span>
						<h5>Check Order</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class="fa fa-home"
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">BlackCoder</a></span> <span class="text-muted d-block"><i
								class="fa fa-map-marker" aria-hidden="true"></i> INDIA</span>
						</div>
						<div class="mt-3">
							<a href="order.jsp" class="btn btn-warning">Check Order</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">

						<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">read</span>
						<h5>Order History</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class="fa fa-home"
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">BlackCoder</a></span> <span class="text-muted d-block"><i
								class="fa fa-map-marker" aria-hidden="true"></i> INDIA</span>
						</div>
						<div class="mt-3">
							<a href="adminorderhistory.jsp" class="btn btn-danger">Order
								History</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">

						<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">visit</span>
						<h5>VISIT MAIN WEBSITE</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class="fa fa-home"
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">BlackCoder</a></span> <span class="text-muted d-block"><i
								class="fa fa-map-marker" aria-hidden="true"></i> INDIA</span>
						</div>
						<div class="mt-3">
							<a href="home.jsp" class="btn btn-info">VISIT WEBSITE</a>
						</div>
					</div>
				</div>
			</div>


			<!-- A button to open the popup form -->

			<div style="text-align: center; padding-top: 50px;" class="mt-3">


				<!-- <button  class="open-button" onclick="openForm()">CHANGE CREDENTIALS</button -->
				<a href="changepassword.jsp" class="btn btn-primary">CHANGE
					CREDENTIALS</a>

				<!-- The form -->
				<!-- <div class="form-popup" id="myForm">
			  <form action="changecredential" method="post" class="form-container">
			    <h1>CHANGE</h1>
			    
			    <label for="email"><b>New Username</b></label>
			    <input type="text" placeholder="Enter old username" name="nuser" required>
			
			    <label for="email"><b>Confirm New Username</b></label>
			    <input type="text" placeholder="Enter old password" name="cnuser" required>
			
			    <label for="psw"><b>New Password</b></label>
			    <input type="password" placeholder="Enter Password" name="npass" required>
			    
			    <label for="psw"><b>Confirm New Password</b></label>
			    <input type="password" placeholder="Enter Confirm Password" name="cnpass" required>
			
			    <button type="submit" class="btn">Update</button>
			    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
			  </form>
			</div>
             -->
				<!--  <form action="Auth" method="post" >
                    <input type="hidden" name="check" value="logout" >
                    <button class="btn btn-primary" >LOGOUT</button>
                </form> -->

				<a class="btn btn-primary" href="logout?logout=true">logout</a><br>
			</div>
		</div>
	</div>

	<script>
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}
	</script>

	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		
	</script>

</body>
</html>





