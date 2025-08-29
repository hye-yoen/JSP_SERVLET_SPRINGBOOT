package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//@WebFilter("/index.do")
public class HomeFilter_2 implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		//request가 Servlet로 전달되기 전
		
		System.out.println("[FILTER] HOME FILTER_2 START...");
		chain.doFilter(req, resp); //filter-chain 연결
		
		//Response가 Client로 전달되기 전
		System.out.println("[FILTER] HOME FILTER_2 END...");
	}
	
}
