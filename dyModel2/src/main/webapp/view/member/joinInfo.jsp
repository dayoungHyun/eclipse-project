<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<link rel="icon" href="./images/images2/favicon.png">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@1,200&display=swap" rel="stylesheet">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<style>
:root {
    --body-background-color: #f5f6f7;
    --font-color: #263343;
    --border-gray-color : #dadada;
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
    background-color: #263343;
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
    height: 50vh; /* 화면의 세로 중앙에 정렬하기 위해 필요한 높이 값을 조정할 수 있습니다. */
}

.input-form {
    text-align: center; /* 폼 내부의 요소를 가운데 정렬합니다. */
    background-color: #ffffff; /* 폼의 배경색을 흰색으로 설정합니다. */
    padding: 25px; /* 내부 여백을 추가합니다. */
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과를 추가합니다. */
    z-index: 100;
    margin: 0 auto;
    margin-right: 50px;
    margin-left: 50px;
}


</style>
<body>

<nav class="navbar">
    
    
</nav>
<div class="container">
    <div class="input-form clo-md-12 mx-auto">
        <h4 class="mb-3">member's info</h4>
        <table class="table">
            <tr><td>id</td><td>${dy.id }</td></tr>
            <tr><td>password</td><td>${dy.password }</td></tr>
            <tr><td>name</td><td>${dy.name}</td></tr>
            <tr><td>birthyear</td><td>${dy.birthyear}</td></tr>
            <tr><td>birthmonth</td><td>${dy.birthmonth}</td></tr>
            <tr><td>birthdate</td><td>${dy.birthdate}</td></tr>
            <tr><td>gender</td><td>${dy.gender==1?"male":"female"}</td></tr>
            <tr><td>email</td><td>${dy.email}</td></tr>
            <tr><td>phone</td><td>${dy.phone}</td></tr>
            
            <tr>
			    <td colspan="2" style="padding-top: 20px;"> <!-- padding-top 추가 -->
			        <a class="btn btn-primary" href="${pageContext.request.contextPath}/member/memberUpdateForm" >회원정보수정</a>
			        <a class="btn btn-primary" href="${pageContext.request.contextPath}/member/memberDeleteForm">회원탈퇴</a> 
			        <a class="btn btn-primary" href="${pageContext.request.contextPath}/member/memberPassForm">비밀번호수정</a> 
			    </td>
			</tr>
        </table>
    </div>
</div>
</body>
</html>