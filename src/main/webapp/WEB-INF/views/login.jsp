<%--
  Created by IntelliJ IDEA.
  User: Taś
  Date: 2019-05-25
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logowanie</title>
</head>
<body>
<jsp:include page="fragments/header.jsp"/>

<h1>Logowanie</h1>

<form method="post" action="login.jsp">
    <p>
        Nazwa użytkownika: <input type="text" name = "username" required/>
    </p>
    <p>
        Hasło: <input type="password" name = "password"/>
    </p>
    <input type="submit" value="Zaloguj"
</form>

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>
