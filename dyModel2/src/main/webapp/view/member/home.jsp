<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
<style>
    body, html {
        height: 100%;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .moon img {
        display: block;
        margin: 50px auto;
    }
</style>
<body>
	<div>
        <div class="moon">
          <img src="${pageContext.request.contextPath}/img/moon.png" width=800px height=800px >
        </div>
    </div>
</body>
</html>