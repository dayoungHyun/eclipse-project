<%@page import="dyPro.dymember"%>
<%@page import="dyPro.dymemberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
String pass = request.getParameter("password");
//Connection 객체 
dymemberDAO dao = new dymemberDAO(); //DTO bean
dymember dyo = new dymember();

String msg=id +"님이 로그인 하셨습니다";
String url="home.jsp";

dymember dy = dao.getMember(id);
System.out.println(dy);
  if (dy!=null) {
	if (pass.equals(dy.getPassword())) {
		session.setAttribute("id", id);
	} else {
		msg="비밀번호가 맞지 않습니다";
		url="login.jsp";	}
} else {
	msg="id를 확인 하세요";	url="login.jsp";}
%>
<script>
alert("<%=msg%>");
location.href="<%=url%>";
</script>
<%=id %>
<%=pass %>
</body>
</html>