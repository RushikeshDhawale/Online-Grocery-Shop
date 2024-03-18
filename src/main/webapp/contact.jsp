<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="UserSession/usersession.jsp" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Leelai | Mart</title>
<link rel="shortcut icon" href="img/logo.png" type="image/x-icon">


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<%@include file="humberger.jsp" %>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<%@include file="header.jsp" %>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<%@include file="herosection.jsp" %>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Contact Us</h2>
						<h2><%@include file="Message/message.jsp" %></h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Contact Us</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Contact Section Begin -->
	<section class="contact spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_phone"></span>
						<h4>Phone</h4>
						<p>+91 9096334334</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_pin_alt"></span>
						<h4>Address</h4>
						<p> Gangotri Colony, Akoli Rd, Amravati, Maharashtra 444607</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_clock_alt"></span>
						<h4>Open time</h4>
						<p>10:00 am to 23:00 pm</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_mail_alt"></span>
						<h4>Email</h4>
						<p>leelaimart@gmail.com</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact Section End -->

	<!-- Map Begin -->
	<div class="map">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3727.4347318082537!2d77.73437857525293!3d20.89482238072124!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd6bb5a23f6a7bd%3A0x988e6280fbf241a!2sLEELAI%20MART!5e0!3m2!1sen!2sin!4v1704042582889!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade""
			height="500" style="border: 0;" allowfullscreen=""
			aria-hidden="false" tabindex="0"></iframe>
		<div class="map-inside">
			<i class="icon_pin"></i>
			<div class="inside-widget">
				<h4>LEELAI MART</h4>
				<ul>
					<li>Phone: +12-345-6789</li>
					<li>Add: Gangotri Colony, Akoli Rd, Amravati, Maharashtra 444607</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Map End -->



	<!-- Contact Form Begin -->
	<div class="contact-form spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="contact__form__title">
						<h2>Leave Message</h2>
					</div>
				</div>
				
			</div>
			<form action="contact" method="post">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<input type="text" name="name" placeholder="Your name">
					</div>
					<div class="col-lg-6 col-md-6">
						<input type="text" name="email" placeholder="Your Email">
					</div>
					<div class="col-lg-12 text-center">
						<textarea name="message" placeholder="Your message"></textarea>
						<button type="submit" class="site-btn">SEND MESSAGE</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Contact Form End -->



	<!-- Footer Section Begin -->
	<%@include file="footer.jsp" %>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>



</body>

</html>