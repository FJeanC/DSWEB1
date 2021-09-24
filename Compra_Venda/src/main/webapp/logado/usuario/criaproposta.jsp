<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isELIgnored="false"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date" %>
<html>
  <head>
    <title>Proposta</title>
    <style>
    body {
      background-image: url(${pageContext.request.contextPath}/img/royce.jpg);
      background-size: cover;
      background-position: center;
    }
    </style>
  </head>
  <body>
    <div align="center">
      <h1><font color="white">Realização de Proposta</font></h1>
      <h2>
        <a href="default"><font color="white">Página inicial</font></a>
      </h2>
    </div>
    <div align="center">
      <form action="insereproposta" method="POST">
        <label for="valorproposta"><font color="white">Valor</font></label><br>
        <input type="number" id="valorproposta" name="valorproposta" required><br>

        <label for="condicoes"><font color="white">Condições</font></label><br>
        <input type="text" id="condicoes" name="condicoes" required><br>

        <label for="dataatual"><font color="white">Data Atual</font></label><br>
        <input type="text" id="dataatual" name="dataatual" required value="<%= new Date() %>" readonly><br>

        <label for="placaproposta"><font color="white">Placa</font></label><br>
        <input type="text" id="placaproposta" name="placaproposta" required value="${sessionScope.placacomprar}" readonly><br>

        <label for="clienteproposta"><font color="white">Cliente</font></label><br>
        <input type="number" id="clienteproposta" name="clienteproposta" required value="${sessionScope.usuarioLogado.idcliente}" readonly><br>

        <label for="statusproposta"><font color="white">Status</font></label><br>
        <input type="text" id="statusproposta" name="statusproposta" required value="ABERTO" readonly><br>
        
        <input type="submit" value="Enviar">
      </form>
    </div>
    <c:if test="${!empty requestScope.mensagens}">
      <ul class="erro">
        <c:forEach items="${requestScope.mensagens}" var="mensagem">
          <li>${mensagem}</li>
        </c:forEach>
      </ul>
    </c:if>
  </body>
</html>
