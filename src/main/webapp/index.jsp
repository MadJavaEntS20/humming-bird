<%@include file="head.jsp"%>
<html>
<body>
<h2>User Display Exercise - Week 1</h2>

<h3>User Search by Last Name</h3>
<form action ='${pageContext.request.contextPath}/searchUser' method="get">
    <input type="text" name="lastName" /><br/>
    <input type="submit" name="" value="Enter">
</form>
</body>
</html>