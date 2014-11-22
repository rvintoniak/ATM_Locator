<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script>
    <c:if test="${not empty active}">
    $(document).ready(function() {
        $('.${active}').addClass('active');
    });
    </c:if>
</script>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">ATM locator</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li class="main"><a href="/">Home</a></li>
                <sec:authorize access="isAnonymous()">
                    <li class="login"><a href="<c:url value="/login"/>">Login</a></li>
                    <li class="signup"><a href="<c:url value="/signup"/>">Sign up</a></li>
                </sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">
                    <li class="admin"><a href="<c:url value="/admin" />">Banks</a></li>
                    <li class="admin"><a href="<c:url value="/admin" />">Parsers</a></li>
                    <li class="adminUsers"><a href="<c:url value="/adminUsers" />">Users</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="profile"><a href="<c:url value="/user/profile" />">Profile</a></li>
                    <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>