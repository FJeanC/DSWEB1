<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <fmt:bundle basename="messages">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="menu-system"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/lojaindex.css">
    </head>
    <body>

        <%String contextPath = request.getContextPath().replace("/", ""); %>

        <div align="center">
			<h1 class="label"><fmt:message key="user-management"/></h1>
		</div>
        <div align="center">
            <table class="styled-table">		
                <thead>
					<tr>
						<th>Email</th>
						<th><fmt:message key="password"/></th>
						<th>CPF</th>
						<th><fmt:message key="name"/></th>
						<th><fmt:message key="telephone"/></th>
                        <th><fmt:message key="sex"/></th>
						<th><fmt:message key="birth"/></th>
						<th><fmt:message key="role"/></th>
						<th><fmt:message key="action"/></th>
					</tr>

                </thead>		
                <tbody>
        <c:forEach var="usuario" items="${requestScope.listaUsuarios}">
            <tr>
                <td>${usuario.email}</td>
                <td>${usuario.senha}</td>
                <td>${usuario.cpf}</td>
                <td>${usuario.nome}</td>
                <td>${usuario.telefone}</td>
                <td>${usuario.sexo}</td>
                <td>${usuario.datanasc}</td>
                <td>${usuario.papel}</td>
                <td><a href="/<%= contextPath%>/admins/edicao?email=${usuario.email}""><fmt:message key="update-data"/></a>
                    <a href="/<%= contextPath%>/admins/remocao?idcliente=${usuario.idcliente}" onclick="return confirm('Tem certeza que deseja deletar esse usuário?');"><fmt:message key="delete"/></a>
                </td>
                </tr>
        </c:forEach>
        </tbody>
        </table>
    </div>
</fmt:bundle>
            
        
    </body>
</html>