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
                    <td>${user.userName}</td>
                    <c:forEach var="sighting" items="${user.sighting}" varStatus="loop">
                            <tr>
                                <td></td>
                                <td>${sighting.species}</td>
                                <td>${sighting.longitude}</td>
                                <td>${sighting.latitude}</td>
                                <td>${sighting.dateTime}</td>
                            </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>


