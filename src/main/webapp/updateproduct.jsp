<%@page import="com.mughalsaraibazaar.main.model.AddProductsPage"%>
<%@page import="java.util.Optional"%>
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
  <title>Product Form</title>

  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    .container {
      max-width: 800px;
      margin: 20px auto;
      background-color: #fff;
      padding: 20px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }

    form {
      display: grid;
      gap: 15px;
    }

    label {
      display: block;
      font-weight: bold;
    }

    input,
    select {
      width: 100%;
      padding: 10px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 5px;
      margin-top: 5px;
      margin-bottom: 15px;
    }

    .file-input {
      display: flex;
      align-items: center;
    }

    .file-input input[type="file"] {
      flex-grow: 1;
      margin-right: 10px;
    }

    .btn-add {
      padding: 10px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    @media screen and (max-width: 600px) {
      .container {
        max-width: 100%;
        padding: 10px;
      }
    }
  </style>
  
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/admin.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>

 

<div class="container">
 <h3 align="center"><%@include file="Message/message.jsp" %><br></h3> <br>
    <h3><i></i><a href="1admin.jsp">ADMIN HOME</a></h3>
    <h1>Product Updation Form</h1>
    
  <%
  String sn = request.getParameter("sn");
  
  ApplicationContext ac = ApplicationContextClass.getApplicationContext();
  AddProductsDao bean = ac.getBean(AddProductsDao.class);
  
  Optional<AddProductsPage> app = bean.findById(Integer.parseInt(sn));
  AddProductsPage pp = app.get();
  
  %>
    

  <form action="updateproduct" method="post">
    <label for="productTitle">Product Title:</label>
    <input type="text"  value="<%=pp.getTitle() %>" id="productTitle" name="title" required>

    <label for="productDescription">Product Description:</label>
    <textarea id="productDescription"   name="description" rows="4" required><%=pp.getDescription() %></textarea>

    <label for="crossPrice">Cross Price:</label>
    <input type="number" value="<%=pp.getCrossprice() %>" id="crossPrice" name="crossprice" required>

    <label for="mainPrice">Main Price:</label>
    <input type="number" value="<%=pp.getMainprice() %>" id="mainPrice" name="mainprice" required>
    
    <label for="mainPrice">Availability:</label>
    
   
    <select name="availability" required="required">
			              <option value="" disabled selected>Select</option>
			              <option value="IN STOCK">IN STOCK</option>
			              <option value="OUT STOCK">OUT STOCK</option>
			            </select> 
      
      <input type="hidden" name="sn" value="<%=pp.getId()%>" placeholder="Enter title"><br>
   
    <button class="btn btn-primary" type="submit">Update</button>
  </form>
  
  
  
</div>

</body>
</html>

    