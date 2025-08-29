<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Ch02.ProfileDto" %>

<%
	/*  
		request 내장객체 : 요청정보값 저장(Http Request Protocol의 구조형태)
	*/
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String username = request.getParameter("username");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	ProfileDto dto = new ProfileDto(username,age,addr);
	System.out.printf("%s %s %s \n",username,age,addr);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >
	<h1>Process File</h1>
	ProfileDto:<%=dto %><br/>

</body>
</html>