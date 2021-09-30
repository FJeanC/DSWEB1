<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
   <fmt:bundle basename="messages">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title><fmt:message key="user-auth"/></title>
      <!--<link href="${pageContext.request.contextPath}/layout.css" rel="stylesheet" type="text/css"/>-->
      <link rel = "stylesheet" type ="text/css" href = "style.css">
   </head>
   <body class="login">
      
      <div class="main">
         <div class="logo">
           <img src="img/logo_free.jpg">
         </div>
         <ul class="top_bar">
           <li><a href="contact.html"><fmt:message key="contact"/></a></li>
           <li><a href="logins"><fmt:message key="login"/></a></li>
           <li><a class="active" href="index.jsp"><fmt:message key="home"/></a></li>
         </ul>
       </div>

      <div class="title">
         <h1><fmt:message key="sign-in"/></h1>
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
               <form method="post" action="logins?placa=${param.placa}">
                  <p><fmt:message key="username"/></p>
                  <input type="text" name="login" value="${param.login}" placeholder="Joe Dick">
                  <p><fmt:message key="password"/></p>
                  <input type="password" name="senha" placeholder="********">
                  <input type="submit" name="bOK" value="Entrar"/>
                  
               </form>
               </form>
            </div>
         </div>
      </div>
   </fmt:bundle>
   </body>
</html>