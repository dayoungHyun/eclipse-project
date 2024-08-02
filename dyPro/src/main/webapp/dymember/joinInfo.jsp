<%@page import="dyPro.dymember"%>
<%@page import="dyPro.dymemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<link rel="icon" href="./images/images2/favicon.png">
<link rel="stylesheet" href="joinInfo.css">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@1,200&display=swap" rel="stylesheet">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<% 
String id = (String)session.getAttribute("id");
dymemberDAO dao = new dymemberDAO();
dymember dy = dao.getMember(id);
%>
<nav class="navbar">
    <div class="navbar_logo">
        <i class="fas fa-moon"></i>
        <a>HELLO, IT'S ME DAYOUNG</a> 
    </div>
    <div class="navbar_menu">
        <% if(session.getAttribute("id") != null) { %>
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
<div class="container">
    <div class="input-form clo-md-12 mx-auto">
        <h4 class="mb-3">member's info</h4>
        <table class="table">
            <tr><td>id</td><td><%=dy.getId() %></td></tr>
            <tr><td>password</td><td><%=dy.getPassword() %></td></tr>
            <tr><td>name</td><td><%=dy.getName() %></td></tr>
            <tr><td>birthyear</td><td><%=dy.getBirthyear() %></td></tr>
            <tr><td>birthmonth</td><td><%=dy.getBirthmonth() %></td></tr>
            <tr><td>birthdate</td><td><%=dy.getBirthdate() %></td></tr>
            <tr><td>gender</td><td><%=dy.getGender() %></td></tr>
            <tr><td>email</td><td><%=dy.getEmail() %></td></tr>
            <tr><td>phone</td><td><%=dy.getPhone() %></td></tr>
            <tr>
			    <td colspan="2" style="padding-top: 20px;"> <!-- padding-top 추가 -->
			        <a class="btn btn-primary" href="<%=request.getContextPath() %>/dymember/memberUpdateForm.jsp" style="margin-top: 25px;">회원정보수정</a> <!-- margin-top 추가 -->
			        <a class="btn btn-primary" href="<%=request.getContextPath() %>/dymember/memberDeleteForm.jsp" style="margin-top: 25px;">회원탈퇴</a> <!-- margin-top 추가 -->
			        <a class="btn btn-primary" href="<%=request.getContextPath() %>/dymember/memberPassForm.jsp" style="margin-top: 25px;">비밀번호수정</a> <!-- margin-top 추가 -->
			    </td>
			</tr>
        </table>
    </div>
</div>
</body>
</html>