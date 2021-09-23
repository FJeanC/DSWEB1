<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista Carros</title>
    <link rel="stylesheet" type ="text/css" href="lista/lista.css">
</head>
<body> 
    <%String contextPath = request.getContextPath().replace("/", ""); %>


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

      <br>
    <div id="divFiltro">
      <input type="text" name="Filtro" placeholder="Seleciona categoria" id="filtro">
      <input type="submit" name="Confirmar" id="">
    </div>
      <br>
    <div class="image-grid">
        <c:forEach var="carro" items="${requestScope.listaCarros}">
         
            <a href="#"><div class="teste"><img src="img/${carro.modelo}.jpg" alt="carroalt"><h2 class="titulo_carro">${carro.modelo} R$${carro.valor}</h2></div>
        </c:forEach>
      </div>
  </body>
</html>