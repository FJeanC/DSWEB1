<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table border="1">
    <caption>
        <c:choose>
            <c:when test="${usuario != null}">
                Edição
                </c:when>
            <c:otherwise>
                Cadastro
            </c:otherwise>
        </c:choose>
</caption>
<c:if test="${usuario != null}">
    <input type="hidden" name="id" value="${usuario.email}" />
</c:if>

<tr>
    <td><label for="idcliente">ID</label></td>
    <td><input type="number" id="idcliente" name="idcliente" size="5" value="${usuario.idcliente}" readonly /></td>
</tr>
<tr>
    <td><label for="email">Email</label></td>
    <td><input type="text" id="email" name="email" size="45"
    required value="${usuario.email}" /></td>
</tr>
<tr>
    <td><label for="senha">Senha</label></td>
    <td><input type="text" id="senha" name="senha" size="45" required
    value="${usuario.senha}" /></td>
</tr>
<tr>
    <td><label for="cpf">CPF</label></td>
    <td><input type="text" id="cpf" name="cpf" size="50" value="${usuario.cpf}" /></td>
</tr>
<tr>
    <td><label for="nome">Nome</label></td>
    <td><input type="text" id="nome" name="nome" size="50" value="${usuario.nome}" /></td>
</tr>
<tr>
    <td><label for="telefone">Telefone</label></td>
    <td><input type="text" id="telefone" name="telefone" size="50" value="${usuario.telefone}" /></td>
</tr>
<tr>
    <td><label for="sexo">Sexo</label></td>
    <td><input type="text" id="sexo" name="sexo" required
    size="1" value="${usuario.sexo}" /></td>
</tr>
<tr>
    <td><label for="datanasc">Data de Nascimento</label></td>
    <td><input type="text" id="datanasc" name="datanasc" size="45" required
    value="${usuario.datanasc}" /></td>
</tr>
<tr>
    <td><label for="papel">Papel</label></td>
    <td><select id="papel" name="papel">
        <option value="CLIENTE">CLIENTE</option>
        <option value="ADMIN">ADMIN</option>
        </select>
    </td>
</tr>
<tr>
    <td colspan="2" align="center"><input type="submit" value="Salva"
    /></td>
</tr>
</table>
    