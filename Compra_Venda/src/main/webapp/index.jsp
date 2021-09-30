<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
      <fmt:bundle basename="messages">
      <ul class="top_bar">
        <li><a href="contact.html"><fmt:message key="contact"/></a></li>
        <li><a href="logins"><fmt:message key="login"/></a></li>
        <li><a class="active" href="#"><fmt:message key="home"/></a></li>
      </ul>
    </div>
   </header>

 
     <div class="action_btn">
        <a href="logins" class="btn"><fmt:message key="sell_btn"/></a>
        <a href="carros" class="btn"><fmt:message key="buy_btn"/></a>
     </div>
    </fmt:bundle>

  </body>
</html>

