
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu do Sistema</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type ="text/css" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body class="admindex">

        
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
        
        <div align="center">
        <h1><font color="white">Página do Administrador</font></h1>
        </div>
              <div class="acontainer">
                <br><br><br>
                    <ol class="rounded-list">
                 
                      <div class="teste">
                        <h2> CRUD de Clientes<br></h2>
                        <br>
                    <li><a href="./listar">Listar Clientes</li></a>
                    <li><a href="./cadastro">Criar Cliente</li></a>
                    <br>
                    <h2> CRUD de Lojas<br></h2>
                    <li><a href="./cadastrolojas">Criar Loja</li></a>
                    <li><a href="./listarlojas">Listar Lojas</li></a>
                <li> <a href="${pageContext.request.contextPath}/logout.jsp">Sair</a></li>
              </div>
              </div>
              
            </ol>
             
        </ul>
    </body>
</html>

