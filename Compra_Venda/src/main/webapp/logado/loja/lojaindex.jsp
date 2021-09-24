<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" type ="text/css" href="${pageContext.request.contextPath}/logado/loja/lojaindex.css">
        <title>Menu do Sistema</title>
    </head>
    <body>
        <div align="center">
        <h1>Página da Loja</h1>
        </div>

        <div align="center">
        <p>Olá ${sessionScope.lojaLogada.nomeloja}</p>

        <a href="${pageContext.request.contextPath}/lojas/criar">Adicionar Carro</a>
      
        <a href="#">Listar Propostas</a>
        <a href="${pageContext.request.contextPath}/logout.jsp">Sair</a>

       
      
        
       

    </div>
        <br>
        <br>
        <div align="center">
            <h3>Seus carros:</h3>
        <table class="styled-table">

            <thead>
            <tr>
                <th>Placa</th>
                <th>Modelo</th>
                <th>Chassi</th>
                <th>Ano</th>
                <th>KM</th>
                <th>Descricao</th>
                <th>valor</th>
                <th>Ações</th>
            </tr>
        
            </thead>
            <tbody>
        <c:forEach var="carro" items="${requestScope.listaCarrosLoja}">
            <!--<img src="/src/main/webapp/img/${carro.modelo}.jpg" alt="carroalt"><h3 class="titulo_carro">${carro.modelo} ${carro.ano}</h3>
            <a href="${pageContext.request.contextPath}/lojas/editar?placa=${carro.placa}" class="teste"></a>
            <a href="${pageContext.request.contextPath}/lojas/remove?placa=${carro.placa}" onclick="return confirm('Tem certeza de que deseja excluir este item?');"><h3>Remover Carro</h3></a>
            -->
            <tr>
                <td>${carro.placa}</td>
                <td>${carro.modelo}</td>
                <td>${carro.chassi}</td>
                <td>${carro.ano}</td>
                <td>${carro.km}</td>
                <td>${carro.descricaocarro}</td>
                <td>${carro.valor}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/lojas/editar?placa=${carro.placa}" class="teste"><h3>Editar</h3></a> &nbsp;&nbsp;&nbsp;&nbsp;        
                    <a href="${pageContext.request.contextPath}/lojas/remove?placa=${carro.placa}" onclick="return confirm('Tem certeza de que deseja excluir este item?');"><h3>Remover Carro</h3></a>
                </td>
            </c:forEach>
        </tbody>

    </table>
</div>
    </body>
</html>