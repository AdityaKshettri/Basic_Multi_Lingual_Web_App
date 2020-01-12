<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="theLocale" value="${not empty param.theLocale? param.theLocale : pageContext.request.locale}" scope="session"/>
<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="MultiLingual.mylabels"/>
    
<html>
    <body>
        <a href="i18n_test.jsp?theLocale=en_US">English(US)</a>
        <a href="i18n_test.jsp?theLocale=es_ES">Spanish(ES)</a>
        <a href="i18n_test.jsp?theLocale=de_DE">German(DE)</a>
        <br><br>
        <fmt:message key="label.greeting"/>
            <br>
        <fmt:message key="label.firstname"/> : Aditya
            <br>
        <fmt:message key="label.lastname"/> : Kshettri
            <br>
        <fmt:message key="label.welcome"/>
        <br><br>
        Selected Locale : ${theLocale}
    </body>
</html>
