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
������ ������û�� :<%=total %></br>
�� 10��° �湮�ڿ��� ����Ƽ���� �帳�ϴ�.
</p>
<% 
if(total%10==0)
{
%>
��÷�Ǿ����ϴ�.
<%
}
%>
<h1>���������� <%= num%>��</h1><br>
�̹��� ���� �������� <%=num %>�Դϴ�<br>
<%for(int i=1;i<10;i++)
	{%>
	<%=num %>*<%=i %>=<%=num*i %><br>
<%	}%>
</body>
</html>