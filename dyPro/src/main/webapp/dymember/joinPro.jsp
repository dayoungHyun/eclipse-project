<%@page import="dyPro.dymember"%>
<%@page import="dyPro.dymemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String password = request.getParameter("password");
String name = request.getParameter("name");
System.out.println(request.getParameter("birthyear"));
int birthyear = Integer.parseInt(request.getParameter("birthyear"));
int birthmonth = Integer.parseInt(request.getParameter("birthmonth"));
int birthdate = Integer.parseInt(request.getParameter("birthdate"));
int gender = Integer.parseInt(request.getParameter("gender"));
String email = request.getParameter("email");
String phone = request.getParameter("phone");
//1. 드라이버셋팅
Class.forName("oracle.jdbc.OracleDriver"); //자료 있는지 확인

dymemberDAO dao = new dymemberDAO();
dymember dy = new dymember();

dy.setId(id);
dy.setPassword(password);
dy.setName(name);
//dy.setBirthyear(birthyear);
dy.setBirthmonth(birthmonth);
dy.setBirthdate(birthdate);
dy.setGender(gender);
dy.setEmail(email);
dy.setPhone(phone);

int num = dao.insertMember(dy);

String msg="";
String url="";

if(num>0){
   msg=name+"님의 회원가입이 완료되었습니다.";
   url="login.jsp";
}else{
   msg="회원가입이 실패하였습니다.";
   url="join.jsp";
}
%>

<script>
alert("<%=msg %>");
location.href="<%=url %>";
</script>
<%=num %>개 입력 되었습니다.<br>
아이디 : <%=id %><br>
비밀번호 : <%=password %><br>
이름 : <%=name %><br>
생년월일 : <%=birthyear %> <%=birthmonth %> <%=birthdate %><br>
성별 : <%=gender %><br>
이메일 : <%=email %><br>
전화번호 : <%=phone %><br>
%>
</body>
</html>