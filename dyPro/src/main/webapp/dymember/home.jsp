<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edg
 initial-scale=1.0">
    <title>home page</title>
    <link rel="icon" href="./images/images2/favicon.png">
    <link rel="stylesheet" href="home.css">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@1,200&display=swap" rel="stylesheet">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <nav class="navbar">
        <div class="navbar_logo">
            <i class="fas fa-moon"></i>
            <a>HELLO, IT'S ME DAYOUNG</a> 
        </div>
    
        <div class="navbar_menu">
        <% if(session.getAttribute("id")!=null) { %>
        	<li><a href="./home.jsp">Home</a></li>
       	    <li><a href="./logout.jsp">Logout</a></li>
            <li><a href="./joinInfo.jsp">Member's Info</a></li>
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
    <div>
        <div class="moon">
          <img src="moon.png" width=800px height=800px >
        </div>
    </div>
    
    <!-- 마우스 이벤트 처리를 위한 JavaScript 코드 -->
 
</body>
</html>