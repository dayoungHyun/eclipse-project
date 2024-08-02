<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join page</title>
    <link rel="icon" href="./images/images2/favicon.png">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@1,200&display=swap" rel="stylesheet">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
        :root {
            --body-background-color: #f5f6f7;
            --font-color: #263343;
            --border-gray-color: #dadada;
        }
        body {
            margin: 0;
            font-family: 'Source Sans Pro', sans-serif;
            background-color: #f5f6f7;
        }

        .logo {
            width: 150px;
            height: auto;
        }

        .member {
            width: 400px;
            margin: auto;
            padding: 0 20px;
            margin-bottom: 20px;
        }

        .member .logo {
            display: block;
            margin: 50px auto;
        }

        .member .field {
            margin: 5px 0;
        }

        .member b {
            display: block;
            margin-bottom: 5px;
        }

        .member input:not([type=radio]), .member select {
            border: 1px solid #dadada;
            padding: 15px;
            width: 100%;
            margin-bottom: 5px;
            box-sizing: border-box; /* ensure padding is included in width */
        }

        .member input[type=button],
        .member input[type=submit] {
            background-color: #263343;
            color: #fff;
            width: 100%;
            padding: 15px;
            margin-top: 10px;
            cursor: pointer;
            border: none;
            box-sizing: border-box; /* ensure padding is included in width */
        }

        .member input:focus, .member select:focus {
            border: 1px solid #263343;
        }

        .field.birth div {
            display: flex;
            gap: 10px;
        }

        .field.tel-number div {
            display: flex;
        }

        .field.tel-number div input:nth-child(1) {
            flex: 2;
        }

        .field.tel-number div input:nth-child(2) {
            flex: 1;
        }

        .field.gender div {
            border: 1px solid #dadada;
            padding: 15px 5px;
            background-color: #fff;
        }

        .placehold-text {
            display: block;
            position: relative;
        }

        .placehold-text:before {
            content: "@naver.com";
            position: absolute;
            right: 20px;
            top: 13px;
            pointer-events: none;
        }

        .userpw {
            background: url(./images/images2/icon-01.png) no-repeat center right 15px;
            background-size: 20px;
            background-color: #fff;
        }

        .userpw-confirm {
            background: url(./images/images2/icon-02.png) no-repeat center right 15px;
            background-size: 20px;
            background-color: #fff;
        }

        .member-footer {
            color: #263343;
            text-align: center;
            font-size: 12px;
            margin-top: 20px;
        }

        .member-footer a {
            color: #263343; /* Ensure footer links have the desired color */
        }

        .member-footer div a:after {
            content: '|';
            font-size: 10px;
            color: #263343;
            margin-right: 5px;
            margin-left: 7px;
            display: inline-block;
            transform: translateY(-1px);
        }

        .member-footer div a:last-child:after {
            display: none;
        }

        @media (max-width: 768px) {
            .member {
                width: 100%;
            }
        }

        .moon {
            text-align: center;
            margin-top: 80px;
        }
    </style>
</head>
<body>
    <form action="memberPassPro" method="post">
        <div class="member">
            <!-- 1. 로고 -->
            <img class="logo" src="${pageContext.request.contextPath}/img/moon.png">

            <!-- 2. 필드 -->
            <div class="field">
                <b>아이디</b>
                <span class="placehold-text"><input type="text" name="id" placeholder="" value="${id}" readonly></span>
            </div>
            <div class="field">
                <b>비밀번호</b>
                <input class="userpw" type="password" name="password">
            </div>
            <div class="field">
                <b>변경 비밀번호</b>
                <input class="userpw-confirm" type="password" name="chgpass" required>
            </div>
            <!-- 6. 가입하기 버튼 -->
            <input type="submit" value="저장">
        </div>
        
        <!-- 7. 푸터 -->
        <div class="member-footer">
            <div>
                <a href="">이용약관</a>
                <a href="">개인정보처리방침</a>
                <a href="">책임의 한계와 법적고지</a>
                <a href="">회원정보 고객센터</a>
            </div>
            <span><a href="">DAYOUNG Corp.</a></span>
        </div>
    </form>
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