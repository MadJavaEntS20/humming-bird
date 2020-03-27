<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>
<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">

            <form action="${pageContext.request.contextPath}/InputSighting" method="post">
                <div class="form-group">
                    <label for="locationInput">Location</label>
                    <div id="locationInputCurrent">Current Location</div>
                    <p id="status"></p>
                    <input type="text" id="locationLongitude" name="longitude">

                    <input type="text" class="form-control" id="locationInput" name="location" placeholder="Enter location manually"/>

                    <label for="dateTime">Time</label>
                    <input type="datetime-local" class="form-control" id="dateTime" name="dateTime" placeholder="Enter Date and Time"/>

                    <label for="species">Species</label>
                    <select id="species" name="species">
                        <option value="ruby-throated">ruby-throated</option>
                        <option value="rufous">rufous</option>
                        <option value="green-violetear">green violetear</option>
                        <option value="broad-billed">broad-billed</option>
                    </select>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="JS/currentDate.js"></script>
<script src="JS/currentLocation.js"></script>
<%@include file="footer.jsp"%>

