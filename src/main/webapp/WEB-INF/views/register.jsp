<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Rejestracja</title>
</head>
<body>
<jsp:include page="fragments/header.jsp"/>

<form method="post" action="register">
    <p>
        Nazwa użytkownika: <input type="text" name = "username" required/>
        <c:if test="${error != null}">
            <span style = "color: RED">${error}</span>
        </c:if>

    </p>
    <p>
        Hasło: <input type="password" name = "password" required/>
    </p>
    <p>
        Imię: <input type="text" name = "firstName"/>
    </p>
    <p>
        Nazwisko: <input type="text" name = "lastName"/>
    </p>
    <input type="submit" value="Zarejestruj"/>
</form>

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>
