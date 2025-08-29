<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//01파라미터 확인
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	//02유효성검사
	if(username.isEmpty()){
		request.setAttribute("username_message","username을 입력하세요");
		request.getRequestDispatcher("./login_form.jsp").forward(request, response);
		return; //여러번 forwarding 처리한 경우하면 return 처리 해야함
	}
	if(password.isEmpty()){
		request.setAttribute("password_message","password을 입력하세요");
		request.getRequestDispatcher("./login_form.jsp").forward(request, response);
		return; //여러번 forwarding 처리한 경우하면 return 처리 해야함
	}
	
	
	//03관련 서비스 이동
	//03-01) username과 동일한 계정이 있는지 확인 가져와야함
	if(!username.equals("admin")){
		request.setAttribute("username_message","해당계정은 존재 하지 않음");
		request.getRequestDispatcher("./login_form.jsp").forward(request, response);
		return;
	}
	//03-02) password의 값이 입력한 값이랑 동링한지 확인
	if(!password.equals("1234")){
		request.setAttribute("password_message","패스워드가 일치하지 않음");
		request.getRequestDispatcher("./login_form.jsp").forward(request, response);
		return;
	}
	//03-03) session 에 해당계정에 작업에 칠요한 속성 저장
	session.setAttribute("isAuth", true); //setattribute는 EL 표현식으로 바로 꺼내오기 가능
	session.setAttribute("role", "ROLE_ADMIN"); //권한 체크 -> 이거 login,password도 가능
	session.setMaxInactiveInterval(30); //30초만 세션유지
	

	//04뷰로 이동
	response.sendRedirect("./main.jsp");

%>