<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table border="1"  CELLSPACING=2 CELLPADDING=6>
    <caption>
        <c:choose>
            <c:when test="${carro != null}">
                <h2>Edição</h2>
                </c:when>
            <c:otherwise>
                <h2>Cadastro</h2>
            </c:otherwise>
        </c:choose>
</caption>
<c:if test="${carro != null}">
    <input type="hidden" name="placa" value="${carro.placa}" />
</c:if>
<tr>
    <td><label for="modelo"><font color="black">Modelo</font></label></td>
    <td><input type="text" id="modelo" name="modelo" size="45"
    required value="${carro.modelo}" /></td>
</tr>
<tr>
    <td><label for="placa"><font color="black">Placa</font></label></td>
    <td><input type="text" id="placa" name="placa" size="45" required
    value="${carro.placa}" /></td>
</tr>
<tr>
    <td><label for="chassi"><font color="black">Chassi</font></label></td>
    <td><input type="text" id="chassi" name="chassi" size="45" required
    value="${carro.chassi}" /></td>
</tr>
<tr>
    <td><label for="ano"><font color="black">Ano</font></label></td>
    <td><input type="number" id="ano" name="ano" size="5" required
    min="1500" value="${carro.ano}" /></td>
</tr>
<tr>
    <td><label for="valor"><font color="black">Valor</font></label></td>
    <td><input type="number" id="valor" name="valor" required
    min="0.01" step="any" size="5" value="${carro.valor}" /></td>
</tr>
<tr>
    <td><label for="km"><font color="black">KM</font></label></td>
    <td><input type="number" id="km" name="km" required
    min="0.01" step="any" size="5" value="${carro.km}" /></td>
</tr>
<tr>
    <td><label for="descricaocarro"><font color="black">Descrição</font></label></td>
    <td><input type="text" id="descricaocarro" name="descricaocarro" size="45" required
    value="${carro.descricaocarro}" /></td>
</tr>

<tr>
    <td><label for="lojacarro"><font color="black">Email Loja</font></label></td>
    <td><input type="text" id="lojacarro" name="lojacarro" size="45" value="${emailLoja}" readonly /></td>
</tr>
<tr>
    <td colspan="2" align="center"><input type="submit" value="Salvar Dados"
    /></td>
</tr>
</table>
    