<%@page import="java.util.HashMap"%>
<%@page import="java.util.Optional"%>
<%@page import="com.mughalsaraibazaar.main.model.AddProductsPage"%>
<%@page import="com.mughalsaraibazaar.main.dao.AddProductsDao"%>
<%@page import="com.mughalsaraibazaar.main.model.ProductCartPage"%>
<%@page import="java.util.List"%>
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
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

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
	<%@ include file="humberger.jsp" %>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
   
    <!-- Header Section End -->
	<%@ include file="header.jsp" %>
    <!-- Hero Section Begin -->
    <%@ include file="herosection.jsp" %>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Shopping Cart</h2>
                        <h2><%@ include file="Message/message.jsp" %></h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">Products</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            <%
                           ApplicationContext ac = ApplicationContextClass.getApplicationContext();
                           //For getting product information data
                           AddProductsDao pd = ac.getBean(AddProductsDao.class);
                            
                           //For Initailization cross price or total price
                           int t_cross_price = 0;
                           int t_main_price = 0;
                           
                           //For getting cart data
                           ProductCartDao pcart = ac.getBean(ProductCartDao.class);
                           List<ProductCartPage> pcList = pcart.getCart(loginList.get(0), loginList.get(1));
                           
                           //Sending a product pojo and count into checkout.jsp
                           HashMap<AddProductsPage,Integer> hm = new HashMap<>();
                           
                           for(ProductCartPage pcp:pcList){
                        	   
                        	   int psn = pcp.getPsn();
                        	   
                        	  //For getting product details by putting psn from product cart page
                        	   Optional<AddProductsPage> plist = pd.findById(psn);
                        	   AddProductsPage pp = plist.get();
                        	   
                        	   // total price with count
                        	   String m_price = pp.getMainprice();//20
                        	   	   //40								//20     *		//2
                        	   int m_price_count = Integer.parseInt(m_price) * pcp.getCount();
                        	   //0			//0    			//40
                        	   t_main_price = t_main_price + m_price_count;
                        	   
                        	   // total cross price with count
                        	   String c_price = pp.getCrossprice();
                        	   int c_price_count = Integer.parseInt(c_price)*pcp.getCount();
                        	   t_cross_price = t_cross_price + c_price_count;
                        	   
                        	   %>
                            
                            
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/productsFile/<%=pp.getProductImage() %>" width="40%" alt="">
                                        <h5><%=pp.getTitle() %></h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        Rs. <%=pp.getMainprice() %>/-
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="<%=pcp.getCount()%>">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        Rs. <%=m_price_count %>/-
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                                 
                                <% 
                                
                                hm.put(pp,pcp.getCount());
                           }
                                 %>
<!--                                 <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-2.jpg" alt="">
                                        <h5>Fresh Garden Vegetable</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        $39.00
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        $39.99
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
 -->                                <!-- <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-3.jpg" alt="">
                                        <h5>Organic Bananas</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        $69.00
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        $69.99
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr> -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="#" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                        <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Upadate Cart</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        
                        <ul>
                            
                         
                            <!-- For After Placing The Order Cart Price Shows Zero -->
                            <%
                            if(t_main_price!=0){
                            	
                            String charge = "Free";
                            if(t_main_price<500){
                            	t_main_price = t_main_price+99;
                            	charge = "99Rs/-";
                            }
                            
                            //Store it into a session and send it into checkout.jsp
                            
                            session.setAttribute("checkout", hm);
                            %>
                            <h5>Cart Total</h5>
                            <li>Before Discount <span><del>Rs.<%=t_cross_price %>/-</del></span></li>
                            <li>You Save <span>Rs.<%=t_cross_price-t_main_price %>/-</span></li>
                            <li>Delivery Charge <span><%=charge %></span></li>
                            <li>Total Ammount <span>Rs.<%=t_main_price %>/-</span></li>
                            <a href="checkout.jsp" class="primary-btn">PROCEED TO CHECKOUT</a>
                            <%
                            
                            }
                            else{
                            	
                            %>
                            <h2 align="center">Cart Is Empty</h2><br>
                            <a href="shop-grid.jsp" class="primary-btn">Continue To Shoping</a>
                            <%
                            }
                            %>
                        </ul>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->

    <!-- Footer Section Begin -->
    <%@ include file="footer.jsp" %>
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