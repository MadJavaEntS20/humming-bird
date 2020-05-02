<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>

<div class="container mb-4">
    <div class="row justify-content-center">
        <div class="col-lg-6.1 text-left">
            <form id="registerUser" novalidate method="post" class="needs-validation my-4" action="${pageContext.request.contextPath}/RegisterUser" oninput='password.setCustomValidity(password.value !== passwordConfirm.value ? "Passwords do not match." : "")'>
            <p class="h4 my-4 text-center">Register</p>
            <div class="form-group">
                <label for="username-input">Username</label>
                <input type="text" name="username" class="form-control my-1 ml-1" required id="username-input" aria-describedby="usernameLabel" placeholder="Enter a username">
            </div>
                <div class="form-group">
                    <label for="inputPassword1">Password</label>
                    <input type="password" name="password" class="form-control" required id="inputPassword1" placeholder="">
                    <div class="invalid-feedback">Passwords must match.</div>
                </div>
                <div class="form-group">
                    <label for="inputPassword2">Confirm Password</label>
                    <input type="password" name="passwordConfirm" class="form-control" required id="inputPassword2" placeholder="">
                    <div class="invalid-feedback">Passwords must match.</div>
                </div>
                <button type="submit" class="btn btn-primary waves-effect waves-light ml-0">Submit</button>
            </form>
        </div>
    </div>
</div>
<script src="JS/validateForm.js"></script>

<%@include file="footer.jsp"%>

