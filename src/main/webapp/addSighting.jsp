<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>
<!-- Page Content -->
<div class="container mb-4">
    <div class="row justify-content-center">
        <div class="col-lg-6.1 text-left">
            <form id="addSightingForm" action="/fluttr/InputSighting" class="was-validated my-4" method="post">
                <p class="h4 mb-4 text-center">Add Sighting</p>
                <div class="form-group">
                    <label for="locationInput" class="h6">Location</label>
                    <i class="active d-block my-2">Get Current Location or enter location</i>
                    <div class="row">

                        <div class="col flex mr-2">
                            <button type="button" id="locationInputCurrent" class="btn btn-secondary my-2 px-1">
                                <svg class="bi bi-cursor-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M14.082 2.182a.5.5 0 01.103.557L8.528 15.467a.5.5 0 01-.917-.007L5.57 10.694.803 8.652a.5.5 0 01-.006-.916l12.728-5.657a.5.5 0 01.556.103z" clip-rule="evenodd"/>
                                </svg>
                                Current Location
                            </button>
                            <span class="d-block mx-1" id="status"></span>
                            <input type="text" id="locationLatitude" class="form-control my-2 mx-1" placeholder="latitude" name="latitude">
                            <input type="text" id="locationLongitude" class="form-control my-2 mx-1" placeholder="longitude" name="longitude">
                        </div>
                        <div class="row flex">
                            <div class="border border-dark mx-2 mt-1 divider"></div>
                        </div>
                        <div class="col align-self-center">
                            <input type="text" class="form-control my-1 ml-1" id="locationInput" name="location" placeholder="Enter location manually">
                        </div>

                    </div>
                    <div class="valid-feedback">Valid.</div>
                    <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class="form-group">
                    <label for="dateTime" class="h6">Time</label>
                    <input type="datetime-local" class="form-control w-75" id="dateTime" name="dateTime" placeholder="Enter Date and Time">
                </div>
                <div class="form-group">
                    <label for="species" class="active h6 w-100">Species</label>
                    <select id="species" name="species" class="custom-select w-75">
                        <option value="ruby-throated">ruby-throated</option>
                        <option value="rufous">rufous</option>
                        <option value="green-violetear">green violetear</option>
                        <option value="broad-billed">broad-billed</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary waves-effect waves-light ml-0">Submit</button>
        </div>
        </form>
    </div>
</div>
</div>
<script src="JS/validateForm.js"></script>
<script src="JS/currentDate.js"></script>
<script src="JS/currentLocation.js"></script>
<%@include file="footer.jsp"%>

