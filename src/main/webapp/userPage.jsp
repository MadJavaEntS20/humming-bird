<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h1 class="my-5">User Management</h1>
            <p class="my-0 list-group-item text-left">Username: ${pageContext.request.getRemoteUser()}</p>
            <a class="list-group-item text-left" href="${pageContext.request.contextPath}/updatePassword?id=${user.id}" >Update Password</a>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 text-center">
            <h3 class="mt-5">Sightings</h3>
            <table id="userTable" class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Species</th>
                    <th scope="col">Longitude</th>
                    <th scope="col">Latitude</th>
                    <th scope="col">Date</th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="sighting" items="${sightings}" varStatus="loop">
                            <tr>
                                <td>${sighting.species}</td>
                                <td>${sighting.longitude}</td>
                                <td>${sighting.latitude}</td>
                                <td>${sighting.dateTime.getMonth() + 1}/${sighting.dateTime.getDate()}/${sighting.dateTime.getYear() - 100}</td>
                                <td><a class="btn btn-primary" href="${pageContext.request.contextPath}/updateSighting?id=${sighting.id}">Edit</a></td>
                                <td><a class="btn btn-danger" href="${pageContext.request.contextPath}/removeSighting?id=${sighting.id}&pageName=userPage">Delete</a></td>
                            </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="legend d-flex">
                <ul>
                    <li><img src="Images/pink.PNG" alt="ruby throated legend key">Ruby Throated</li>
                    <li><img src="Images/yellow.PNG" alt="rufous legend key">Rufous</li>
                </ul>
                <ul>
                    <li><img src="Images/green.PNG" alt="green-violetear legend key">Green-Violetear</li>
                    <li><img src="Images/blue.PNG" alt="broad-billed legend key">Broad-Billed</li>

                </ul>
            </div>
            <div id="userMap" class="userMap"></div>
            <span id="info"></span>

            <script type="text/javascript">
                    $(document).ready(function () {
                        $('#userTable').DataTable();
                        $('.dataTables_length').addClass('bs-select');
                    });
                let sightingsObject = ${sightings};
                let mapId = document.querySelector('.userMap').id;
            </script>
        </div>
    </div>
</div>
<script src="JS/mainMap.js"></script>
<%@include file="footer.jsp"%>


