<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu do Sistema</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/loja.css">
    </head>
    <body>

        <%String contextPath = request.getContextPath().replace("/", ""); %>

        <div align="center">
			<h1 class="label">Gerenciamento de Lojas</h1>
		</div>
        <div align="center">
            <table class="styled-table">		
                <thead>
					<tr>
						<th>Email</th>
						<th>Senha</th>
						<th>CNPJ</th>
						<th>Nome</th>
						<th>Descricao</th>
                        <th>Ação</th>
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
                            <a href="/<%= contextPath%>/admins/edicaoloja?emailloja=${loja.emailloja}"">Atualizar dados</a>
                            <a href="/<%= contextPath%>/admins/remocaoloja?cnpj=${loja.cnpj}" onclick="return confirm('Tem certeza que deseja deletar esse usuário?');">Deletar</a>
                        </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>    
    </body>
</html>