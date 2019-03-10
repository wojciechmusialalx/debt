<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button"
                    class="navbar-toggle collapsed"
                    data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<c:url value="/"/>"><span class="glyphicon glyphicon-home"></span></a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <sec:authorize access="hasRole('ADMIN')">
                    <li><a href="<c:url value="/users"/>">Users</a></li>
                </sec:authorize>

                <li><a href="<c:url value="/debts"/>">Debts</a></li>
                <li>
                    <a href="<c:url value="/debts/create"/>">New debt <span class="glyphicon glyphicon-plus"></span></a>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<c:url value="/logout"/>">
                        Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>