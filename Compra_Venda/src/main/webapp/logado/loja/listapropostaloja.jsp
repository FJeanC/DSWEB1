<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <fmt:bundle basename="messages">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/lojaindex.css">
        <title><fmt:message key="proposal-list"/></title>
    </head>
    <body>
        <%String contextPath = request.getContextPath().replace("/", ""); %>
        <div align="center">
			<h1 class="label"><fmt:message key="proposal-list"/></h1>
		</div>
        <br>
        <div align="center">
            <a href="${pageContext.request.contextPath}/lojas/default"><h2><fmt:message key="back"/></h2></a>
        </div>
        <div align="center">
            <table class="styled-table" border="1">		
                <thead>
					<tr>
						<th><fmt:message key="value"/></th>
						<th><fmt:message key="conditions"/></th>
						<th><fmt:message key="actual-date"/></th>
						<th><fmt:message key="car-plate"/></th>
						<th><fmt:message key="status"/></th>
                        <th><fmt:message key="action"/></th>
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
                                <a href="${pageContext.request.contextPath}/lojas/aceitaproposta?id=${proposta.id}" onclick="return confirm('Tem certeza que deseja aceitar essa proposta?');"><fmt:message key="accept"/></a>
                                <a href="${pageContext.request.contextPath}/lojas/recusaproposta?id=${proposta.id}" onclick="return confirm('Tem certeza que deseja recusar essa proposta?');"><fmt:message key="refuse"/></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</fmt:bundle>
</html>