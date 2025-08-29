<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
//-----------------------------
		//03 서비스 처리(회원가입->DB 저장)
		//-----------------------------
		//03-01 db연결
		DbUtils.conn();
		
		//Tx 시작
		DbUtils.TxStart();
		
		//03-02 동일 계정유무확인
		if(DbUtils.selectUser(dto.getUserid())!=null){
			System.out.println("기존 계정이 존재합니다");
			request.getRequestDispatcher("./01Join.html").forward(request, response);
			return ;
		}
		
		//03-03 계정정보 저장
		int result = DbUtils.insertUser(dto);
		if(result<=0){
			System.out.println("회원가입에 실패했습니다");
			request.getRequestDispatcher("./01Join.html").forward(request, response);
			return ;
		}
			
		//Tx 종료
		DbUtils.TxEnd();
		
		//03-04 연결해제
		DbUtils.disConn(); /// 왜 파라미터를 안 받지
		
		//-----------------------------
		//04 로그인 페이지로 이동
		//-----------------------------
		System.out.println("회원가입을 완료했습니다");
		response.sendRedirect("./03Login.jsp");
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
</html> --%>