<%@page import="java.util.List"%>
<%@page import="moviecrud.entity.Movie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Movies</title>

<style>
    body{
        margin:0;
        padding:0;
        font-family: "Poppins", sans-serif;
        background: #141414;
        color: white;
    }

    h1{
        text-align: center;
        padding: 25px;
        color: #e50914;
        text-transform: uppercase;
        text-shadow: 0px 0px 15px rgba(229,9,20,0.7);
        letter-spacing: 1px;
    }

    .movie-grid{
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
        gap: 25px;
        padding: 40px;
        width: 90%;
        margin: auto;
    }

    .card{
        background: #1f1f1f;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0px 0px 15px rgba(0,0,0,0.7);
        transition: 0.3s;
        text-align: center;
    }

    .card:hover{
        transform: scale(1.08);
        box-shadow: 0px 0px 25px rgba(229,9,20,0.6);
    }

    .poster{
        width: 100%;
        height: 300px;
        object-fit: cover;
        border-bottom: 2px solid #e50914;
    }

    .details h3{
        margin: 10px 0 5px 0;
        font-size: 20px;
        font-weight: 600;
    }

    .details p{
        margin: 4px 0;
        color: #bbbbbb;
        font-size: 14px;
    }

    .btn{
        background: #e50914;
        border: none;
        padding: 8px 14px;
        border-radius: 4px;
        color:white;
        cursor:pointer;
        transition: .2s;
        font-weight: bold;
        margin: 6px;
        display:inline-block;
        text-decoration: none;
    }

    .btn:hover{
        background: #b20710;
        transform: scale(1.07);
    }

</style>

</head>
<body>

<h1>Manage Movies</h1>

<div class="movie-grid">

<%
List<Movie> movies=(List<Movie>) request.getAttribute("movies");
for(Movie movie:movies){
%>

<div class="card">
    <img class="poster" src="<%= movie.getImglink() %>" alt="Movie Poster">

    <div class="details">
        <h3><%= movie.getName() %></h3>
        <p>Genre: <%= movie.getGenre() %></p>
        <p>Rating: <%= movie.getRating() %></p>
    </div>

    <div>
        <a href="edit?id=<%= movie.getId() %>" class="btn">Edit</a>
        <a href="delete?id=<%= movie.getId() %>" class="btn">Delete</a>
    </div>
</div>

<% } %>

</div>

<script>
if("${message}" !== ""){
    alert("${message}");
}
</script>

</body>
</html>
