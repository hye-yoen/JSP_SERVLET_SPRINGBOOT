<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie1 = new Cookie("cookie1","value1");
	cookie1.setMaxAge(60*10);	
	cookie1.setPath("/");  //도메인내에 모든 URL에서 접근 가능 (http://localhost:8090 내 모든 페이지)
	//쿠키의 유지기간(-1:기본값 : 파일생성x,브라우저가 종료될때까지 쿠키 유지)

	
	Cookie cookie2 = new Cookie("cookie2","value2");
	cookie2.setMaxAge(60*10);	//5분
	cookie2.setPath("./");  //http://localhost:8090/JSP/Ch06/02/* 에서만 접근가능
	
	
	Cookie cookie3 = new Cookie("cookie3","value3");
	cookie3.setMaxAge(60*10);	//10분
	cookie3.setPath("/JSP/Ch01");  //JSP의 Ch01에서만 cookie3에 접근가능
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>