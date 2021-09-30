<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <fmt:bundle basename="messages">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/loja.css">
        <title><fmt:message key="proposal-list"/></title>
    </head>
    <body>
        <%String contextPath = request.getContextPath().replace("/", ""); %>
        <div align="center">
			<h1 class="label"><fmt:message key="proposal-list"/></h1>
		</div>
        <div align="center">
            <table class="styled-table" border="1">		
                <thead>
					<tr>
						<th><fmt:message key="value"/></th>
						<th><fmt:message key="conditions"/></th>
						<th><fmt:message key="actual-date"/></th>
						<th><fmt:message key="car-plate"/></th>
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
    </fmt:bundle>
    </body>
</html>