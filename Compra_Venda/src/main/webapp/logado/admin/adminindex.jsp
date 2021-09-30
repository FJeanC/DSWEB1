
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
  <fmt:bundle basename="messages">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="menu-system"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type ="text/css" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body class="admindex">

        
            <div class="main">
              <div class="logo">
                <img src="img/logo_free.jpg">
              </div>
              <ul class="top_bar">
                <li><a href="contact.html"><fmt:message key="contact"/></a></li>
                <li><a href="${pageContext.request.contextPath}/logins"><fmt:message key="login"/></a></li>
                <li><a class="active" href="${pageContext.request.contextPath}/index.jsp"><fmt:message key="home"/></a></li>
              </ul>
            </div>
        
        <div align="center">
        <h1><font color="white"><fmt:message key="adm-page"/></font></h1>
        </div>
              <div class="acontainer">
                <br><br><br>
                    <ol class="rounded-list">
                 
                      <div class="teste">
                        <h2> <fmt:message key="crud-users"/><br></h2>
                        <br>
                    <li><a href="./listar"><fmt:message key="list-users"/></li></a>
                    <li><a href="./cadastro"><fmt:message key="create-users"/></li></a>
                    <br>
                    <h2> <fmt:message key="crud-store"/><br></h2>
                    <li><a href="./cadastrolojas"><fmt:message key="create-store"/></li></a>
                    <li><a href="./listarlojas"><fmt:message key="list-stores"/></li></a>
                <li> <a href="${pageContext.request.contextPath}/logout.jsp"><fmt:message key="exit"/></a></li>
              </div>
              </div>
              
            </ol>
             
        </ul>
    </body>
  </fmt:bundle>
</html>

