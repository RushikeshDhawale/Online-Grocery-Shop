<%@page import="com.mughalsaraibazaar.main.dao.ProductCartDao"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.mughalsaraibazaar.main.ApplicationContextClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

        <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> leelaimart@gmail.com</li>
                                <li>Free Shipping for all Order of Rs 499</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="img/cart.png" alt="">
                                <div>Order History</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="orderhistory.jsp?status=No">Arriving</a></li>
                                    <li><a href="orderhistory.jsp?status=Yes">Delivered</a></li>
                                </ul>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="userlogout?userlogout=true"><i class="fa fa-user"></i> Logout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class=""><a href="./home.jsp">Home</a></li>
                            <li><a href="./shop-grid.jsp">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.jsp">Shop Details</a></li>
                                    <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                                    <li><a href="./checkout.jsp">Check Out</a></li>
                                    <li><a href="./blog-details.jsp">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.jsp">Blog</a></li>
                            <li><a href="./contact.jsp">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                <%
                ApplicationContext headerAc = ApplicationContextClass.getApplicationContext();
                ProductCartDao cartDao = headerAc.getBean(ProductCartDao.class);
               
                %>
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span><%=cartDao.cartCount(loginList.get(0),loginList.get(1)) %></span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>