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
<div class="main-container">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
        <a class="navbar-brand" href="Sightings">Fluttr</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <c:if test="${pageContext.request.getRemoteUser() == null}">
                <li class="nav-item">
                    <a class="nav-link" href ="loginAction">Log In</a>
                </li>
                </c:if>
                <c:if test="${pageContext.request.isUserInRole('admin')}">
                    <li class="nav-item">
                        <span class="navbar-text">
                            Admin
                        </span>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.isUserInRole('user')}">
                    <li class="nav-item">
                        <a  class="nav-link" href="singleUser">
                            ${pageContext.request.getRemoteUser()}
                        </a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.getRemoteUser() != null}">
                    <li class="nav-item">
                        <a class="nav-link" href ="logoutAction">Log Out</a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.getRemoteUser() == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.isUserInRole('admin')}">
                 <li class="nav-item">
                    <a class="nav-link" href="searchUser.jsp">Search Users</a>
                 </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
