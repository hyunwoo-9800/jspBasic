<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*, sec01.ex01.*" pageEncoding="UTF-8" isELIgnored="false"%>

<%
	request.setCharacterEncoding("UTF-8");
	List membersList = new ArrayList();
	MemberBean m1 = new MemberBean("여긴", "1234", "어디", "test@test.com");
	MemberBean m2 = new MemberBean("난", "1234", "누구", "test@test.com");
	membersList.add(m1);
	membersList.add(m2);
	request.setAttribute("membersList", membersList);
	
%>

<!DOCTYPE html>

<html>
	
	<head>
		<meta charset="UTF-8">
		<title>forward3</title>
	</head>
	
	<body>
		<jsp:forward page="member3.jsp"></jsp:forward>
	</body>
	
</html>