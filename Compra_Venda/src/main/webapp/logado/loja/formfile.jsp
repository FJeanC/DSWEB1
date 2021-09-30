<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isELIgnored="false"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <head>
    <fmt:bundle basename="messages">
    <title><fmt:message key="management"/></title>
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
      <h1><font color="white"><fmt:message key="car-management"/></font></h1>
      <h2>
        <a href="default"><fmt:message key="car-list"/></a>
      </h2>
    </div>
    <div align="center">
        <form method="post" action="addfile" enctype="multipart/form-data">
            <h2><fmt:message key="choose-file"/>:</h2> <input type="file" name="multiPartServlet" />
            <input type="submit" value="Upload" />
        </form>
    </div>
  </body>
</fmt:bundle>
</html>