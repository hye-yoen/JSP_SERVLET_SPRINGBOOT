<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	//Request 객체
	request.setAttribute("test1","test1_value" );
//요청됬을때 한번 동안 살아있는것
	//Session 객체 (지정된 시간까지 유지, 기본 18000초(30분)(톰캣이 켜저 있는 동안))
	session.setAttribute("test1","test1_value" );
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href = "./getSession.jsp">속성확인 체이지로 이동</a>
</body>
</html>