<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>

<div class="container mb-4">
    <div class="row justify-content-center">
        <div class="col-lg-6.1 text-left">
            <form id="registerUser" novalidate method="post" class="needs-validation my-4" action="${pageContext.request.contextPath}/updatePassword" oninput='password.setCustomValidity(password.value !== passwordConfirm.value ? "Passwords do not match." : "")'>
                <h4 class="my-4 text-center">Update Password</h4>
                <h3 class="text-danger">${statusMessage}</h3>
                <c:remove var="statusMessage"/>
                <input type="hidden" name="id" value="${user.id}">
                <div class="form-group">
                    <label for="current-password-input">Current Password</label>
                    <input type="password" name="currentPassword" class="form-control my-1 ml-1" required id="current-password-input" aria-describedby="currentpasswordLabel" placeholder="">
                </div>
                <div class="form-group">
                    <label for="new-password-input">New Password</label>
                    <input type="password" name="password" class="form-control" required id="new-password-input" placeholder="">
                    <div class="invalid-feedback">Passwords must match.</div>
                </div>
                <div class="form-group">
                    <label for="new-password-input-2">Confirm New Password</label>
                    <input type="password" name="passwordConfirm" class="form-control" required id="new-password-input-2" placeholder="">
                    <div class="invalid-feedback">Passwords must match.</div>
                </div>
                <button type="submit" class="btn btn-primary waves-effect waves-light ml-0">Submit</button>
            </form>
        </div>
    </div>
</div>
<script src="JS/validateForm.js"></script>

<%@include file="footer.jsp"%>


