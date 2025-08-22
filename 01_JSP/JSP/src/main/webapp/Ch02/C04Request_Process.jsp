<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
<jsp:useBean id="dto" class="Ch02.ProfileDto" scope="request" />
<!-- ==  ProfileDto dto = new ProfileDto()  -->
<jsp:setProperty name="dto" property="*" /> <!-- repuest 파라미터가 같으면 전부 불러옴 -->


<%
	/*  
		request 내장객체 : 요청정보값 저장(Http Request Protocol의 구조형태)
	*/

	System.out.println("dto : " + dto);
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