<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Ch02.*,Ch04.*"%>
<!-- 선언문 -->    
<%!
	public boolean isValid(UserDto dto){
		if(dto.getUserid().isEmpty()){ //userDtod에서 userid가 비어있다면
			System.out.println("Userid를 입력하세요");
			return false;
		}
		if(dto.getUserid().length()<=5){ //userDto의 길이가 5자 이하
			System.out.println("Userid는 5자 이상 입력");
			return false;
		}
	
		return true;
	}
%>
<%
	/* 문자셋 설정 */
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>

<!-- 01 파라미터 받기 -->
<jsp:useBean id="dto" class="Ch02.UserDto" scope="request" />
<jsp:setProperty name="dto" property="*" />
<%	//02유효성 검증
	if(isValid(dto)){
		//유효하지 않은 경우 -> 01Join.html
		response.sendRedirect("./Join.html"); //Join.html으로 리다이렉트(요청)
		
	}
	//03 서비스 처리(회원가입-> DB에 저장)
	DbUtils.conn(); //03-01 db 연결
	//03-02 동일 계정 유무 확인
	//03-03 계정정보 저장
	//03-04 연결해제
	DbUtils.disConn();
	
	//04로그인 페이지로 이동

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	DTO : <%=dto %><br>
</body>
</html>