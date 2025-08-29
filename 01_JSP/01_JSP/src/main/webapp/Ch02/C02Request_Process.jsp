<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	/*
		request 내장객체 : 요청정보값 저장(Http Request Protocol의 구조형태)
	*/
	/* 문자셋 설정 */
 	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset-UTF-8"); 

	String username = request.getParameter("username"); //username꺼(html)내와서 저장
	String password = request.getParameter("password");
	String bgColor = request.getParameter("bgcolor");
	System.out.printf("%s %s %s \n",username,password,bgColor);
	
%>  
 <!-- 위의 것이 처리되고 난 후 나오는 화면 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style= "backgroung-color:<%=bgColor %>">
	
	<h1>my</h1>
	username : <%=username %><br/>
	password : <%=password %><br/>
	bgcolor: <%=bgColor %><br/>
</body>
</html>