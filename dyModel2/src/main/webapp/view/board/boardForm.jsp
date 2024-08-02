<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 화면 샘플 - Bootstrap</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
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
    max-width: 680px;
    margin-top: 80px;
    padding: 32px;
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
function chkpass(f) {
   let chk = f.pass.value==f.pass2.value
   if (!chk) {
      alert("비밀번호 확인이 틀렸습니다.")
      f.pass2.focus()
      return false
   }
   return true
}
</script>
</head>

<body>
    <div class="container">
        <h4 class="text-center">${boardName} 게시판 등록</h4>
        <form class="validation-form" novalidate action="boardPro" enctype="multipart/form-data" method="post" onsubmit="return chkpass(this)">
            <div class="form-group">
                <label for="name">작성자</label>
                <input type="text" class="form-control" id="name" placeholder="이름" value="" required name="name">
                <div class="invalid-feedback">아이디를 입력해주세요.</div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="pass">비밀번호</label>
                    <input type="password" name="pass" class="form-control" id="pass" placeholder="비밀번호" value="" required>
                    <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                </div>
                <div class="form-group col-md-6">
                    <label for="pass2">비밀번호 확인</label>
                    <input type="password" name="pass2" class="form-control" id="pass2" placeholder="비밀번호 확인" value="" required>
                    <div class="invalid-feedback">비밀번호 확인을 입력해주세요.</div>
                </div>
            </div>
            <div class="form-group">
                <label for="subject">제목</label>
                <input type="text" name="subject" class="form-control" id="subject" placeholder="제목" required>
                <div class="invalid-feedback">제목을 입력해주세요.</div>
            </div>
            <div class="form-group">
                <label for="content">내용</label>
                <textarea name="content" class="form-control" id="content" required style="overflow-x:hidden"></textarea>
                <div class="invalid-feedback">내용을 입력해주세요.</div>
            </div>
            <div class="form-group">
                <label for="file1">파일업로드</label>
                <input type="file" name="file1" class="form-control" id="file1">
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="submit">저장</button>
        </form>
    </div>
    <script>
        window.addEventListener('load', () => {
            const forms = document.getElementsByClassName('validation-form');
            Array.prototype.filter.call(forms, (form) => {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    </script>
</body>
</html>