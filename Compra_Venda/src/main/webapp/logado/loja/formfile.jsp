<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isELIgnored="false"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <title>Gerenciamento</title>
    <style>
      body {
        background-image: url(${pageContext.request.contextPath}/img/audi.jpg);
        background-size: cover;
        background-position: center;
      }
    </style>
  </head>
  <body>
    <div align="center">
      <h1><font color="white">Gerenciamento de Carro</font></h1>
      <h2>
        <a href="default">Lista de Carros</a>
      </h2>
    </div>
    <div align="center">
        <form method="post" action="addfile" enctype="multipart/form-data">
            <h2>Escolha um arquivo:</h2> <input type="file" name="multiPartServlet" />
            <input type="submit" value="Upload" />
        </form>
    </div>
  </body>
</html>