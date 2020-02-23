<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h1 class="mt-5">A Bootstrap 4 Starter Template</h1>
            <p class="lead">Complete with pre-defined file paths and responsive navigation!</p>
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
    </div>
</div>

<%@include file="footer.jsp"%>


