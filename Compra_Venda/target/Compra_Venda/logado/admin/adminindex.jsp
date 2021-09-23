<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu do Sistema</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type ="text/css" href="$pageContext.request.contextPath}/style.css">
    </head>
    <body>

        <header>
            <div class="main">
              <div class="logo">
                <img src="img/logo_free.jpg">
              </div>
              <ul class="top_bar">
                <li><a href="contact.html">Contact</a></li>
                <li><a href="about.html">About</a></li>
                <li><a class="active" href="index.jsp">Home</a></li>
              </ul>
            </div>
           </header>


        <h1>Página do Administrador</h1>
        <ul>
                <p> CRUD de CLientes<br></p>
                <ol>
                    <li><a href="teste.jsp">Criar Cliente</li></a>
                    <li><a href="#">Listar Clientes</li></a>
                    <li><a href="#">Atualizar Cliente</li></a>
                    <li><a href="#">Deletar Cliente</li></a>
                </ol>
                <p> CRUD de CLientes<br></p>
                <ol>
                    <li><a href="#">Criar Loja</li></a>
                    <li><a href="#">Listar Lojas</li></a>
                    <li><a href="#">Atualizar Loja</li></a>
                    <li><a href="#">Deletar Loja</li></a>
                </ol>
                <br>
                <li> <a href="${pageContext.request.contextPath}/logout.jsp">Sair</a></li>
            
        </ul>
    </body>
</html>