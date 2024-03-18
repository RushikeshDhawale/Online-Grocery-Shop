<%@page import="com.mughalsaraibazaar.main.model.PlacedOrderPage"%>
<%@page import="com.mughalsaraibazaar.main.model.CheckoutOrderCustomerDetailsPage"%>
<%@page import="java.util.List"%>
<%@page import="com.mughalsaraibazaar.main.dao.CheckoutOrderCustomerDetailsDao"%>
<%@page import="com.mughalsaraibazaar.main.dao.PlacedOrderDao"%>
<%@ include file="UserSession/usersession.jsp" %>
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
    
        <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    .container2 {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
      box-sizing: border-box;
    }

    .order-details {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    table, th, td {
      border: 1px solid #ddd;
    }

    th, td {
      padding: 12px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
    }

    /* Media Queries */
    @media only screen and (max-width: 768px) {
      th, td {
        font-size: 14px;
      }
    }

    @media only screen and (max-width: 480px) {
      .order-details {
        padding: 10px;
      }

      th, td {
        font-size: 12px;
      }
    }
  </style>
    
</head>

<body>
   <!-- Humberger Begin -->
	<%@include file="humberger.jsp" %>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<%@include file="header.jsp" %>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<%@include file="herosection.jsp" %>
	<!-- Hero Section End -->
    
  <%
 
  String status = (String)request.getParameter("status");
  ApplicationContext ac = ApplicationContextClass.getApplicationContext();
  CheckoutOrderCustomerDetailsDao bean = ac.getBean(CheckoutOrderCustomerDetailsDao.class);
  List<CheckoutOrderCustomerDetailsPage> list = bean.getSpecificCustomerId(loginList.get(0),loginList.get(1));
  
  for(CheckoutOrderCustomerDetailsPage ccp:list){
	  int m_t_price=0;
	  String ds = ccp.getIsDelivered();
	  String od = ccp.getOrderID();
	  if(ds.equals(status)){
  %>
    

			 <div class="container2">
			    <div class="order-details">
			    
			     <h3 class="breadcrumb__text" style="text-align: center; color: green;"> <b><%@include file="Message/message.jsp"%></b><br></h3>
			       
			     <% 
			        if(status.equals("No")) {
			     %>
			      <h2 style="color: green;"><b>Arriving Products</b></h2>
			      <%
			        }
			        else{
			      %>
			      <h2 style="color: green;"><b>Delivered Products</b></h2>
				  <%
				  }
				  %>
			    
			      <h2>Order Details : <span><%=ccp.getOrderID() %></span></h2>
			      <p><strong>Customer Name: </strong><%=ccp.getName() %></p>
			      <p><strong>Address: </strong><%=ccp.getApartment() %> </p>
			      <p><strong>Town: </strong><%=ccp.getCity() %> </p>
			      <p><strong>Order Phone 1: </strong> <%=ccp.getPhone() %></p>
			      <p><strong>Order Phone 2: </strong> <%=ccp.getMobile() %></p>
			      <p><strong>Date & Time: </strong><%=ccp.getDate() %> </p>
			      <p><strong>Note:</strong> <%=ccp.getNotes() %> </p>  
			      
			      
			
			      <table>
			        <thead>
			          <tr>
			            <th>Product Title</th>
			            <th>Product Price</th>
			            <th>Count</th>
			            <th>Bulk Price</th>
			          </tr>
			        </thead>
			        <tbody>
			         <%
			         
			         int t_price;
			         
			         
			         PlacedOrderDao pod = ac.getBean(PlacedOrderDao.class);
			         List<PlacedOrderPage> cod = pod.readOrder(od);
			         for(PlacedOrderPage pop:cod){
			        	 
			        	String m_price = pop.getMainprice();
			        	int p_count = pop.getCount();
			        	t_price = Integer.parseInt(m_price)*p_count;
			        	m_t_price = m_t_price+t_price;
			         
			         %>


			          <tr>
			            <td><%=pop.getTitle() %></td>
			            <td><%=pop.getMainprice() %></td>
			            <td><%=pop.getCount() %></td>
			            
			            <%
			            if(ds.equals("No")){
			            %>
			            
			            <td>Rs. <%=t_price %>/- <a style="color: red;" href="cancelorder?sn=<%=pop.getSn()%>&orderid=<%=ccp.getOrderID()%>">Cancel</a> </td>
			            
			            <%
			            }else{
			            %>
			            <td>Rs. <%=t_price %>/- </td>
						<%
			            }
						%>
			            
			          </tr>
			      <%
			         }
			      %>
			      <%
			      String dp = ccp.getDelivery();
			      %>
			          <!-- Add more rows as needed -->
			        </tbody>
			      </table>
			      <%
			      
			      if(!dp.equals("Free")){
			    	  
			    	  m_t_price = m_t_price+Integer.parseInt(dp);
			      }
			      
			      %>
			       <p><strong>Delivery Charge:</strong> <%=dp %>/-</p> 
			       <p style="font-size: 20px;"><strong>Total Charge:</strong> Rs. <%=m_t_price %>/- ONLY </p>  
			    </div>
			  </div>
			   
		    <%
		    }
	  }
			   %> 
   
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