<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<link rel="stylesheet" href="joinInfo.css">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@1,200&display=swap" rel="stylesheet">   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<style>
:root {
    --body-background-color: #f5f6f7;
    --font-color: #263343;
    --border-gray-color: #dadada;
}

body {
    margin: 0;
    font-family: 'Source Sans Pro';
    background-color: var(--body-background-color);
}

a {
    text-decoration: none;
    color: white;
}

.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: var(--font-color);
    padding: 1px 12px !important;
}

.navbar_logo {
    font-size: 24px;
    color: white;
}

.navbar_logo i {
    color: #d49466;
}

.navbar_menu {
    display: flex;
    list-style: none;
    padding-left: 0;
}

.navbar_menu li {
    padding: 8px 12px;
}

.navbar_menu li:hover {
    background-color: #d49466;
    border-radius: 4px;
}

.navbar_icons {
    list-style: none;
    color: white;
    display: flex;
    padding-left: 0;
}

.navbar_icons li {
    padding: 8px 12px;
}

.navbar_toogleBtn {
    display: none;
    position: absolute;
    right: 32px;
    font-size: 24px;
    color: #d49466;
}

@media screen and (max-width: 768px) {
    .navbar {
        flex-direction: column;
        align-items: flex-start;
        padding: 8px 24px;
    }

    .navbar_menu {
        display: none;
        flex-direction: column;
        align-items: center;
        width: 100%;
    }

    .navbar_menu li {
        width: 100%;
        text-align: center;
    }

    .navbar_icons {
        display: none;
        justify-content: center;
        width: 100%;
    }

    .navbar_toogleBtn {
        display: block;
    }

    .navbar_menu.active,
    .navbar_icons.active {
        display: flex;
    }
}

* {
    box-sizing: border-box;
    outline: none;
}

.btn.btn-primary {
    background-color: var(--font-color);
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-bottom: 30px;
}

.btn.btn-primary:hover {
    background-color: #d49466;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 50vh;
}


/* 추가된 테이블 스타일 */
.table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

.table th, .table td {
    border: 1px solid var(--border-gray-color);
    padding: 8px;
    text-align: center;
}

.table th {
    background-color: var(--font-color);
    color: white;
}

.table tbody tr:hover {
    background-color: #f1f1f1;
}

.table tbody td {
    vertical-align: middle;
}
.input-form {
    text-align: center;
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    z-index: 100;
    /* height: 38vh; */
    /* max-width: 600px; */
    width: 70%;
    margin: 0 auto;
    margin-top: 100px;
    margin-right: 50px;
    margin-left: 50px;
}
</style>
<body>
<div class="container">sss
    <div class="input-form clo-md-12 mx-auto">
         <table class="table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>email</th>
                    <th>birthyear</th>
                    <th>birthmonth</th>
                    <th>birthdate</th>
                    <th>gender</th>
                    <th>phone</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dy" items="${li}">
                    <tr>
                        <td>${dy.id}</td>
                        <td>${dy.name}</td>
                        <td>${dy.email}</td>
                        <td>${dy.birthyear}</td>
                        <td>${dy.birthmonth}</td>
                        <td>${dy.birthdate}</td>
                        <td>${dy.gender == 1 ? "male" : "female"}</td>
                        <td>${dy.phone}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>