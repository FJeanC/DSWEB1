<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Autenticação de Usuário</title>
      <!--<link href="${pageContext.request.contextPath}/layout.css" rel="stylesheet" type="text/css"/>-->
      <link rel = "stylesheet" type ="text/css" href = "style.css">
   </head>
   <body class="login">
      <div class="title">
         <h1>Sign In</h1>
      </div>
      <div class="container">
         <div class="left"></div>
         <div class="right">
            <c:if test="${mensagens.existeErros}">
                <div id="erro">
                   <ul>
                      <c:forEach var="erro" items="${mensagens.erros}">
                         <li> ${erro} </li>
                      </c:forEach>
                   </ul>
                </div>
             </c:if>
            <div class="formBox">
               <form method="post" action="logins">
                  <p>Username</p>
                  <input type="text" name="login" value="${param.login}" placeholder="Joe Dick">
                  <p>Password</p>
                  <input type="password" name="senha" placeholder="********">
                  <input type="submit" name="bOK" value="Entrar"/>
                  <a href="#">Forgot Password</a>
               </form>
               </form>
            </div>
         </div>
      </div>
   </body>
</html>