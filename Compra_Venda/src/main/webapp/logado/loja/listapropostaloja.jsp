<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/lojaindex.css">
        <title>Lista Propostas</title>
    </head>
    <body>
        <%String contextPath = request.getContextPath().replace("/", ""); %>
        <div align="center">
			<h1 class="label">Lista de Propostas</h1>
		</div>
        <br>
        <div align="center">
            <a href="${pageContext.request.contextPath}/lojas/default"><h2>Voltar</h2></a>
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
                        <th>Ação</th>
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
                            <td>
                                <a href="${pageContext.request.contextPath}/lojas/aceitaproposta?id=${proposta.id}" onclick="return confirm('Tem certeza que deseja aceitar essa proposta?');">Aceitar</a>
                                <a href="${pageContext.request.contextPath}/lojas/recusaproposta?id=${proposta.id}" onclick="return confirm('Tem certeza que deseja recusar essa proposta?');">Recusar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>