<%--<jsp:useBean id="userAddMessage" scope="request" type="java"/>--%>
<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <form action="searchUser" class="form-inline">
                <div class="form-group">
                    <label for="searchTerm">Search</label>
                    <input type="text" class="form-control" id="searchTerm" name="searchTerm" aria-describedby="searchTermHelp" placeholder="Enter username">
                </div>
                <button type="submit" name="submit" value="search" class="btn btn-primary">Search</button>
                <button type="submit" name="submit" value="viewAll" class="btn btn-primary">View all users</button>
            </form>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>
