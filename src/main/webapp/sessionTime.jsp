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
	int sessionTime = session.getMaxInactiveInterval();
	out.println("현재 설정된 세션유지 시간 : " + sessionTime + "초<br>");
	session.setMaxInactiveInterval(60); // 세션 유효시간 설정
	sessionTime = session.getMaxInactiveInterval();
	out.println("새로 설정된 세션유지 시간 : " + sessionTime + "초<br>");
	String sesID = session.getId();
	out.println("현재 세션 ID : " + sesID );
	%>
</body>
</html>