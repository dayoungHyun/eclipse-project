<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edg
 initial-scale=1.0">
    <title>home page</title>
    <link rel="icon" href="/images/images2/favicon.png">

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@1,200&display=swap" rel="stylesheet">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
:root {
    --body-background-color: #f5f6f7;
	--font-color: #263343;
	--border-gray-color : #dadada;
}
body {
    margin: 0;
    font-family: 'Source Sans Pro';
    background-color: #f5f6f7;
}

a {
    text-decoration: none;
    color:white;
}
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #263343;
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

.navbar_menu li:hover{
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
    color: #d49466
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
        width: 100%
    }

    .navbar_toogleBtn {
        display: block;
    }

    .navbar_menu.active,
    .navbar_icons.active {
        display:flex;
    }
}



</style>
<body>
    <nav class="navbar">
        <div class="navbar_logo">
            <i class="fas fa-moon"></i>
            <a>HELLO, IT'S ME DAYOUNG</a> 
        </div>
    
    
        <div class="navbar_menu">
        
        <c:if test="${sessionScope.id!=null}">
        	<li><a href="${pageContext.request.contextPath}/member/home">Home</a></li>
        	<li><a href="${pageContext.request.contextPath}/member/logout">Logout</a></li>
            <li><a href="${pageContext.request.contextPath}/member/joinInfo">Member's Info</a></li>
		</c:if>
		
		<c:if test="${sessionScope.id==null}">
        	<li><a href="${pageContext.request.contextPath}/member/home">Home</a></li>
       	    <li><a href="${pageContext.request.contextPath}/member/login">Login</a></li>
            <li><a href="${pageContext.request.contextPath}/member/join">Join</a></li>
		</c:if>
		
		<c:if test="${sessionScope.id eq 'admin'}">
			<li><a href="${pageContext.request.contextPath}/member/memberList">Member List</a></li>
		</c:if>
		
      	<li><a href="${pageContext.request.contextPath}/board/boardList?boardid=1">Notice</a></li>
        <li><a href="${pageContext.request.contextPath}/board/boardList?boardid=2">Board</a></li>
        <li><a href="${pageContext.request.contextPath}/board/boardList?boardid=3">QnA</a></li>
		
        </div>
       
        
    
        <ul class="navbar_icons">
            <li><i class="fab fa-blogger"></i></li>
            <li><i class="fab fa-instagram"></i></li>
        </ul>
        
    
        <a href="#" class="navbar_toogleBtn">
            <i class="fas fa-bars"></i>
        </a>
     </nav>
        

</body>
</html>