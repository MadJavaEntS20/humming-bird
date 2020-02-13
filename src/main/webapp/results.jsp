<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="head.jsp"%>

<html><body>

<div class="container-fluid">
    <a href="index.jsp">Search User</a>
    <h2>Search Results: </h2>
    <c:choose>
        <c:when test="${users.size() > 0}">
            <table>
                <tr>
                    <th>Userid</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Age</th>
                </tr>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.age}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>
    </c:choose>
</div>

</body>
</html>
