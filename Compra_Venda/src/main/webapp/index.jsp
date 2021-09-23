<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Compra e Venda de carros</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" type ="text/css" href = "style.css">
  </head>
  <body> 
  <% String contextPath = request.getContextPath().replace("/", ""); %>
   <header>
    <div class="main">
      <div class="logo">
        <img src="img/logo_free.jpg">
      </div>
      <ul class="top_bar">
        <li><a href="contact.html">Contact</a></li>
        <li><a href="about.html">About</a></li>
        <li><a class="active" href="#">Home</a></li>
      </ul>
    </div>
   </header>

 
     <div class="action_btn">
        <a href="logins" class="btn">SELL</a>
        <a href="carros" class="btn">BUY</a>
     </div>


  </body>
</html>

