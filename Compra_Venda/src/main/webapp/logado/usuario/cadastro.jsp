<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isELIgnored="false"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <fmt:bundle basename="messages">
  <head>
    <title><fmt:message key="user-registration"/></title>
    <style>
    body {
      background-image: url(${pageContext.request.contextPath}/img/car.jpg);
      background-size: cover;
      background-position: center;
    }
  </style>
  </head>
  <body>
    <div align="center">
      <h1><font color="black"><font color="White"><fmt:message key="user-management"/></font></h1>
      <h2>
        <a href="default"><fmt:message key="list-users"/></a>
      </h2>
    </div>
    <div align="center">
      <c:choose>
        <c:when test="${usuario != null}">
          <form action="atualizacao" method="post">
            <%@include file="camposcliente.jsp"%>
          </form>
        </c:when>
        <c:otherwise>
          <form action="insere" method="post">
            <%@include file="camposcliente.jsp"%>
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
</fmt:bundle>
</html>
