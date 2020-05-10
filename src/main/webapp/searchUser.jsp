<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>

<!-- Page Content -->
<div class="container mb-4">
    <div class="row justify-content-center">
    <div class="col-lg-6.1 text-left">
            <p class="h4 my-4 text-center">Search Users</p>
            <form action="searchUser"  class="my-4">
                <div class="form-group">
                    <input type="text" class="form-control" id="searchTerm" name="searchTerm" aria-describedby="searchTermHelp" placeholder="Enter username">
                </div>
                <button type="submit" name="submit" value="search" class="btn btn-primary  waves-effect waves-light">Search</button>
                <button type="submit" name="submit" value="viewAll" class="btn btn-primary waves-effect waves-light">View All Users</button>
            </form>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>
