<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 로그인 정보 확인</title>
</head>
<body>
<%
	String validMem = (String) session.getAttribute("validMem");
	// getAttribute 는 object 형태로 반환 하므로 String으로 형변화 필요
	String sessionId = (String) session.getAttribute("sessionID");
	//String sessionId = session("sessionId");

	if(validMem != null ) {
		out.println(sessionId+"님 로그인 중입니다.");
		Enumeration enuSession = session.getAttributeNames();
		
		while (enuSession.hasMoreElements()){
			String sessionName = enuSession.nextElement().toString();
			System.out.println(sessionName);
			String sessionValue = (String) session.getAttribute(sessionName);
			System.out.println(sessionValue);
		}
 
	} else {
		response.sendRedirect("login.jsp");
	}
%>
	<br><br>
	<a href='logout.jsp'>로그아웃	</a><br>
	<a href='sessionTime.jsp'>세션타임	</a>
	
</body>
</html>