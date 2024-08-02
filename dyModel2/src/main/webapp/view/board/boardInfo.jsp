<%@page import="model.dymember"%>
<%@page import="dao.dymemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 정보</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
:root {
    --body-background-color: #f5f6f7;
    --font-color: #263343;
    --border-gray-color : #dadada;
}
body {
    margin: 0;
    font-family: 'Noto Sans KR', sans-serif;
    background-color: var(--body-background-color);
    color: var(--font-color);
}

a {
    text-decoration: none;
    color: white;
}

.container {
    max-width: 1200px;
    margin: auto;
    padding: 20px;
    background-color: white;
    border: 1px solid var(--border-gray-color);
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h4.text-center {
    text-align: center;
    margin-bottom: 20px;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    margin: 10px 0;
    background-color: var(--font-color);
    color: white;
    border: none;
    border-radius: 4px;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #d49466;
}

.table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

.table th, .table td {
    border: 1px solid var(--border-gray-color);
    padding: 12px;
    text-align: left;
}

.table th {
    background-color: var(--font-color);
    color: white;
}

.table tbody tr:nth-child(even) {
    background-color: #f9f9f9;
}

.row {
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}

.col-sm-1, .col-sm-10, .col-sm-9, .col-md-12 {
    position: relative;
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
}

.col-sm-1 {
    flex: 0 0 8.333333%;
    max-width: 8.333333%;
}

.col-sm-10 {
    flex: 0 0 83.333333%;
    max-width: 83.333333%;
}

.col-sm-9 {
    flex: 0 0 75%;
    max-width: 75%;
}

.col-md-12 {
    flex: 0 0 100%;
    max-width: 100%;
}

.text-center {
    text-align: center;
}
</style>
<script>
function enterkey(num) {
	if(window.event.keyCode == 13) {
		commentPro(num);
	}
}

function commentPro(num) {
   const comment = document.querySelector('#comment').value;
   
   if (comment == '') {
	   document.querySelector("#comment").focus();
	   return;
   }
   
   const commentList = document.querySelector('#commentList');
   const url = "${pageContext.request.contextPath}/board/boardCommentPro";
   const param = '?comment=' + comment + '&boardnum=' + num;
   alert(url + param);      
   fetch(url + param)
   .then(res => res.text())
   .then(txt => {
      alert(txt);
      commentList.innerHTML = txt + "<br>" + commentList.innerHTML;  
   });
   document.querySelector("#comment").value = "";
}
</script>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
dymemberDAO dao = new dymemberDAO();
dymember mem = dao.getMember(id);
%>
<div class="container">
   <div class="col-md-12 mx-auto">
      <h4 class="mb-3 text-center">${boardName} 게시판 정보</h4>
      <table class="table">
         <tr><td>글번호</td><td>${board.num}</td></tr>
         <tr><td>조회수</td><td>${board.readcnt}</td></tr>
         <tr><td>작성자</td><td>${board.name}</td></tr>
         <tr><td>글제목</td><td>${board.subject}</td></tr>
         <tr><td>내용</td><td>${board.content}</td></tr>
         <tr><td>이미지</td><td><img src="${pageContext.request.contextPath}/img/board/${board.file1}"></td></tr>
         <tr class="text-center">
            <td colspan="2">
               <a class="btn" href="${pageContext.request.contextPath}/board/boardUpdateForm?num=${board.num}">글수정</a>
               <a class="btn" href="${pageContext.request.contextPath}/board/boardDeleteForm?num=${board.num}">글삭제</a>
               <a class="btn" href="${pageContext.request.contextPath}/board/boardList?boardid=${sessionScope.boardid}">글목록</a>
            </td>
         </tr>
      </table>
      
      <div class="row">
         <div class="col-sm-1">답변글</div>
         <div class="col-sm-10">
            <input type="text" id="comment" onkeyup="enterkey('${board.num}')" class="form-control">
         </div>
         <div class="col-sm-1">
            <button class="btn" onclick="commentPro('${board.num}')">저장</button>
         </div>
      </div>
      <c:set var="count" value="${count}"/>
      <div class="row" id="commentList">
         <c:forEach var="c" items="${li}">
            <div class="col-sm-1">&nbsp;</div>
            <div class="col-sm-1">${count}</div>
            <c:set var="count" value="${count-1}"/>
            <div class="col-sm-9">${c.content}</div>
            <div class="col-sm-1">&nbsp;</div>
         </c:forEach>
      </div>
      
   </div>
</div>
</body>
</html>