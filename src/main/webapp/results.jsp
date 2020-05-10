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
                <table class="table table-striped" id="resultsTable">
                    <thead>
                    <tr>
                        <th scope="col">Username</th>
                        <th scope="col">Species</th>
                        <th scope="col">Longitude</th>
                        <th scope="col">Latitude</th>
                        <th scope="col">Date</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}">
                            <c:forEach var="sighting" items="${user.sighting}" varStatus="loop">
                                    <tr>
                                        <td>${user.userName}</td>
                                        <td>${sighting.species}</td>
                                        <td>${sighting.longitude}</td>
                                        <td>${sighting.latitude}</td>
                                        <td>${sighting.dateTime.getMonth() + 1}/${sighting.dateTime.getDate()}/${sighting.dateTime.getYear() - 100}</td>
                                        <td><a class="btn btn-primary" href="${pageContext.request.contextPath}/updateSighting?id=${sighting.id}">Edit</a></td>
                                        <td><a class="btn btn-danger" href="${pageContext.request.contextPath}/removeSighting?id=${sighting.id}&pageName=results">Delete</a></td>
                                    </tr>
                            </c:forEach>
                    </c:forEach>
                    </tbody>
                </table>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#resultsTable').DataTable();
        $('.dataTables_length').addClass('bs-select');
    });
</script>
<%@include file="footer.jsp"%>


