<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h1 class="mt-5">User Registration</h1>
            <form action="${pageContext.request.contextPath}/RegisterUser" method="post">
                <div class="form-group">
                    <label for="username-input">Username</label>
                    <input type="username" name="username" class="form-control" id="username-input" aria-describedby="usernameLabel" placeholder="Enter a username">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword2">Confirm Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>

<body>

<%@include file="footer.jsp"%>

