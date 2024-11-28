<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String mid = request.getParameter("memId");
	String mpw = request.getParameter("memPw");
	
	// 회원아이디가 tiger 이고  비밀번호가 12345인 경우에만 로그인 성공
	if((mid.equals("tiger")) && (mpw.equals("12345"))) {
		session.setAttribute("sessionID", mid);
		session.setAttribute("validMem", "yes");
		
		out.println(mid+"님 로그인 성공!!")
	} else {
		out.println("로그인 실패!! 아이디와 비번을 다시 확인하세요.")
	}
	
	
	%>
	
	<%=mid %>님 로그인 성공하셨습니다.

</body>
</html>