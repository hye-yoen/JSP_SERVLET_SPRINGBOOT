<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<!-- 
Forward 방식 페이지 요청 : Request 내용을 유지한채 다른 page 로 연속이동하는 방식
클라이언트의 URL경로는 최초요청시의 URL로 유지가 된다 
Request객체의 내용은 최초요청내용이 유지된다(Forwarding 되는 동안에만 유지) 
하나의 요청-응답주기를 가진다
-->
  
	<form action ="./02.jsp" method = "get">
		<input name="username" /><br/>
		<input name="password" /><br/>
		<button>전송</button>
	</form>

</body>
</html>