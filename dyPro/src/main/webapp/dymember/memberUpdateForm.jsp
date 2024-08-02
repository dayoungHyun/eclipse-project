<%@page import="dyPro.dymember"%>
<%@page import="dyPro.dymemberDAO"%>
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
    <link rel="stylesheet" href="memberUpdateForm.css">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@1,200&display=swap" rel="stylesheet">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<%
String id = (String)session.getAttribute("id");
dymemberDAO dao = new dymemberDAO();
dymember dy = dao.getMember(id);

%>
<body>
<form action="memberUpdatePro.jsp" method="post">
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
    <div class="member">
        <!-- 1. 로고 -->
        <img class="logo" src="moon.png">

        <!-- 2. 필드 -->
        <div class="field">
            <b>아이디</b>
            <span class="placehold-text"><input type="text" readonly value="<%=dy.getId() %>" name="id"></span>
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password" name="password">
        </div>
        <div class="field">
            <b>이름</b>
            <input type="text" name="name" value="<%=dy.getName() %>" >
        </div>

        <!-- 3. 필드(생년월일) -->
        <div class="field birth">
            <b>생년월일</b>
            <div>
                <input type="number" placeholder="년(4자)" name="birthyear"  value="<%=dy.getBirthyear() %>" >                
                <input type="number" placeholder="월" name="birthmonth"  value="<%=dy.getBirthmonth() %>">
                <input type="number" placeholder="일" name="birthdate"  value="<%=dy.getBirthdate() %>">
            </div>
        </div>

        <!-- 4. 필드(성별) -->
        <div class="field gender">
            <b>성별</b>
            <div>
                <label><input type="radio" name="gender"  value="1" required  <%=dy.getGender()==1 ? "checked" : " " %>>남자</label>
                <label><input type="radio" name="gender"  value="2" required <%=dy.getGender()==2 ? "checked" : " " %>>여자</label>
            </div>
        </div>

        <!-- 5. 이메일_전화번호 -->
        <div class="field">
            <b>본인 확인 이메일<small>(선택)</small></b>
            <input type="email" placeholder="선택입력" name="email" value="<%=dy.getEmail() %>">
        </div>
        
        <div class="field tel-number">
            <b>휴대전화</b>
            <select>
                <option value="">대한민국 +82</option>
            </select>
            <div>
                <input type="tel" placeholder="전화번호 입력" name="phone" value="<%=dy.getPhone()%>" >
                <input type="button" value="인증번호 받기">
            </div>
            <input type="number" placeholder="인증번호를 입력하세요">
        </div>

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
    
</body>
    
</html>