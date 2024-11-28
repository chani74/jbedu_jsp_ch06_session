<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log out</title>
</head>
<body>
	<%
	session.removeAttribute("validMem"); // 세션의 특정 속성만 삭제	
	session.invalidate(); // 세션의 모든 속성 삭제 -> 완전 로그아웃
	%>
	<a href="myInfo.jsp">내 정보 바로 가기</a>
</body>
</html>