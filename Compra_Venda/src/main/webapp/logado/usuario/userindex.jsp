<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <fmt:bundle basename="messages">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type ="text/css" href="${pageContext.request.contextPath}/style.css">
        <title><fmt:message key="menu-system"/></title>
    </head>
    <body class="PagUsr">
        <div align="center">
            <h1><font color="white"><fmt:message key="user-page"/></font></h1>
            <h3><font color="white"><fmt:message key="hello"/> ${sessionScope.usuarioLogado.nome}</font></h3>
        </div>
        <div class="containeruser">
            <ol class="rounded-list">
                <div class="teste">
                    <a href="./lista"><h2> <fmt:message key="proposal-list"/></h2></a>
                    <br>
                    <br>
                    <a href="${pageContext.request.contextPath}/logout.jsp"><h2><fmt:message key="exit"/></h2></a>
                </div>
            </ol>
        </div>
    </body>
</fmt:bundle>
</html>