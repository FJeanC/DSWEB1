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
        <c:forEach var="carros" items="${requestScope.listaCarrosLoja}">
            <br>
            <div class="teste"><img src="/src/main/webapp/img/Chevette.jpg" alt="carroalt"><h2 class="titulo_carro">${carros.modelo} ${carros.valor}</h2></div>    
        </c:forEach>
    </body>
</html>