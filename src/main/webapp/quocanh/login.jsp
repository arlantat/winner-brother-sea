<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/1/2024
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <style>

        body{
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background-repeat: no-repeat;
            background-size: cover;
            background-image: url("https://vudigital.co/wp-content/uploads/2020/11/hoat-dong-thuong-mai-dien-tu-e-commerce-va-tam-anh-huong-cua-chung-trong-chien-luoc-thuong-hieu2.jpg");
        }
        h2{
            text-align: center;
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }
        label{
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }



        .container {
            max-width: 700px;
            width: 30%;
            background: #ffff;
            padding: 25px 30px;
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .btn-primary {
            height: 10%;
            width: 100%;
            outline: none;
            color: #ffff;
            background: linear-gradient(135deg,#20c997,#3B5D50);
            border-radius: 20px;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 2px;
        }
        .form-control{

            height: 45px;
            width: 100%;
            outline: none;
            border-radius: 5px;
            border: 1px solid #cccc;
            padding-left: 15px;
            font-size: 16px;
            border-bottom-width: 5px;
            transition: all 1s ease;
        }

        .register-link {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
        a{
            font-size: 30px;
            color: #9b59b6;

        }
    </style>

</head>
<body>
<div class="container">
    <div id="login" class="mt-5">
        <h2>Login</h2>
        <form action="/authenticate" method="get">
            <div class="form-group">
                <label for="loginUsername">Username</label>
                <input type="text" class="form-control" id="loginUsername" name="loginUsername">
            </div>
            <div class="form-group">
                <label for="loginPassword">Password</label>
                <input type="password" class="form-control" id="loginPassword" name="loginPassword" >
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
            <a href="register.jsp ">Register</a>

        </form>
    </div>
</div>
<p class="msg">${msg}</p>


</body>
</html>