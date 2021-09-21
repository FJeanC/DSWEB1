<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Compra e Venda de carros</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" type ="text/css" href = "lista.css">
  </head>
  <body> 
    <%
        String contextPath = request.getContextPath().replace("/", "");
    %>

    <div class="image-grid">
        <c:forEach var="carro" items="${requestScope.listaCarros}">
            <div class="teste"><img src="teste_img.png"><h2 class="titulo_carro">${carro.modelo} ${carro.valor}</h2></div>    
        </c:forEach>

      </div>
  </body>
</html>