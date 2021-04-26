

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%  ArrayList<Integer> array = new ArrayList<>();
while(array.size()<6)
{
	int rn=(int)(Math.random()*45)+1;
	if(!array.contains(rn))
	{
		array.add(rn);
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>로또 번호 생성기</h1>
<%for(int i=0;i<array.size();i++)
	{
	%>
	<%=array.get(i) %>
	<%
	Thread.sleep(700);
	out.flush();
	} %>
</body>
</html>