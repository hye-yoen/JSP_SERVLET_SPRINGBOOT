<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %> 
<!-- --> 
<% 
	String dirPath = pageContext.getServletContext().getRealPath("/")+"Ch07\\files\\";
	//현
	System.out.println("dirPath"+dirPath);
	
	try{
		//INPUTSTREAM
		InputStream fin = new FileInputStream(dirPath+"test1.pdf");
		
		//OUPUTSTREAM
		out.clear(); 				  //response outStream을 닫고 버퍼 초기화
		out = pageContext.pushBody();  //현재페이지의 Body에 out연결
		ServletOutputStream bout = response.getOutputStream();
		
		//##Response Header Setting## //응답할때 브라우저 행동(지시) 설정, 주석처리 : 문서 읽기
		response.setHeader("Content-type","application/octet-stream;charset-utf-8"); 
		//데이터 타입 , 바이너리 데이터& 브라우적 내용을 바로열지 않고 다운로드 하도록 기본처리
		response.setHeader("Content-Disposition", "attachment;filename=test1.pdf");
		//브라우저가 전송된 데이터를 어떻게 처리할지 결정 , attachment-> 다운로드 , ^^
		
		byte [] buff = new byte[4096];
		while(true){		
			int data = fin.read(buff); //buff 만큼 파일 읽음
			if (data ==-1 )
				break;
			bout.write(buff, 0 , data);
			bout.flush();
		}
		bout.close();
		fin.close();
		
		
	}catch(Exception e){
		
	}

%>