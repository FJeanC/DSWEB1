<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <fmt:bundle basename="messages">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/lojaindex.css">
        <title><fmt:message key="menu-system"/></title>
    </head>
    <body>
        <div align="center">
        <h1><fmt:message key="store-page"/></h1>
        </div>

        <div align="center">
        <p><fmt:message key="hello"/> ${sessionScope.lojaLogada.nomeloja}</p>

        <a href="${pageContext.request.contextPath}/lojas/criar"><fmt:message key="add-car"/></a>
        <a href="${pageContext.request.contextPath}/lojas/formfile"><fmt:message key="add-photo"/></a>
        <a href="${pageContext.request.contextPath}/lojas/propostaloja"><fmt:message key="list-proposal"/></a>
        <a href="${pageContext.request.contextPath}/logout.jsp"><fmt:message key="exit"/></a>

       
      
        
       

    </div>
        <br>
        <br>
        <div align="center">
            <h3><fmt:message key="your-cars"/>:</h3>
        <table class="styled-table">

            <thead>
            <tr>
                <th><fmt:message key="plate"/></th>
                <th><fmt:message key="model"/></th>
                <th><fmt:message key="chassi"/></th>
                <th><fmt:message key="year"/></th>
                <th><fmt:message key="km"/></th>
                <th><fmt:message key="description"/></th>
                <th><fmt:message key="value"/></th>
                <th><fmt:message key="action"/></th>
            </tr>
        
            </thead>
            <tbody>
        <c:forEach var="carro" items="${requestScope.listaCarrosLoja}">
            <tr>
                <td>${carro.placa}</td>
                <td>${carro.modelo}</td>
                <td>${carro.chassi}</td>
                <td>${carro.ano}</td>
                <td>${carro.km}</td>
                <td>${carro.descricaocarro}</td>
                <td>${carro.valor}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/lojas/editar?placa=${carro.placa}" class="teste"><h3><fmt:message key="edit"/></h3></a> &nbsp;&nbsp;&nbsp;&nbsp;        
                    <a href="${pageContext.request.contextPath}/lojas/remove?placa=${carro.placa}" onclick="return confirm('Tem certeza de que deseja excluir este item?');"><h3><fmt:message key="remover-carro"/></h3></a>
                </td>
            </c:forEach>
        </tbody>

    </table>
  </div>
    </body>
</fmt:bundle>
</html>