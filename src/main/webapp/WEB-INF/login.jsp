<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<head>
    <title>Login to Debt App</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <script
            src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

    <%--<style>--%>
        <%--body {--%>
            <%--background-image: url(<c:url value=""/>);--%>
        <%--}--%>
    <%--</style>--%>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <form action="<c:url value="/login-process"/>" method="post" class="form-horizontal">

                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email: </label>
                    <div class="col-sm-9">
                        <input id="email"
                               type="email"
                               name="email"
                               class="form-control"
                               value=""
                               placeholder="Enter email">
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password: </label>
                    <div class="col-sm-9">
                        <input id="password"
                               type="password"
                               name="password"
                               class="form-control"
                               value=""
                               placeholder="Enter password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button type="submit" class="btn btn-primary">Login</button>
                        <a href="<c:url value="/register"/>" class="btn btn-link">
                            Register
                        </a>
                    </div>
                </div>


            </form>
        </div>
    </div>

</div>

</body>
</html>