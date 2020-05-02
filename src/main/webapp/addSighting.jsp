<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>
<!-- Page Content -->
<div class="container mb-4">
    <div class="row justify-content-center">
        <div class="col-lg-6.1 text-left">
            <c:choose>
                <c:when test ="${sightingToUpdate ne null}">
                    <p class="h4 my-4 text-center">Update Sighting</p>
                    <form id="addSightingForm" action="${pageContext.request.contextPath}/updateSighting" class="needs-validation my-4" method="post" novalidate>
                        <input type="hidden" name="id" value="${sightingToUpdate.id}">
                </c:when>
                <c:otherwise>
                    <form id="addSightingForm" action="${pageContext.request.contextPath}/inputSighting" class="needs-validation my-4" method="post" novalidate>
                        <p class="h4 my-4 text-center">Add Sighting</p>
                </c:otherwise>
            </c:choose>
                <div class="form-group locationInputOptions">
                    <label for="locationInput" class="h6">Location</label>
                    <i class="active d-block my-2">
                        Get
                        <button type="button" id="location-current" class="location-options btn btn-success my-2 px-1">
                            <svg class="bi bi-cursor-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M14.082 2.182a.5.5 0 01.103.557L8.528 15.467a.5.5 0 01-.917-.007L5.57 10.694.803 8.652a.5.5 0 01-.006-.916l12.728-5.657a.5.5 0 01.556.103z" clip-rule="evenodd"/>
                            </svg>
                            Current Location
                        </button>
                        or
                        <span class="location-options btn btn-success" id="location-manual">Enter Location</span></i>
                    <div class="row location-inputs">
                        <div class="col flex mr-2 location-current">
                            <span class="d-block mx-1" id="status"></span>
                            <input type="text" value="${sightingToUpdate ne null ? sightingToUpdate.latitude : ''}" id="locationLatitude"  class="form-control my-2 mx-1" placeholder="latitude" name="latitude">
                            <input type="text" value="${sightingToUpdate ne null ? sightingToUpdate.longitude : ''}" id="locationLongitude" class="form-control my-2 mx-1" placeholder="longitude" name="longitude">
                        </div>
                        <div class="col align-self-center location-manual">
                            <input type="text" class="form-control my-1 ml-1" id="locationInput" name="location" placeholder="Enter location manually">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="dateTime" class="h6">Time</label>
                    <input type="datetime-local" value="${sightingToUpdate ne null ? sightingToUpdate.dateTime : ''}" class="form-control w-75" id="dateTime" name="dateTime" placeholder="Enter Date and Time" required>
                    <div class="invalid-tooltip">Please set a date of sighting.</div>
                </div>
                <div class="form-group">
                    <label for="species" class="active h6 w-100">Species</label>
                    <select id="species" name="species" class="custom-select w-75" required>
                        <option disabled value>Select a Species</option>
                        <option <c:if test="${sightingToUpdate ne null && sightingToUpdate.species == 'ruby-throated'}">selected</c:if> value="ruby-throated">ruby-throated</option>
                        <option <c:if test="${sightingToUpdate ne null && sightingToUpdate.species == 'rufous'}">selected</c:if> value="rufous">rufous</option></option>
                        <option <c:if test="${sightingToUpdate ne null && sightingToUpdate.species == 'green-violetear'}">selected</c:if> value="green-violetear">green violetear</option>
                        <option <c:if test="${sightingToUpdate ne null && sightingToUpdate.species == 'broad-billed'}">selected</c:if> value="broad-billed">broad-billed</option>
                    </select>
                    <div class="invalid-tooltip">Please fill select a species.</div>
                </div>
                <button type="submit" class="btn btn-primary waves-effect waves-light ml-0">Submit</button>
        </form>
        </div>
    </div>
</div>


<script src="JS/validateForm.js"></script>
<script src="JS/validateSightingLocation.js"></script>
<script src="JS/currentDate.js"></script>
<script src="JS/currentLocation.js"></script>
<%@include file="footer.jsp"%>

