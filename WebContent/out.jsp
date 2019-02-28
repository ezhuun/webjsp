<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>2014년 개봉영화</h1>
	<div style='font-size: 28px;'>
	<%
		out.print("수상한 그녀");
		out.print("변호인");
		out.print("그래비티");
		out.print("윌터의 상상은 현실이 된다");
		out.print("호빗");
	%>
	</div>
	<hr/>
	<div style='font-size: 28px;'>
	<%
		out.println("수상한 그녀");
		out.println("변호인");
		out.println("그래비티");
		out.println("윌터의 상상은 현실이 된다");
		out.println("호빗");
	%>
	</div>
	<hr/>
	<div style='font-size: 28px;'>
	<%
		System.out.println("수상한 그녀");
		System.out.println("변호인");
		System.out.println("그래비티");
		System.out.println("윌터의 상상은 현실이 된다");
		System.out.println("호빗");
	%>
	</div>
	<hr/>
	<div style='font-size: 28px;'>
	<%
		System.out.print("수상한 그녀");
		System.out.print("변호인");
		System.out.print("그래비티");
		System.out.print("윌터의 상상은 현실이 된다");
		System.out.print("호빗");
	%>
	</div>
</body>
</html>