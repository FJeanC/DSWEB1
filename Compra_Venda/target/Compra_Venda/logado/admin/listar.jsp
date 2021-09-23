<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu do Sistema</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/lojaindex.css">
    </head>
    <body>

        <%String contextPath = request.getContextPath().replace("/", ""); %>

        <div align="center">
			<h1 class="label">Gerenciamento de clientes</h1>
		</div>
        <div align="center">
            <table class="styled-table">		
                <thead>
					<tr>
						<th>Email</th>
						<th>senha</th>
						<th>cpf</th>
						<th>nome</th>
						<th>telefone</th>
                        <th>sexo</th>
						<th>nascimento</th>
						<th>papel</th>
						<th>Ação</th>
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
                <td><a href="/<%= contextPath%>/admins/edicao?email=${usuario.email}"">Atualizar dados</a>
                    <a href="/<%= contextPath%>/admins/remocao?idcliente=${usuario.idcliente}" onclick="return confirm('Tem certeza que deseja deletar esse usuário?');">Deletar</a>
                </td>
                </tr>
        </c:forEach>
        </tbody>
        </table>
    </div>
            
        
    </body>
</html>