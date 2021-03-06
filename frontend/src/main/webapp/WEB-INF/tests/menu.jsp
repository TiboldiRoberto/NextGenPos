<%-- 
    Document   : menu
    Created on : 14-Jan-2022, 20:46:04
    Author     : Roberto
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}">NextGenPOS</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/ProductServlet">Home</a>
                    </li>
                    <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
                    <li class="nav-item ${activePage eq 'Users' ? 'active' : ''}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/TestUsersRestServlet">Users</a>
                    </li>
                    </c:if>
                    <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
                    <li class="nav-item ${activePage eq 'Users' ? 'active' : ''}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin_page.xhtml">Admin</a>
                    </li>
                    </c:if>
                    <c:if test="${pageContext.request.isUserInRole('ClientRole')}">
                    <li class="nav-item ${activePage eq 'Users' ? 'active' : ''}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/cashier_page.xhtml">Cashier</a>
                    </li>
                    </c:if>
<!--                    <li class="nav-item">
                        <a class="nav-link disabled">Disabled</a>
                    </li>-->
                    <li class="nav-item">
                    <c:choose>
                        <c:when test="${pageContext.request.getRemoteUser() == null}">
                            <a class= "nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
                        </c:when>
                        <c:otherwise>
                            <a class= "nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
                        </c:otherwise>
                    </c:choose>
                    </li>
                </ul>
                <br>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>