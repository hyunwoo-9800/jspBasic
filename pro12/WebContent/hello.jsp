<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%!

	String name = "홍길동";
	public String getName() {
		
		return name;
		
	}

%>

<html>

	<head>
		<meta charset="UTF-8">
		<title>선언문 연습</title>
	</head>
	
	<body>
		<h1>안녕하세요 <%= name %>님</h1>
	</body>
	
</html>