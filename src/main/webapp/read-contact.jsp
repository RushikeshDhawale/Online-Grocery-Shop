<!DOCTYPE html>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.mughalsaraibazaar.main.model.ContactPage"%>
<%@page import="java.util.List"%>
<%@page import="com.mughalsaraibazaar.main.dao.ContactDao"%>
<%@page import="com.mughalsaraibazaar.main.ApplicationContextClass"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Messages</title>
  <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
  

  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body {
      justify-content: center;
      height: 100vh;
      background: url('img/ad.jpg') center center fixed;
      background-size: cover;
    }

    .message-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      margin-bottom: 10px;
    }

    .message-box {
      width: 30%;
      /* Adjust the width as needed, considering margins and padding */
      border: 1px solid #ccc;
      padding: 10px;
      margin-bottom: 10px;
      border-radius: 5px;
      background-color: rgba(255, 255, 255, 0.8);
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .btn-container {
      position: absolute;
      top: 10px;
      left: 10px;
    }

    /* Optional: Add media queries for responsiveness */
    @media (max-width: 600px) {
      .message-box {
        width: 100%; /* Adjust the width for smaller screens */
      }

      .delete-button {
        width: 100%; /* Make the delete button full-width on smaller screens */
        text-align: center; /* Center the text */
      }
    }

    /* Style for the h1 tag */
    h1 {
      color: white;
    }
  </style>
</head>
<body>

  <!-- Buttons Container -->
  <div class="btn-container">
    <a href="#" class="btn btn-sm btn-primary mr-2">Home</a>
    <a href="#" class="btn btn-sm btn-secondary">Back</a>
  </div>

  <h1 align="center">Messages</h1>
  <h3><%@include file="Message/message.jsp"%></h3>

  <%
  int sn=1;
  ApplicationContext ac = ApplicationContextClass.getApplicationContext();
  ContactDao bean = ac.getBean(ContactDao.class);
  List<ContactPage> cp = bean.read();

  for (int i = 0; i < cp.size(); i++) {
    if (i % 3 == 0) {
  %>
  <div class="message-container">
    <%
    }
    %>
    <div class="message-box">
      SN:
      <%=sn%><br> Date:
      <%=cp.get(i).getDate()%><br> Name:
      <%=cp.get(i).getName()%><br> Email:
      <%=cp.get(i).getEmail()%><br> Message:
      <%=cp.get(i).getMessage()%><br> <a class="delete-button"
        href="deletecontact?sn=<%=cp.get(i).getSn()%>">Delete</a><br>
      <br>
    </div>
    <%
    if (i % 3 == 2 || i == cp.size() - 1) {
    %>
  </div>
  <%
  }
  sn++;}
  %>

  <!-- Bootstrap JS and Popper.js (Optional) -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
