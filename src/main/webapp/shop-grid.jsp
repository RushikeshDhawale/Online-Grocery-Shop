<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mughalsaraibazaar.main.model.AddProductsPage"%>
<%@page import="com.mughalsaraibazaar.main.dao.AddProductsDao"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.mughalsaraibazaar.main.ApplicationContextClass"%>
<%@include file="UserSession/usersession.jsp" %>

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
	<%@ include file="humberger.jsp"%>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<%@ include file="herosection.jsp"%>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Organi Shop</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Shop</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<!-- 
						<div class="sidebar__item">
							<h4>Department</h4>
							<ul>
								<li><a href="#">Fresh Meat</a></li>
								<li><a href="#">Vegetables</a></li>
								<li><a href="#">Fruit & Nut Gifts</a></li>
								<li><a href="#">Fresh Berries</a></li>
								<li><a href="#">Ocean Foods</a></li>
								<li><a href="#">Butter & Eggs</a></li>
								<li><a href="#">Fastfood</a></li>
								<li><a href="#">Fresh Onion</a></li>
								<li><a href="#">Papayaya & Crisps</a></li>
								<li><a href="#">Oatmeal</a></li>
							</ul>
						</div>
						 -->
						<!-- 
						<div class="sidebar__item">
							<h4>Price</h4>
							<div class="price-range-wrap">
								<div
									class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
									data-min="10" data-max="540">
									<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
								</div>
								<div class="range-slider">
									<div class="price-input">
										<input type="text" id="minamount"> <input type="text"
											id="maxamount">
									</div>
								</div>
							</div>
						</div>
						 -->
						<!-- 
						<div class="sidebar__item sidebar__item__color--option">
							<h4>Colors</h4>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="white"> White <input type="radio" id="white">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--gray">
								<label for="gray"> Gray <input type="radio" id="gray">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--red">
								<label for="red"> Red <input type="radio" id="red">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--black">
								<label for="black"> Black <input type="radio" id="black">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--blue">
								<label for="blue"> Blue <input type="radio" id="blue">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--green">
								<label for="green"> Green <input type="radio" id="green">
								</label>
							</div>
						</div>
						 -->
						<!-- 
						<div class="sidebar__item">
							<h4>Popular Size</h4>
							<div class="sidebar__item__size">
								<label for="large"> Large <input type="radio" id="large">
								</label>
							</div>
							<div class="sidebar__item__size">
								<label for="medium"> Medium <input type="radio"
									id="medium">
								</label>
							</div>
							<div class="sidebar__item__size">
								<label for="small"> Small <input type="radio" id="small">
								</label>
							</div>
							<div class="sidebar__item__size">
								<label for="tiny"> Tiny <input type="radio" id="tiny">
								</label>
							</div>
						</div>
						 -->
						<!-- 
						<div class="sidebar__item">
							<div class="latest-product__text">
								<h4>Latest Products</h4>
								<div class="latest-product__slider owl-carousel">
									<div class="latest-prdouct__slider__item">
										<a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="img/latest-product/lp-1.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a> <a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="img/latest-product/lp-2.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a> <a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="img/latest-product/lp-3.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a>
									</div>
									<div class="latest-prdouct__slider__item">
										<a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="img/latest-product/lp-1.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a> <a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="img/latest-product/lp-2.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a> <a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="img/latest-product/lp-3.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					 -->
					</div>
				</div>
				<div class="col-lg-12 col-md-3">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>All Products</h2>
						</div>
						<!-- 
						<div class="row">
							<div class="product__discount__slider owl-carousel">
								<div class="col-lg-4">
									<div class="product__discount__item">
										<div class="product__discount__item__pic set-bg"
											data-setbg="img/product/discount/pd-1.jpg">
											<div class="product__discount__percent">-20%</div>
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__discount__item__text">
											<span>Dried Fruit</span>
											<h5>
												<a href="#">Raisin’n’nuts</a>
											</h5>
											<div class="product__item__price">
												$30.00 <span>$36.00</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="product__discount__item">
										<div class="product__discount__item__pic set-bg"
											data-setbg="img/product/discount/pd-2.jpg">
											<div class="product__discount__percent">-20%</div>
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__discount__item__text">
											<span>Vegetables</span>
											<h5>
												<a href="#">Vegetables’package</a>
											</h5>
											<div class="product__item__price">
												$30.00 <span>$36.00</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="product__discount__item">
										<div class="product__discount__item__pic set-bg"
											data-setbg="img/product/discount/pd-3.jpg">
											<div class="product__discount__percent">-20%</div>
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__discount__item__text">
											<span>Dried Fruit</span>
											<h5>
												<a href="#">Mixed Fruitss</a>
											</h5>
											<div class="product__item__price">
												$30.00 <span>$36.00</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="product__discount__item">
										<div class="product__discount__item__pic set-bg"
											data-setbg="img/product/discount/pd-4.jpg">
											<div class="product__discount__percent">-20%</div>
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__discount__item__text">
											<span>Dried Fruit</span>
											<h5>
												<a href="#">Raisin’n’nuts</a>
											</h5>
											<div class="product__item__price">
												$30.00 <span>$36.00</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="product__discount__item">
										<div class="product__discount__item__pic set-bg"
											data-setbg="img/product/discount/pd-5.jpg">
											<div class="product__discount__percent">-20%</div>
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__discount__item__text">
											<span>Dried Fruit</span>
											<h5>
												<a href="#">Raisin’n’nuts</a>
											</h5>
											<div class="product__item__price">
												$30.00 <span>$36.00</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="product__discount__item">
										<div class="product__discount__item__pic set-bg"
											data-setbg="img/product/discount/pd-6.jpg">
											<div class="product__discount__percent">-20%</div>
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__discount__item__text">
											<span>Dried Fruit</span>
											<h5>
												<a href="#">Raisin’n’nuts</a>
											</h5>
											<div class="product__item__price">
												$30.00 <span>$36.00</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					 -->
					</div>






					<!-- 
					
					<div class="filter__item">
						<div class="row">
							<div class="col-lg-4 col-md-5">
								<div class="filter__sort">
									<span>Sort By</span> <select>
										<option value="0">Default</option>
										<option value="0">Default</option>
									</select>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div class="filter__found">
									<h6>
										<span>16</span> Products found
									</h6>
								</div>
							</div>
							<div class="col-lg-4 col-md-3">
								<div class="filter__option">
									<span class="icon_grid-2x2"></span> <span class="icon_ul"></span>
								</div>
							</div>
						</div>
					</div>
					 -->

					<div class="row">
						<%
						
						int start_index=0;
						String start = request.getParameter("start");
						if(start!=null){
							start_index = Integer.parseInt(start);
						}
						
						ApplicationContext ac = ApplicationContextClass.getApplicationContext();
						AddProductsDao bean = ac.getBean(AddProductsDao.class);
						List<AddProductsPage> list = null;

						String search = request.getParameter("search");
						if(search == null){
							String dept = request.getParameter("department");
							if(dept == null || dept.equals("all")){
								//All Products
								//list = bean.findAll();
								list = bean.findAllProducts(start_index);
							}
							else{
								//Search Product By Dept
								//list = bean.searchProductDepartmentWise(dept);
								list = bean.findProductDepartmentWise(dept, start_index);
							}
							
						}else{
							    //Search Product By Search Bar
							    //list = bean.searchProductCategoryWise(search)
							    list = bean.findProductCategoryWise(search, start_index);
;						}
						
						//ArrayList<AddProductsPage> productList = (ArrayList<AddProductsPage>)list;
						int index=0;
						session.setAttribute("pdetails", list);
						
						int current_index=0;
						for (AddProductsPage li : list) {
						%>

						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="product__item"
								style="background-color: #f8f9fa; border: 4px solid black; border-radius: 10px; padding: 10px;">
								<div class="product__item__pic set-bg"
									data-setbg="img/productsFile/<%=li.getProductImage()%>">
									<ul class="product__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-retweet"></i></a></li>
										<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6>
										<a href="#"><%=li.getTitle()%></a>
									</h6>
									<h5>
										<del><%=li.getCrossprice()%></del>
									</h5>
									<h5>
										Rs.<%=li.getMainprice()%>/-only
									</h5>
									<a href="shop-details.jsp?index=<%=index %>" class="btn btn-primary">Buy Now</a>
								</div>
							</div>
						</div>


						<%
						start_index++;
						current_index++;
						index++;}
						%>
					</div>


					<div class="product__pagination">
						<% if(start_index>8)  {%>
						<a href="shop-grid.jsp?start=<%=start_index-8-current_index%>"><i class="fa fa-long-arrow-left"></i>Prev</a>
						<%} %>
						
						<% if(current_index == 8) {%>
						<a href="shop-grid.jsp?start=<%=start_index%>"><i class="fa fa-long-arrow-right"></i>Next</a>
						<%} %>					
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->

	<!-- Footer Section Begin -->
	<%@include file="footer.jsp"%>
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