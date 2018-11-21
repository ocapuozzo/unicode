<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Unicode</title>

    <style>

        .caractere {
            border-style: solid;
            background-color: aqua
        }

        .code {
            border-style: solid;
            background-color: lightgreen
        }

    </style>

</head>
<body>
<h1>Les caractères de 0 à 255</h1>
<p/>
<hr width="100%"/>

<table border="1">
    <tr>
        <c:forEach var="car" varStatus="status" begin="0" end="255">
        <c:if test="${(status.index+1) % 16 == 0}">
    </tr>
    <tr>
        </c:if>
        <td>
            <div class="code">${car}</div>
            <div class="caractere">&#${car};</div>
        </td>

        </c:forEach>
    </tr>
</table>

</body>
</html>
