<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>JSON 테스트</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function() {
		$("#checkJson")
				.click(
						function() {
							var jsonStr = '{"members":[{"name":"홍길동","age":"999","gender":"남자","nickname":"길동"}'
									+ ', {"name":"테스터","age":"20","gender":"남자","nickname":"관리자"}] }';
							var jsonInfo = JSON.parse(jsonStr);
							var output = "회원 정보<br>";
							output += "=======<br>";
							for ( var i in jsonInfo.members) {
								output += "이름: " + jsonInfo.members[i].name
										+ "<br>";
								output += "나이: " + jsonInfo.members[i].age
										+ "<br>";
								output += "성별: " + jsonInfo.members[i].gender
										+ "<br>";
								output += "별명: " + jsonInfo.members[i].nickname
										+ "<br><br><br>";
							}
							$("#output").html(output);
						});
	});
</script>
</head>
<body>
	<a id="checkJson" style="cursor: pointer">출력</a>
	<br>
	<br>
	<div id="output"></div>
</body>
</html>
