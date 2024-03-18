<%@page import="java.util.ArrayList"%>
<%@page import="com.mughalsaraibazaar.main.model.DeptCatPage"%>
<%@page import="java.util.List"%>
<%@page import="com.mughalsaraibazaar.main.dao.DeptCatDao"%>
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
  <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/admin.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
     body {
      justify-content: center;
      height: 100vh;
      background: url('img/ad.jpg') center center fixed;
      background-size: cover;
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
</head>
<body>

<div class="container">
    <h5 ><i></i><a href="#">ADMIN HOME</a></h5>
    <h3 align="center"><%@ include file="Message/message.jsp" %></h3>
    <h3 align="center">Product Insertion Form</h3>

    <form action="addproducts" method="post" enctype="multipart/form-data">
        <label for="productTitle">Product Title:</label>
        <input type="text" id="productTitle" maxlength="150" name="title" required>

        <label for="productDescription">Product Description:</label>
        <textarea id="productDescription" maxlength="5000" name="description" rows="4" required></textarea>

        <label for="crossPrice">Cross Price:</label>
        <input type="number" maxlength="30" id="crossPrice" name="crossprice" required>

        <label for="mainPrice">Main Price:</label>
        <input type="number" maxlength="30" id="mainPrice" name="mainprice" required>

        <label for="mainPrice">Availability:</label>
        <input type="text" maxlength="50" id="mainPrice" name="availability" required>

        <label for="department">Department:</label>
        <select id="department" name="department" required>
            <option value="grocery">Grocery</option>
            <option value="stationary">Stationary</option>
            <option value="confectionery">Confectionery</option>
            <option value="vegetable">Vegetable</option>
            <option value="fruit">Fruit</option>
        </select>

        <label for="category">Category:</label>
        <select id="category" name="category" required></select>

        <label for="productImage" class="file-input">Product Image:</label>
        <input type="file" id="productImage" name="productimage" accept="image/*" required>

        <button class="btn btn-primary" type="submit">Submit</button>
    </form>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const departmentSelect = document.getElementById("department");
            const categorySelect = document.getElementById("category");

            // Define categories for each department
            <%
            ApplicationContext ac = ApplicationContextClass.getApplicationContext();
            DeptCatDao bean = ac.getBean(DeptCatDao.class);
            List<DeptCatPage> list= bean.read();
            ArrayList<String> Grocery = new ArrayList();
            ArrayList<String> Stationary = new ArrayList();
            ArrayList<String> Confectionery = new ArrayList();
            ArrayList<String> Vegetable = new ArrayList();
            ArrayList<String> Fruit = new ArrayList();

            for(DeptCatPage li:list){
                String dept = li.getDepartment();
                String cate = li.getCategory();

                if(dept.equalsIgnoreCase("Grocery")){
                    Grocery.add(cate);
                }
                else if(dept.equalsIgnoreCase("Stationary")){
                    Stationary.add(cate);
                }
                else if(dept.equalsIgnoreCase("Confectionery")){
                    Confectionery.add(cate);
                }
                else if(dept.equalsIgnoreCase("Vegetable")){
                    Vegetable.add(cate);
                }
                else if(dept.equalsIgnoreCase("Fruit")){
                    Fruit.add(cate);
                }
                else{
                    session.setAttribute("msg", "Something Wrong");
                }
            }
            %>

            const categories = {
                grocery: [<% for(int i=0; i<Grocery.size(); i++) {%>'<%= Grocery.get(i)%>',<%}%>],
                stationary: [ <% for(int i=0; i<Stationary.size(); i++) {%>'<%= Stationary.get(i)%>',<%}%> ],
                confectionery: [ <% for(int i=0; i<Confectionery.size(); i++) {%>'<%= Confectionery.get(i)%>',<%}%> ],
                vegetable: [ <% for(int i=0; i<Vegetable.size(); i++) {%>'<%= Vegetable.get(i)%>',<%}%> ],
                fruit: [ <% for(int i=0; i<Fruit.size(); i++) {%>'<%= Fruit.get(i)%>',<%}%> ],
            };

            function populateCategoryDropdown() {
                const selectedDepartment = departmentSelect.value;
                const departmentCategories = categories[selectedDepartment];

                // Clear existing options
                categorySelect.innerHTML = "";

                // Add new options based on the selected department
                departmentCategories.forEach(function (category) {
                    const option = document.createElement("option");
                    option.value = category;
                    option.text = category;
                    categorySelect.appendChild(option);
                });
            }

            // Initially populate the category dropdown
            populateCategoryDropdown();

            // Update the category dropdown when the department changes
            departmentSelect.addEventListener("change", populateCategoryDropdown);
        });
    </script>
</div>

</body>
</html>
