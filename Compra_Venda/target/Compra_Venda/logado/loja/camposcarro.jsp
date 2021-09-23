<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table border="1">
    <caption>
        <c:choose>
            <c:when test="${carro != null}">
                Edição
                </c:when>
            <c:otherwise>
                Cadastro
            </c:otherwise>
        </c:choose>
</caption>
<c:if test="${carro != null}">
    <input type="hidden" name="id" value="${carro.id}" />
</c:if>
<tr>
    <td><label for="modelo">Modelo</label></td>
    <td><input type="text" id="modelo" name="modelo" size="45"
    required value="${carro.modelo}" /></td>
</tr>
<tr>
    <td><label for="placa">Placa</label></td>
    <td><input type="text" id="placa" name="placa" size="45" required
    value="${carro.placa}" /></td>
</tr>
<tr>
    <td><label for="chassi">Chassi</label></td>
    <td><input type="text" id="chassi" name="chassi" size="45" required
    value="${carro.chassi}" /></td>
</tr>
<tr>
    <td><label for="ano">Ano</label></td>
    <td><input type="number" id="ano" name="ano" size="5" required
    min="1500" value="${carro.ano}" /></td>
</tr>
<tr>
    <td><label for="valor">Valor</label></td>
    <td><input type="number" id="valor" name="valor" required
    min="0.01" step="any" size="5" value="${carro.preco}" /></td>
</tr>
<tr>
    <td><label for="km">Kilometragem</label></td>
    <td><input type="number" id="km" name="km" required
    min="0.01" step="any" size="5" value="${carro.km}" /></td>
</tr>
<tr>
    <td><label for="descricaocarro">Descrição</label></td>
    <td><input type="text" id="descricaocarro" name="descricaocarro" size="45" required
    value="${carro.descricaocarro}" /></td>
</tr>
<tr>
    <td><label for="lojacarro">Email Loja</label></td>
    <td><input type="text" id="lojacarro" name="lojacarro" size="45" value="${emailLoja}" readonly /></td>
</tr>
<tr>
    <td colspan="2" align="center"><input type="submit" value="Salva"
    /></td>
</tr>
</table>
    