<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/bootstraps.html"%>
    <title>form</title>
</head>
<body>
<main class="container p-3 mb-2 bg-dark text-white rounded">

<h1 class=" border-bottom  border-secondary-subtle border-opacity-25">- Add a dog -</h1>

<form action="${pageContext.request.contextPath}/dog/form" method="post"><%--revoircontext--%>

        <div class="mb-3">
            <label for="name" class="name"> Dog Name</label>
            <input type="text" id="name" class="name" placeholder="Disabled input" name="name">
        </div>


    <div class="mb-3">
        <label for="breed" class="breed">Dog breed</label>
        <input type="text" id="breed" class="breed" placeholder="Disabled input" name="breed">
    </div>


    <div class="mb-3">
        <label for="dateOfBirth" class="dateOfBirth">Disabled input</label>
        <input type="date" id="dateOfBirth" class="dateofbirth" placeholder="Disabled input" name="dateOfBirth">
    </div>


        <button type="submit" class="btn btn-outline-success link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover text-light bg-dark">Add dog</button>

</form>
</main>

</body>
</html>
