<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join page</title>
    <link rel="icon" href="./images/images2/favicon.png">
    <link rel="stylesheet" href="join.css">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@1,200&display=swap" rel="stylesheet">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<form action="memberPassPro.jsp" method="post">
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
    <div class="member">
        <!-- 1. 로고 -->
        <img class="logo" src="moon.png">

        <!-- 2. 필드 -->
        <div class="field">
            <b>아이디</b>
            <span class="placehold-text"><input type="text" name="id" placeholder="" value="<%=session.getAttribute("id") %>" readonly></span>
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password" name="password">
        </div>
        <div class="field">
            <b>변경 비밀번호</b>
            <input class="userpw-confirm" type="password" name="chgpass" required >
        
        
     
        <!-- 6. 가입하기 버튼 -->
        <input type="submit" value="저장">

        <!-- 7. 푸터 -->
        <div class="member-footer">
            <div>
                <a href="">이용약관 | </a>
                <a href="">개인정보처리방침 | </a>
                <a href="">책임의 한계와 법적고지 | </a>
                <a href="">회원정보 고객센터 | </a>
            </div>
            <span><a href="">DAYOUNG Corp.</a></span>
            
        </div>
    </div>
    </form>
    <script> window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); </script>
</body>
    
</html>