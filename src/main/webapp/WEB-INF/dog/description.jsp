<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="dog" type="org.example.dogmanagement_javajeewebservlet_exercice.model.Dog" scope="request" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/bootstraps.html"%>
    <title>Description</title>
</head>
<body>
<main class="container p-3 mb-2 bg-dark text-white rounded">

    <h1 class=" border-bottom  border-secondary-subtle border-opacity-25">-View a Dog-</h1>

    <form action="${pageContext.request.contextPath}/dog/list" method="get"><%--revoircontext--%>

        <div class="mb-3">
            <label for="name" class="name"> Dog Name</label>
            <input type="text" id="name" class="name" placeholder="Disabled input" name="name" value="<%= dog.getName()%>" readonly>
        </div>


        <div class="mb-3">
            <label for="breed" class="breed">Dog breed</label>
            <input type="text" id="breed" class="breed" placeholder="Disabled input" name="breed" value="<%= dog.getBreed()%>" readonly>
        </div>


        <div class="mb-3">
            <label for="dateOfBirth" class="dateOfBirth">Disabled input</label>
            <input type="date" id="dateOfBirth" class="dateofbirth" placeholder="Disabled input" name="dateOfBirth" value="<%= dog.getDateOfBirth()%>" readonly>
        </div>


        <button type="submit" class="btn btn-outline-success link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover text-light bg-dark" >return</button>

    </form>

</main>

</body>
</html>
