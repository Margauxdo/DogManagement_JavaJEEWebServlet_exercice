<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 12/07/2024
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="dogs" type="java.util.ArrayList<org.example.dogmanagement_javajeewebservlet_exercice.model.Dog>" scope="request" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <%@include file="/WEB-INF/bootstraps.html"%>
    <title>-Add a Dog-</title>
</head>
<body>
<h1>-Add a Dog-</h1>

<main class="container">
    <%  if (!dogs.isEmpty()) { %>
    <table class="table table-dark text-center align-middle">
        <thead>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>Breed</th>
            <th>DateOfBirth</th>

        </tr>
        </thead>
        <tbody>

    <% for (int i = 0; i < dogs.size();i++){ %>
    <tr>
        <td><%= i+1 %></td>
        <td><%= dogs.get(i).getId() %></td>
        <td><%= dogs.get(i).getName() %></td>
        <td><%= dogs.get(i).getBreed() %></td>
        <td><%= dogs.get(i).getDateOfBirth() %></td>
    </tr>
    <%  }%>

        </tbody>

    </table>
    <% } else { %>
    <p> There is not dog the database yet !</p>
    <% } %>

    <button type="button" class="btn btn-outline-success"  >
        <a class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="form.jsp">Add a dog</a></button>

</main>
</body>
</html>
