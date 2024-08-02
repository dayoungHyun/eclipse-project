<%@page import="dyPro.dymember"%>
<%@page import="dyPro.dymemberDAO"%>
<%@page import="javax.websocket.Session"%>
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
String id = (String) session.getAttribute("id");
String password = request.getParameter("password");
String name = request.getParameter("name");
int birthyear = Integer.parseInt(request.getParameter("birthyear"));
int birthmonth = Integer.parseInt(request.getParameter("birthmonth"));
int birthdate = Integer.parseInt(request.getParameter("birthdate"));
int gender = Integer.parseInt(request.getParameter("gender"));
String phone = request.getParameter("phone");
String email = request.getParameter("email");
dymemberDAO dao = new dymemberDAO();
dymember dydb = dao.getMember(id);

dymember dy = new dymember();
dy.setId(id);
dy.setPassword(password);
dy.setName(name);
dy.setBirthyear(birthyear);
dy.setBirthmonth(birthmonth);
dy.setBirthdate(birthdate);
dy.setGender(gender);
dy.setPhone(phone);
dy.setEmail(email);
String msg = "";
String url = "memberUpdateForm.jsp";

if (dydb!=null){
	if (dydb.getPassword().equals(password)){
		msg="수정 하였습니다.";
		dao.updateMember(dy);
		url="joinInfo.jsp";
	} else {
		msg="비밀번호가 틀렸습니다.";
	}
}else {
	msg="수정 할 수 없습니다.";
}

%>
<script>
alert("<%=msg%>");
location.href="<%=url%>"
</script>
</body>
</html>