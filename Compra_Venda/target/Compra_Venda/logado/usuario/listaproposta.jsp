<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/loja.css">
        <title>Lista Propostas</title>
    </head>
    <body>
        <%String contextPath = request.getContextPath().replace("/", ""); %>
        <div align="center">
			<h1 class="label">Lista de Propostas</h1>
		</div>
        <div align="center">
            <table class="styled-table" border="1">		
                <thead>
					<tr>
						<th>Valor</th>
						<th>Condicoes</th>
						<th>Data Atual</th>
						<th>Placa Carro</th>
						<th>Status</th>
					</tr>
                </thead>		
                <tbody>
                    <c:forEach var="proposta" items="${requestScope.listaProposta}">
                        <tr>
                            <td>${proposta.valorproposta}</td>
                            <td>${proposta.condicoes}</td>
                            <td>${proposta.dataatual}</td>
                            <td>${proposta.placaproposta}</td>
                            <td>${proposta.statusproposta}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>