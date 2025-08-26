<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 문자셋 설정 */
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>

<jsp:useBean id="dto" class="Ch02.UserDto" scope="request" />
<jsp:setProperty name="dto" property="*" /> 
<%
	request.setAttribute("userDto", dto); //dto를 
	request.setAttribute("url", "/join");
	request.setAttribute("serviceNo", 1);  //C:1 R:2 U:3 D:4 (만들기,쓰기..)
	//DB 저장
	request.getRequestDispatcher("./DBUtils.jsp").forward(request,response);
	
	//main.jsp or login.jsp
%>
	
<%
	System.out.println("dto : " + dto);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	DTO:<%=dto %>
</body>
</html>