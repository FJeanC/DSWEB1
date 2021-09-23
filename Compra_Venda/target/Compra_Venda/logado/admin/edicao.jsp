<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset=UTF-8>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista Carros</title>
    <link rel="stylesheet" type ="text/css" href="$pageContext.request.contextPath}/style.css">
</head>
<body> 
    <%String contextPath = request.getContextPath().replace("/", ""); %>
   
    <form action="atualiza" method="post">

        <label for="email">Email:</label><br>
        <input type="text" id="email" name="email" value = "John@"><br>

        <label for="senha">Senha:</label><br>
        <input type="text" id="senha" name="senha" value = "*****"><br>
        
        <label for="cpf">CPF:</label><br>
        <input type="text" id="cpf" name="cpf" value = "1234577890"><br>

        <label for="nome">Nome:</label><br>
        <input type="text" id="nome" name="nome" value = "John"><br>


        <label for="telefone">Telefone:</label><br>
        <input type="text" id="telefone" name="telefone" value = "1798812345"><br>

        <label for="sexo">Sexo:</label><br>
        <input type="text" id="sexo" name="sexo" value = "M/F"><br>

        <label for="datanasc">Nascimento</label><br>
        <input type="text" id="datanasc" name="datanasc" value = "01/02/2003"><br>

        <input type="submit" value="Enviar">

    </form>
      </div>
  </body>
</html>