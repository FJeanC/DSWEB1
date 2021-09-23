<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu do Sistema</title>
    </head>
    <body>
        <h1>Página do Usuário</h1>
        <p>Olá ${sessionScope.usuarioLogado.nome} a placa é ${sessionScope.placacomprar}</p>
        <ul>
            <li>   
                <% String contextPath = request.getContextPath().replace("/", ""); %>
                <a href="./lista">Lista de propostas</a><br>
                
                <a href="${pageContext.request.contextPath}/logout.jsp">Sair</a>
            </li>
        </ul>
    </body>
</html>