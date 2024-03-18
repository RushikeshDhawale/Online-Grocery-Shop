<%@page import="java.util.ArrayList"%>
<%@page import="com.mughalsaraibazaar.main.model.AddProductsPage"%>
<%@page import="com.mughalsaraibazaar.main.dao.AddProductsDao"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.mughalsaraibazaar.main.ApplicationContextClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Product Details</title>
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
      background-color: #4CAF50;
      color: white;
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    button:hover {
      background-color: #45a049;
    }
  </style>
  
   <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
   
</head>
<body>

  <header>
     <h3><a style="color: white;" href="admin.jsp">ADMIN HOME</a></h3>
    <h1>Product Details</h1>
  </header>

  <div class="container">
   <h3 align="center"><%@include file="Message/message.jsp" %><br></h3>
   
   
   <form action="adminreadproduct.jsp" method="post">
    <label for="search">Search:</label>
    <input type="text" id="search" name="search" placeholder="What do yo u need? Ex.Honey">
    <button type="submit" class="site-btn">SEARCH</button>
   </form>
   
   
    <label for="department">Select Department:</label>
    <b>
               <ul>
                            <li><a href="adminreadproduct.jsp?department=all">All</a></li>
                            <li><a href="adminreadproduct.jsp?department=grocery">Grocery</a></li>
                            <li><a href="adminreadproduct.jsp?department=fruit">Fruit</a></li>
                            <li><a href="adminreadproduct.jsp?department=stationary">Stationary</a></li>
                            <li><a href="adminreadproduct.jsp?department=confectionery">Confectionery</a></li>
                            <li><a href="adminreadproduct.jsp?department=vegetable">Vegetable</a></li>
               </ul>
   </b>
      
   <%
   
  String search = request.getParameter("search");
  ApplicationContext ac = ApplicationContextClass.getApplicationContext();
  AddProductsDao bean = ac.getBean(AddProductsDao.class);
  Iterable<AddProductsPage> ap = null;
  
  if(search == null){
	  
	  String department = request.getParameter("department");
	  
	  if(department == null || department.equals("all") ){
		  
		  ap = bean.findAll();
		  
	  }
	  else{
		  
		  ap  = bean.searchProductDepartmentWise(department);
		  
		  
	  }
  }
  else{
	  
	  
	   ap = bean.searchProductCategoryWise(search);
  }
  
  ArrayList<AddProductsPage> list = (ArrayList<AddProductsPage>)ap;
  for(AddProductsPage app : list){
   
  %>
      

    <img alt="" style="width: 200px;" src="img/productsFile/<%=app.getProductImage() %>" alt="Product Image">

    <h2>Title : <%=app.getTitle() %> </h2>
    <p>Description: <%=app.getDescription() %> </p>
    <p>CrossPrice : <%=app.getCrossprice() %></p>
    <p>Main Price: <%=app.getMainprice() %> </p>
    <p>Availability: <%=app.getAvailability() %></p>
    <p>Department: <%=app.getDepartment() %></p>
    <p>Category: <%=app.getCategory() %> </p>

         <form action="deleteproduct" method="post">
             <input type="hidden" name="sn" value="<%=app.getId()%>">
             <input type="hidden" name="photoname" value="<%=app.getProductImage()%>">
             <button>delete</button>
         </form>
         
   <b>  <a href="updateproduct.jsp?sn=<%=app.getId()%>" >UPDATE PRODUCT</a></b><br><br>
  
   <%
  }
 %>
 
  
  </div>
 
  <br> <br> <br> <br>
  
  

</body>
</html>
