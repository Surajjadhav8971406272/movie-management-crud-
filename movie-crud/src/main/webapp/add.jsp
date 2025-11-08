<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>

<!-- Modern Clean Font -->
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">

<style>
    body{
        margin:0;
        padding:0;
        font-family: "Montserrat", sans-serif;

        /* Background */
        background: url("https://img.freepik.com/free-vector/shiny-film-negative-cinema-background-with-text-space_1017-52787.jpg?semt=ais_hybrid&w=740&q=80") no-repeat center center/cover;
        position: relative;
        min-height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
    }

    /* Soft Dim Overlay */
    body::before{
        content:"";
        position: fixed;
        top:0; left:0;
        width:100%; height:100%;
        background: rgba(0,0,0,0.55);
        backdrop-filter: blur(4px);
        z-index:-1;
    }

    .container{
        background: rgba(255,255,255,0.10);
        padding: 45px 55px;
        border-radius: 14px;
        width: 380px;

        border: 1px solid rgba(255,255,255,0.25);
        backdrop-filter: blur(10px);

        box-shadow: 0 0 18px rgba(255,255,255,0.35);
        color: white;
        animation: fadeIn 1s ease;
    }

    @keyframes fadeIn {
        from { opacity:0; transform: scale(0.96); }
        to { opacity:1; transform: scale(1); }
    }

    h1{
        text-align: center;
        color: white;
        margin-bottom: 35px;
        font-weight: 600;
        letter-spacing: 2px;
        text-transform: uppercase;
        text-shadow: 0px 0px 12px rgba(255,255,255,0.6);
    }

    label{
        font-size: 16px;
        font-weight: 400;
        opacity: 0.9;
    }

    input{
        width: 100%;
        padding: 11px;
        margin-top: 6px;
        margin-bottom: 18px;
        border-radius: 6px;
        border: none;
        outline: none;
        background: rgba(255, 255, 255, 0.18);
        color: white;
        font-size: 15px;
        backdrop-filter: blur(5px);
    }

    input::placeholder { color: rgba(255,255,255,0.6); }

    button{
        width: 100%;
        padding: 12px;
        background: rgba(255,255,255,0.25);
        border: 1px solid rgba(255,255,255,0.4);
        border-radius: 40px;
        cursor: pointer;
        font-size: 17px;
        font-weight: 500;
        color: white;
        text-transform: uppercase;
        transition:0.3s;
        backdrop-filter: blur(5px);
    }

    button:hover{
        transform: scale(1.06);
        background: rgba(255,255,255,0.35);
    }
</style>

</head>
<body>

<div class="container">
    <h1>Add Movie</h1>

    <form action="add" method="post">
        <label>Name</label>
        <input type="text" name="name" required>

        <label>Genre</label>
        <input type="text" name="genre" required>

        <label>Rating</label>
        <input type="text" name="rating" required>

        <label>Image Link</label>
        <input type="text" name="imglink" required>

        <button type="submit">Add Movie</button>
    </form>
</div>

</body>
</html>
