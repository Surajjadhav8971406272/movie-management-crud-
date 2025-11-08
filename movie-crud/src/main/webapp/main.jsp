<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Management</title>

<!-- Import Premium Font -->
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">

<style>
    body{
        margin:0;
        padding:0;
        font-family: "Montserrat", sans-serif;

        /* Movie Background */
        background: url("https://img.freepik.com/free-vector/shiny-film-negative-cinema-background-with-text-space_1017-52787.jpg?semt=ais_hybrid&w=740&q=80") 
        no-repeat center center/cover;

        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        position: relative;
        color: white;
        text-align: center;
    }

    /* Smooth Dark Overlay */
    body::before{
        content:"";
        position: fixed;
        top:0; left:0;
        width:100%; height:100%;
        background: rgba(0,0,0,0.65);
        backdrop-filter: blur(4px);
        z-index:-1;
    }

    
    @keyframes fadeIn {
        from { opacity:0; transform: scale(0.94); }
        to { opacity:1; transform: scale(1); }
    }

    h1{
        font-size: 38px;
        margin-bottom: 45px;
        font-weight: 600;
        text-transform: uppercase;
        color: white;
        text-shadow: 0px 0px 12px rgba(255,255,255,0.65);
        letter-spacing: 3px;
    }

    button{
        background: rgba(255, 255, 255, 0.15);
        border: 1px solid rgba(255,255,255,0.4);
        padding: 14px 50px;
        margin: 10px;
        border-radius: 40px;
        font-size: 18px;
        cursor: pointer;
        color: white;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: 0.3s ease;
        backdrop-filter: blur(5px);
    }

    button:hover{
        background: rgba(255,255,255,0.30);
        transform: scale(1.12);
    }

    a{
        text-decoration: none;
    }
</style>

</head>
<body>

<div class="container">
    <h1>Movie Management System</h1>

    <a href="add"><button>Add Movie</button></a>
    <a href="view"><button>Manage Movies</button></a>
</div>

<script>
if("${message}" !== ""){
    alert("${message}");
}
</script>

</body>
</html>
