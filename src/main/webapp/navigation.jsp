<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ekmul
  Date: 2/22/2020
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
        <a class="navbar-brand" href="Sightings">Fluttr</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href ="loginAction">Log In</a>
                </li>
                <c:if test="${pageContext.request.isUserInRole('admin')}">
                    <li class="nav-item">
                        <span class="navbar-text">
                            Admin
                        </span>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.isUserInRole('user')}">
                    <li class="nav-item">
                    <a class="navbar-text" href="/userPage.jsp">
                        ${pageContext.request.getRemoteUser()}
                    </a>
                    </li>
                    <li class="nav-item">
                        <a href ="logoutAction">Log Out</a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="register.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="searchUser.jsp">Search Users</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
