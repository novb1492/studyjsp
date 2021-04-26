<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! public int total;
	public int randomnumer()
	{	
		return (int)(Math.random()*10)+1;
	}
	public String randomcolor()
	{
		double n=Math.random();
		if(n>=0.66)
		{
			return "red";
		}
		else if(n>=0.33)
		{
			return "yellow";
		}
		else
		{
			return "blue";
		}
				
	}
	%>
	<%int num=randomnumer(); 
	String color=randomcolor();
	int now=0;
	now++;
	total++;
	%>
<h1>오늘의 운세</h1>
<p>
페이지 누적요청수 :<%=total %>페이지 요청: <%=now %>
</p>
<p>
행운의 숫자:<%=num%></br>
행운의 색깔:<%=color %>
</p>
</body>
</html>