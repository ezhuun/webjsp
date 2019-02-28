<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public int tot(int kuk, int eng, int mat){
			return kuk+eng+mat;
		}
	
		public int avg(int tot){
			return tot/3;
		}
	%>
	
	<%
		String name = "아로미";
		int kuk = 90;
		int eng = 85;
		int mat = 100;
		int tot = tot(kuk, eng, mat);
		int avg = avg(tot);
	%>
	
	<h1>성적표</h1>
	<div style="font-size:24px;">
		<ul>
			<li>성명:<% out.println(name); %></li>
			<li>국어:<%=kuk %></li>
			<li>영어:<%=eng %></li>
			<li>수학:<%=mat %></li>
			<li>총점:<%=tot %></li>
			<li>평균:<%=avg %></li>
		</ul>
	</div>
</body>
</html>