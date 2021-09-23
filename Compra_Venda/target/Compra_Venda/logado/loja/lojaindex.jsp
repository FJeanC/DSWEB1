<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu do Sistema</title>
    </head>
    <body>
        <h1>Página da Loja</h1>
        <p>Olá ${sessionScope.lojaLogada.nomeloja}</p>
        <ul>
            <li>
                <a href="${pageContext.request.contextPath}/logout.jsp">Sair</a>
            </li>
        </ul>
        <p>Seus carros:</p>
        <a href="${pageContext.request.contextPath}/lojas/criar">Adicionar Carro</a>
        <br>
        <c:forEach var="carro" items="${requestScope.listaCarrosLoja}">
            <br>
            <a href="${pageContext.request.contextPath}/lojas/editar?placa=${carro.placa}" class="teste"><img src="/src/main/webapp/img/Chevette.jpg" alt="carroalt"><h2 class="titulo_carro">${carro.modelo} ${carro.ano}</h2></a>
            <a href="${pageContext.request.contextPath}/lojas/remove?placa=${carro.placa}" onclick="return confirm('Tem certeza de que deseja excluir este item?');"><h2>Remover Carro</h2></a>
        </c:forEach>
    </body>
</html>