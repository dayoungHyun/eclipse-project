<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
 
    <title>join page</title>
  
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
    text-decoration: none;
    color:white;
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


*{
    box-sizing: border-box; /*전체에 박스사이징*/
    outline: none; /*focus 했을때 테두리 나오게 */
}

.logo {
    width: 150px; /* 이미지의 너비를 100px로 지정합니다. */
    height: auto; /* 높이는 자동으로 조정됩니다. */

}

/*member sign in*/
.member{
    width: 400px;
    /* border: 1px solid #000; */
    margin: auto; /*중앙 정렬*/
    padding: 0 20px;
    margin-bottom: 20px;
}

.member .logo{
    /*로고는 이미지라 인라인 블록이니까 마진 오토 안됨 블록요소만 됨 */
    display: block;
    margin :50px auto;
}

.member .field{
    margin :5px 0; /*상하로 좀 띄워주기*/
}

.member b{
    /* border: 1px solid #000; */
    display: block; /*수직 정렬하기 */
    margin-bottom: 5px;
}

/*input 중 radio 는 width 가 100%면 안되니까 */
.member input:not(input[type=radio]),.member select{
    border: 1px solid #dadada;
    padding: 15px;
    width: 100%;
    margin-bottom: 5px;
}

.member input[type=button],
.member input[type=submit]{

}

.member input:focus, .member select:focus{
    border: 1px solid #263343;
}

.field.birth div{ /*field 이면서 birth*/
    display: flex;
    gap:10px; /*간격 벌려줄때 공식처럼 사용핟나 */
}

/* .field.birth div > * {  gap 사용한거랑 같은 효과를 줌 
    flex:1;
} */

.field.tel-number div {
    display: flex;
}

.field.tel-number div input:nth-child(1){
    flex:2;






}

.field.tel-number div input:nth-child(2){
    flex:1;
}

.field.gender div{
    border: 1px solid #dadada;
    padding: 15px 5px;
    background-color: #fff;
}

.placehold-text{
    display: block; /*span 으로 감싸서 크기영역을 블록요소로 만들어ㅜ저야한다*/
    position:relative;
    /* border: 1px solid #000; */
}

.placehold-text:before{ 
    content : "@naver.com";
    position:absolute; /*before은 inline 요소이기 때문에 span으로 감싸줌 */
    right : 20px;
    top:13px;
    pointer-events: none; /*자체가 가지고 있는 pointer event 를 없애준다 */
}

.userpw{
    background:url(./images/images2/icon-01.png) no-repeat center right 15px;
    background-size: 20px;
    background-color: #fff;
}

.userpw-confirm{
    background:url(./images/images2/icon-02.png) no-repeat center right 15px;
    background-size: 20px;
    background-color: #fff;
}

.member-footer {
    color: #263343;
    text-align: center;
    font-size: 12px;
    margin-top: 20px;
}
.member-footer > div > a {
    color: #263343; /* 이용약관 등의 링크 텍스트 색상 변경 */
}

.member-footer > span > a {
    color: #263343; /* "DAYOUNG Corp." 링크 텍스트 색상 변경 */
}


@media (max-width:768px) {
    .member{
        width: 100%;
    }

}

</style>
<body>   
    <div class="member">
        <!-- 1. 로고 -->
        <img class="logo" src="${pageContext.request.contextPath}/img/moon.png">
		<form action="memberUpdatePro" method="post">
        <!-- 2. 필드 -->
        <div class="field">
            <b>아이디</b>
            <span class="placehold-text"><input type="text" readonly value="${dy.id}" name="id"></span>
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password" name="password">
        </div>
        <div class="field">
            <b>이름</b>
            <input type="text" name="name" value="${dy.name}" >
        </div>

        <!-- 3. 필드(생년월일) -->
        <div class="field birth">
            <b>생년월일</b>
            <div>
                <input type="number" placeholder="년(4자)" name="birthyear"  value="${dy.birthyear}" >                
                <input type="number" placeholder="월" name="birthmonth"  value="${dy.birthmonth}">
                <input type="number" placeholder="일" name="birthdate"  value="${dy.birthdate}">
            </div>
        </div>

        <!-- 4. 필드(성별) -->
        <div class="field gender">
            <b>성별</b>
            <div>
                <label><input type="radio" name="gender"  value="1" required  value="${dy.gender==1 ? 'checked' : '' }">남자</label>
                <label><input type="radio" name="gender"  value="2" required value="${dy.gender==2 ? 'checked' :  '' }">여자</label>
            </div>
        </div>

        <!-- 5. 이메일_전화번호 -->
        <div class="field">
            <b>본인 확인 이메일<small>(선택)</small></b>
            <input type="email" placeholder="선택입력" name="email" value="${dy.email}">
        </div>
        
        <div class="field tel-number">
            <b>휴대전화</b>
            <select>
                <option value="">대한민국 +82</option>
            </select>
            <div>
                <input type="tel" placeholder="전화번호 입력" name="phone" value="${dy.phone}" >
                <input type="button" value="인증번호 받기" style="background-color:#263343; color:white;" >
            </div>
            <input type="number" placeholder="인증번호를 입력하세요">
        </div>

        <!-- 6. 가입하기 버튼 -->
        <input type="submit" value="저장" style="background-color:#263343; color:white;">
		</form>
    
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
    
</body>
    
</html>