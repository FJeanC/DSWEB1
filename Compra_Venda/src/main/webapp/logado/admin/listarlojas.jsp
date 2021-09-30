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
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/loja.css">
    </head>
    <body>

        <%String contextPath = request.getContextPath().replace("/", ""); %>

        <div align="center">
			<h1 class="label"><fmt:message key="gerenciamento_de_lojas"/></h1>
		</div>
        <div align="center">
            <table class="styled-table">		
                <thead>
					<tr>
						<th>Email</th>
						<th><fmt:message key="password"/></th>
						<th>CNPJ</th>
						<th><fmt:message key="name"/></th>
						<th><fmt:message key="description"/></th>
                        <th><fmt:message key="action"/></th>
					</tr>
                </thead>		
                <tbody>
                    <c:forEach var="loja" items="${requestScope.listaLojas}">
                    <tr>
                        <td>${loja.emailloja}</td>
                        <td>${loja.senhaloja}</td>
                        <td>${loja.cnpj}</td>
                        <td>${loja.nomeloja}</td>
                        <td>${loja.descricao}</td>
                        <td>
                            <a href="/<%= contextPath%>/admins/edicaoloja?emailloja=${loja.emailloja}""><fmt:message key="update-data"/></a>
                            <a href="/<%= contextPath%>/admins/remocaoloja?idloja=${loja.idloja}" onclick="return confirm('Tem certeza que deseja deletar esse usuário?');"><fmt:message key="delete"/></a>
                        </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>    
    </body>
</fmt:bundle>
</html>