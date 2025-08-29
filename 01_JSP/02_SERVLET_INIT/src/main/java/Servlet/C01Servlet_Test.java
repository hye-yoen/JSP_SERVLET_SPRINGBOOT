package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/TEST_01") //엔드 포인트
public class C01Servlet_Test extends HttpServlet{
   //생명주기 함수들
   @Override
   public void init() throws ServletException {
	  //서블릿 최초 함수
      System.out.println("INIT() invoke...");
   }
   
   @Override
   public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
	   //요청시마다 동작하는 함수
      System.out.println("SERVICE() invoke...");
   }

   @Override
   public void destroy() {
	   //내용변경시 동작하는 함수
      System.out.println("DESTROY() invoke...");
   }
}