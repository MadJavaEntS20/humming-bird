<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h1 class="mt-5">Results</h1>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Username</th>
                        <th scope="col" colspan="4">Sighting</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td>species</td>
                        <td>longitude</td>
                        <td>latitude</td>
                        <td>date time</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                        <td>${user.userName}</td>
                        <c:if test="${user.sighting.size() lt 1}">
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </c:if>
                            <c:forEach var="sighting" items="${user.sighting}" varStatus="loop">
                                <c:if test="${loop.index gt 0}">
                                    <tr>
                                        <td></td>
                                        <td>${sighting.species}</td>
                                        <td>${sighting.longitude}</td>
                                        <td>${sighting.latitude}</td>
                                        <td>${sighting.dateTime.getMonth() + 1}/${sighting.dateTime.getDate()}/${sighting.dateTime.getYear() - 100}</td>
                                        <td><a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/removeSightingResults?id=${sighting.id}">Delete</a></td>
                                    </tr>
                                </c:if>
                                <c:if test="${loop.index == 0}">
                                        <td>${sighting.species}</td>
                                        <td>${sighting.longitude}</td>
                                        <td>${sighting.latitude}</td>
                                        <td>${sighting.dateTime.getMonth() + 1}/${sighting.dateTime.getDate()}/${sighting.dateTime.getYear() - 100}</td>
                                        <td><a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/removeSightingResults?id=${sighting.id}">Delete</a></td>
                                </c:if>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>


