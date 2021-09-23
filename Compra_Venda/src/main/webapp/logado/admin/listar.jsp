<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu do Sistema</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type ="text/css" href="$pageContext.request.contextPath}/style.css">
    </head>
    <body>

        <%String contextPath = request.getContextPath().replace("/", ""); %>

        <div align="center">
			<h1 class="label">Gerenciamento de clientes</h1>
		</div>
        <div align=center">
            <table border="1">				
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


        
        <c:forEach var="user" items="${requestScope.listaUsuarios}">
        <tr>
                <td>${user.email}</td>
                <td>${user.senha}</td>
                <td>${user.cpf}</td>
                <td>${user.nome}</td>
                <td>${user.telefone}</td>
                <td>${user.sexo}</td>
                <td>${user.datanasc}</td>
                <td>${user.papel}</td>
                <td><a href="/<%= contextPath%>/usuarios/edicao?id=${usuario.email}"">Atualizar dados</a>
                    <a href="/<%= contextPath%>/usuarios/remocao?id=${usuario.email}" onclick="return confirm('Tem certeza que deseja deletar esse usuário?');">Deletar</a>
                    
                </td>
                </tr>
        </c:forEach>

        </table>
    </div>
            
        
    </body>
</html>