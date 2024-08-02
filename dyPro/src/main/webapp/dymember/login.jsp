<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype HTML>
<head>
	<meta charset="UTF-8">
	<title>login page</title>
	<link rel="stylesheet" href="login.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@1,200&display=swap" rel="stylesheet">   
</head>
<body>
<form action="loginPro.jsp" method="post">
	<nav class="navbar">
        <div class="navbar_logo">
            <i class="fas fa-moon"></i>
            <a>HELLO, IT'S ME DAYOUNG</a> 
        </div>

        <div class="navbar_menu">
        <% if(session.getAttribute("id")!=null) { %>
        	<li><a href="./home.jsp">Home</a></li>
       	    <li><a href="./logout.jsp">Logout</a></li>
            <li><a href="./join.jsp">Member's Info</a></li>
            <li><a href="">My Project</a></li>
			<li><a href="">Q&A</a></li>
        <% } else { %>
        	<li><a href="./home.jsp">Home</a></li>
       	    <li><a href="./login.jsp">Login</a></li>
            <li><a href="./join.jsp">Join</a></li>
            <li><a href="">My Project</a></li>
			<li><a href="">Q&A</a></li>
		<% } %>
        </div>

        <ul class="navbar_icons">
            <li><i class="fab fa-blogger"></i></li>
            <li><i class="fab fa-instagram"></i></li>
        </ul>

        <a href="#" class="navbar_toogleBtn">
            <i class="fas fa-bars"></i>
        </a>
    </nav>
	<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="logo-wrap">
				<img src="moon.png">
			</div>
		</header>
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder="아이디" type="text" name="id"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input placeholder="비밀번호" type="password" name="password"></input>
			</div>
			<div class="login-button-wrap">
				<button>로그인</button>
			</div>
			</form>
			<div class="login-stay-sign-in">
				<i class="far fa-check-circle"></i>
				<span>로그인 상태 유지</span>
			</div>
		</section>
		<section class="Easy-sgin-in-wrap">
			<h2>간편 로그인</h2>
			<ul class="sign-button-list">
				<li><button><i class="fas fa-qrcode"></i><span>Sign in with QR code</span></button></li>
				<li><button><i class="fab fa-facebook-square"></i><span>Facebook</span></button></li>
				<li><button><i class="fab fa-line"></i><span>line</span></button></li>
			</ul>
			<p class="forget-msg">비밀번호 찾기 |<a href="./join.jsp"> 회원가입</a></p>
		</section>
		<footer>
			<div class="copyright-wrap">
			<span>	<img src="img/logo.png"> Copyright © DAYOUNG Corp. All Rights Reserved.</span>
			</div>
		</footer>
		</div>
	</div>
	
</body>