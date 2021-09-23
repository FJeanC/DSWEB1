<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table border="1">
    <caption>
        <c:choose>
            <c:when test="${loja != null}">
                <h2><font color="white">Edição</font></h2>
                </c:when>
            <c:otherwise>
                <h2><font color="white">Cadastro</font></h2>
            </c:otherwise>
        </c:choose>
</caption>

<tr>
    <td><label for="emailloja"><font color="white">Email</font></label></td>
    <td><input type="text" id="emailloja" name="emailloja" value="${loja.emailloja}" required value="${loja.emailloja}"/></td>
</tr>
<tr>
    <td><label for="senhaloja"><font color="white">Senha</font></label></td>
    <td><input type="text" id="senhaloja" name="senhaloja" value="${loja.senhaloja}" required value="${loja.senhaloja}"/></td>
</tr>
<tr>
    <td><label for="cnpj"><font color="white">CNPJ</font></label></td>
    <td><input type="text" id="cnpj" name="cnpj" value="${loja.cnpj}" required value="${loja.cnpj}"/></td>
</tr>
<tr>
    <td><label for="nomeloja"><font color="white">Nome</font></label></td>
    <td><input type="text" id="nomeloja" name="nomeloja" value="${loja.nomeloja}" required value="${loja.nomeloja}"/></td>
</tr>
<tr>
    <td><label for="descricao"><font color="white">Descrição</font></label></td>
    <td><input type="text" id="descricao" name="descricao" value="${loja.descricao}" required value="${loja.descricao}"/></td>
</tr>
<tr>
    <td colspan="2" align="center"><input type="submit" value="Salva"
    /></td>
</tr>
</table>
    