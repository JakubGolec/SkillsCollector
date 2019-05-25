<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.Duration" %>
<%@ page import="java.time.LocalDate" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<%LocalDate start = LocalDate.of(2018,10,27);%>
<%LocalDate end = LocalDate.now();%>
<%Duration interval = Duration.between(start,end);%>

<footer>
    <h3>O Autorze:</h3>
    <p>Kuba - swoją przygodę z kodowaniem zaczął 27 października 2018 roku.</p>
    <p>Od tego czasu minęło: <%=interval%> dni </p>
    <p>Mam nadzieję, że każdy dzień który upłynął od tego momentu był bogatszy w doświadczania od poprzedniego :)</p>
    <p>Dzisiejsza data: <%= LocalDateTime.now()%> </p>
</footer>
