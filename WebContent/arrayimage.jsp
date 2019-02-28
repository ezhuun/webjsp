<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String root = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] images = {
							"tu01.jpg",
							"tu02.jpg",
							"tu03.jpg",
							"tu04.jpg",
							"tu05.jpg",
							"tu06.jpg",
							"tu07.jpg",
							"tu08.jpg",
							"tu09.jpg",
							"tu10.jpg",
							};
		out.println("<h1>튜울립 축제</h1>");
		for(int i=0; i<images.length; i++){
			out.println("<a href='"+root+"/tulip/"+images[i]+"'>");
			out.println("<img src='"+root+"/tulip/"+images[i]+"' width='200px' height='160px' border='0'/>");
			out.println("</a>");
		}
	%>
	

</body>
</html>