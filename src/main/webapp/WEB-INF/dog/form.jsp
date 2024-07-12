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

<h1>- Add a dog -</h1>

<form action="/dog/form" method="post">

        <div class="mb-3">
            <label for="name" class="name"> Dog Name</label>
            <input type="text" id="name" class="name" placeholder="Disabled input">
        </div>


    <div class="mb-3">
        <label for="breed" class="breed">Dog breed</label>
        <input type="text" id="breed" class="breed" placeholder="Disabled input">
    </div>


    <div class="mb-3">
        <label for="dateOfBirth" class="dateOfBirth">Disabled input</label>
        <input type="date" id="dateOfBirth" class="dateofbirth" placeholder="Disabled input">
    </div>


        <button type="submit" class="btn btn-primary">Add dog</button>

</form>

</body>
</html>
