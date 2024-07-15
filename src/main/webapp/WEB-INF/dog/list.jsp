
<jsp:useBean id="dogs" type="java.util.ArrayList<org.example.dogmanagement_javajeewebservlet_exercice.model.Dog>" scope="request" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <%@include file="/WEB-INF/bootstraps.html"%>
    <title>-Add a Dog-</title>
</head>
<body>


<main class="container p-3 mb-2 bg-dark text-white rounded">

    <h1 class=" border-bottom  border-secondary-subtle border-opacity-25">-Add a Dog-</h1>
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

        <td><%= dogs.get(i).getId() %></td>
        <td><%= dogs.get(i).getName() %></td>
        <td><%= dogs.get(i).getBreed() %></td>
        <td><%= dogs.get(i).getDateOfBirth() %></td>
        <td><a href="${pageContext.request.contextPath}/dog/description?id=<%=dogs.get(i).getId()%>" ><i class="bi bi-eye"></i>Detail</a></td>
        <%--ajouter lien pour details dans td, pour ne pas que url recommence il fauta jouter pagecontext voir add.jsp exercice4, parametre optionnel il faut regarder ajouté ?id=numérorecuperergetId--%>
    </tr>
    <%  }%>

        </tbody>

    </table>
    <% } else { %>
    <p class=" border-bottom  border-secondary-subtle border-opacity-25" > There is not dog the database yet !</p>
    <% } %>

    <button type="button" class="btn btn-outline-success "  >
        <%--voir lien --%>
        <a class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover text-light bg-dark" href="${pageContext.request.contextPath}/dog/form">Add a dog</a></button>

</main>
</body>
</html>
