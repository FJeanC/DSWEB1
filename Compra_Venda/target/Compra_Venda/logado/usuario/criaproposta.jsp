<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isELIgnored="false"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date" %>
<html>
  <head>
    <title>Proposta</title>
  </head>
  <body>
    <div align="center">
      <h1>Realização de Proposta</h1>
      <h2>
        <a href="default">Página Inicial</a>
      </h2>
    </div>
    <div align="center">
      <form action="insereproposta" method="POST">
        <label for="valorproposta">Valor</label><br>
        <input type="number" id="valorproposta" name="valorproposta" required><br>

        <label for="condicoes">Condicoes</label><br>
        <input type="text" id="condicoes" name="condicoes" required><br>

        <label for="dataatual">Data Atual</label><br>
        <input type="text" id="dataatual" name="dataatual" required value="<%= new Date() %>" readonly><br>

        <label for="placaproposta">Placa</label><br>
        <input type="text" id="placaproposta" name="placaproposta" required value="${sessionScope.placacomprar}" readonly><br>

        <label for="clienteproposta">Cliente</label><br>
        <input type="number" id="clienteproposta" name="clienteproposta" required value="${sessionScope.usuarioLogado.idcliente}" readonly><br>

        <label for="statusproposta">Status</label><br>
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
