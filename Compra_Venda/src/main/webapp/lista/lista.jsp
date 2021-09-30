<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
  <fmt:bundle basename="messages">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><fmt:message key="car-list"/></title>
    <link rel="stylesheet" type ="text/css" href="lista/lista.css">
</head>
<body> 
    <%String contextPath = request.getContextPath().replace("/", ""); %>
    
      <div class="main">
        <div class="logo">
          <img src="img/logo_free.jpg">
        </div>
        <ul class="top_bar">
          <li><a href="contact.html"><fmt:message key="contact"/></a></li>
          <li><a href="${pageContext.request.contextPath}/logins"><fmt:message key="login"/></a></li>
          <li><a class="active" href="${pageContext.request.contextPath}/index.jsp"><fmt:message key="home"/></a></li>
        </ul>
      </div>

      <br>
    <div id="divFiltro">
      <input type="text" name="Filtro" placeholder="<fmt:message key="categorie"/>" id="filtro">
      <input type="submit" name="Confirmar" id="">
    </div>
    <div class="image-grid">
        <c:forEach var="carro" items="${requestScope.listaCarros}">
            
            <a class="teste" href="logins?placa=${carro.placa}"><img src="${pageContext.request.contextPath}/img/${carro.modelo}.jpg" alt="carroalt"><h2 class="titulo_carro">${carro.modelo} R$${carro.valor}</h2>
        </c:forEach>
      </div>
    </fmt:bundle>
  </body>
</html>