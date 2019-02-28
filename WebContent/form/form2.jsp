<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css"> 
  *{ 
    font-family: 굴림체; 
    font-size: 24px; 
  } 
</style> 
</head>
<body>
	<form name="frm" method="post" action="./proc2.jsp">
		주말 여행지를 입력해주세요<br/>
		<input type="text" name="area" size="30"/>
		<br/><br/>
		주말 여행지를 선택해주세요<br/>
		<select name="area2">
			<option value="일본">일본</option>
			<option value="중국">중국</option>
			<option value="베틈남">베틈남</option>
			<option value="태국">태국</option>
			<option value="호주">호주</option>
			<option value="캐나다">캐나다</option>
			<option value="미국">미국</option>
			<option value="터키">터키</option>
			<option value="크로아티아">크로아티아</option>
			<option value="스위스">스위스</option>
		</select>
		<input type="submit" value="기간 선택"/>
	</form>
</body>
</html>