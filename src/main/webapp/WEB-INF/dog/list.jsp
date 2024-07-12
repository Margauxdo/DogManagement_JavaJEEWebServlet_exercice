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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

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
