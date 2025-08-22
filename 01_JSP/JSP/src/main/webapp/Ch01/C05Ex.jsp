<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	table{border : 1px solid; margin : 10px ; padding : 5px;}
	

</style>
</head>
<body>
	<!--  
		단수 입력받아 해당 구구단을 찍어보세요 (Table로 만드세요 - 스크립틀릿)
	-->
	<!-- 백엔드 코드 -->
	<% 
	System.out.print("원하는 구구단을 입력하삼>>>");
	Scanner sc = new Scanner(System.in);
	int dan = sc.nextInt();	
	%>
	
	<table>
		<summary><%=dan %> 단</summary>
		<tbody>
			<%
			for(int i =1;i<10;i++)
			{
			%>
			<tr>
		<%-- 		<td><%=dan %></td>
				<td>x</td>
				<td><%=i %></td>
				<td>=</td>
				<td><%=dan*i %></td> --%>
				
				<td><%=dan+"x"+i+"="+dan*i%></td>
				
			</tr>
			<% 
			}
			%>
		</tbody>
	</table>
</body>
</html>