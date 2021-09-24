<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type ="text/css" href="${pageContext.request.contextPath}/style.css">
        <title>Menu do Sistema</title>
    </head>
    <body class="PagUsr">
        <div align="center">
            <h1><font color="white">Página do Usuário</font></h1>
            <h3><font color="white">Olá ${sessionScope.usuarioLogado.nome}</font></h3>
        </div>
        <div class="containeruser">
            <ol class="rounded-list">
                <div class="teste">
                    <a href="./lista"><h2> Lista de propostas</h2></a>
                    <br>
                    <br>
                    <a href="${pageContext.request.contextPath}/logout.jsp"><h2>Sair</h2></a>
                </div>
            </ol>
        </div>
    </body>
</html>