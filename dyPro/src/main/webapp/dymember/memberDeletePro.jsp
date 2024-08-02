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
String id = (String) session.getAttribute("id");
String pass = request.getParameter("password");
dymemberDAO  dao = new dymemberDAO();
dymember dydb = dao.getMember(id);

String msg = "";
String url = "memberDeleteForm.jsp";

if (dydb!=null){
	if (dydb.getPassword().equals(pass)) {
		msg="탈퇴 하였습니다";
		session.invalidate();
		dao.deleteMember(id);   
		url="login.jsp";
	} else {
		msg="비밀번호가 틀렸습니다";
	}
	
	
} else {
	msg="탈퇴 할 수 없습니다";
}

%>
<script>
alert("<%=msg%>");
location.href="<%=url%>"
</script>
</body>
</html>