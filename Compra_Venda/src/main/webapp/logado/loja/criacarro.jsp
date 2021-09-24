<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isELIgnored="false"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <title>Gerenciamento</title>
    <style>
      body {
        background-image: url(${pageContext.request.contextPath}/img/audi.jpg);
        background-size: cover;
        background-position: center;
      }
    </style>
  </head>
  <body>
    <div align="center">
      <h1><font color="white">Gerenciamento de Carro</font></h1>
      <h2>
        <a href="default">Lista de Carros</a>
      </h2>
    </div>
    <div align="center">
      <c:choose>
        <c:when test="${carro != null}">
          <form action="update"method="post">
            <%@include file="camposcarro.jsp"%>
          </form>
        </c:when>
        <c:otherwise>
          <form action="insere" method="post">
            <%@include file="camposcarro.jsp"%>
          </form>
        </c:otherwise>
      </c:choose>
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
