<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>
<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <FORM ACTION="j_security_check" METHOD="POST">
                <TABLE>
                    <TR><TD>User name: <INPUT TYPE="TEXT" NAME="j_username">
                    <TR><TD>Password: <INPUT TYPE="PASSWORD" NAME="j_password">
                    <TR><TH><INPUT TYPE="SUBMIT" VALUE="Log In">
                </TABLE>
            </FORM>
        </div>
    </div>
</div>

</body>
</html>
