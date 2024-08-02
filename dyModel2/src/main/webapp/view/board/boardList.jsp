<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

h2.text-center {
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

.pagination {
    list-style: none;
    display: flex;
    justify-content: center;
    padding: 0;
}

.pagination li {
    margin: 0 5px;
}

.pagination a {
    color: var(--font-color);
    padding: 8px 16px;
    text-decoration: none;
    border: 1px solid var(--border-gray-color);
    border-radius: 4px;
    transition: background-color 0.3s;
}

.pagination a:hover {
    background-color: var(--font-color);
    color: white;
}

.pagination .disabled a {
    color: #ccc;
    pointer-events: none;
}

.pagination .active a {
    background-color: #d49466;
    color: white;
}
</style>
<script>
function chkform(f) {
    alert(f.pass.value == f.pass2.value)
    if (f.pass.value != f.pass2.value) {
        f.focus()
        return false
    }
    return true
}
function win_upload() {
    let op = "width=500, height=150, left=50, top=150";
    open("${pageContext.request.contextPath}/member/pictureimgForm", "", op);
}
</script>
</head>
<body>
    <div class="container">
        <h2 class="text-center">${boardName}[${count}](${boardid}, ${pageNum})</h2>
        <a class="btn float-right m-2" href="${pageContext.request.contextPath}/board/boardForm?boardid=${boardid}">게시판 입력</a>

        <table class="table">
            <thead>
                <tr>
                    <th>ser</th>
                    <th>이름</th>
                    <th>제목</th>
                    <th>이미지</th>
                    <th>날짜</th>
                    <th>조회</th>
                </tr>
            </thead>
            <tbody>
                <c:set var="boardNum" value="${boardNum}" />
                <c:forEach var="m" items="${li}">
                    <tr>
                        <td>${boardNum}</td>
                        <c:set var="boardNum" value="${boardNum-1}" />
                        <td>${m.name}</td>
                        <td><a href="${pageContext.request.contextPath}/board/boardInfo?num=${m.num}">${m.subject}</a></td>
                        <td>${m.file1}</td>
                        <td>${m.regdate}</td>
                        <td>${m.readcnt}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <ul class="pagination">
            <li class="page-item <c:if test="${start<=bottomLine}">disabled</c:if>">
                <a class="page-link" href="${pageContext.request.contextPath}/board/boardList?boardid=${boardid}&pageNum=${start-bottomLine}">Previous</a>
            </li>
            <c:forEach var="p" begin="${start}" end="${end}">
                <li class="page-item">
                    <a class="page-link" href="${pageContext.request.contextPath}/board/boardList?boardid=${boardid}&pageNum=${p}">${p}</a>
                </li>
            </c:forEach>
            <li class="page-item <c:if test="${end>=maxPage}">disabled</c:if>">
                <a class="page-link" href="${pageContext.request.contextPath}/board/boardList?pageNum=${start+bottomLine}">Next</a>
            </li>
        </ul>
    </div>
</body>
</html>