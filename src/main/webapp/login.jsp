<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>
<!-- Page Content -->
<div class="container mb-4">
    <div class="row justify-content-center">
        <div class="col-lg-6.1 text-left">
            <form id="addSightingForm" action="j_security_check" class="needs-validation my-4" method="post" novalidate>
                <p class="h4 my-4 text-center">Login</p>
                <div class="form-group">
                    <label for="loginUsername" class="h6">Username</label>
                    <input type="text" class="form-control my-1 ml-1" required id="loginUsername" name="j_username" placeholder="">
                </div>
                <div class="form-group">
                    <label for="loginPassword" class="h6">Password</label>
                    <input type="password" class="form-control my-1 ml-1" required id="loginPassword" name="j_password" placeholder="">
                </div>
                <button type="submit" value="Log In" class="btn btn-primary waves-effect waves-light ml-0">Submit</button>
            </form>
        </div>
    </div>
</div>
<script src="JS/validateForm.js"></script>

<%@include file="footer.jsp"%>
