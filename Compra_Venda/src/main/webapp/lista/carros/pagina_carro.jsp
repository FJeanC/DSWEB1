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
    <link rel="stylesheet" type ="text/css" href="lista.css">
</head>
<body> 
    <%String contextPath = request.getContextPath().replace("/", ""); %>
    <div id="Filtro">
      <input type="text" name="Filtro" placeholder="Seleciona categoria" id="filtro_input">
    </div>
      <br>
    <div class="image-grid">
      <c:forEach var="carro" items="${requestScope.listaCarros}">
        <div class="teste"><a href="carros"><img src="img/${carro.modelo}.jpg" alt="carroalt"></a><h2 class="titulo_carro">${carro.modelo} ${carro.valor}</h2></div>
    </c:forEach>
  </body>
</html>