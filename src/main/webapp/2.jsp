<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<%! public int total;
	public int num;
	public int retunnum()
	{
	Random ra=new Random();
	return ra.nextInt(9);
	}%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	
<% total++; 
num=retunnum();
%>
<p>
페이지 누적요청수 :<%=total %></br>
매 10번째 방문자에게 기프티콘을 드립니다.
</p>
<% 
if(total%10==0)
{
%>
당첨되었습니다.
<%
}
%>
<h1>랜덤구구단 <%= num%>단</h1><br>
이번에 나올 구구단은 <%=num %>입니다<br>
<%for(int i=1;i<10;i++)
	{%>
	<%=num %>*<%=i %>=<%=num*i %><br>
<%	}%>
</body>
</html>