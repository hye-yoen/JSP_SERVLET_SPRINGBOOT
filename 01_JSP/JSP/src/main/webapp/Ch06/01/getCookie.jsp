<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie cookie1 = new Cookie("cookie1" ,"value1");
	//쿠키의 유지기간(-1:기본값 : 파일생성x ,브라우저가 종료될때까지 쿠키 유지)
	
	Cookie cookie2 = new Cookie("cookie1" ,"value1");
	cookie2.setMaxAge(60*5); //쿠키 유지 기간
	cookie2.setPath("/"); //(톰캣내의) 모든 페이지에서 확인 가능
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
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