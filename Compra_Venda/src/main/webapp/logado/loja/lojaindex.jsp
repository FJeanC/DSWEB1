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
        <c:forEach var="carros" items="${requestScope.listaCarrosLoja}">
            <div class="teste"><img src="lista/teste_img.png" alt="carroalt"><h2 class="titulo_carro">${carro.modelo} ${carro.valor}</h2></div>    
        </c:forEach>
        <ul>
            <li>
                <a href="${pageContext.request.contextPath}/logout.jsp">Sair</a>
            </li>
        </ul>
    </body>
</html>