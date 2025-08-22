<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
<jsp:useBean id="dto" class="Ch02.testDto" scope="request" />
<jsp:setProperty name="dto" property="StringtoDate" param="date"/> 
<jsp:setProperty name="dto" property="*" /> <!-- 나중에 이것들 안씀 -->
<!-- set을 이용해 전달된 파라미터 값을 다 넣음 -->
<!-- property는 기본적으로 String으로 받음 -->
<!-- int,double은 property editor 라는 도구가 자동 형변환 해줌-->

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
	TestDto:<%=dto %><br/>

</body>
</html>