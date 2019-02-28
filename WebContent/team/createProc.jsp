<%@page import="java.util.Arrays"%>
<%@ page contentType="text/html; charset=UTF-8" %> 
<% request.setCharacterEncoding("utf-8"); %>
<%
String[] skill =request.getParameterValues("skill");
String skillStr = "";
for(int i = 0; i < skill.length; i++){
	skillStr += skill[i];
	if(i < skill.length-1){
		skillStr += ", ";
	}
}
%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
  
	<div class="container">
		<fieldset>
			<legend>팀정보 확인</legend>
			이름 : <%=request.getParameter("name") %><br/>
			전화번호 : <%=request.getParameter("phone") %><br/>
			성별 : <%=request.getParameter("gender") %><br/>
			보유기술 : <%=skillStr %><br/>
			취미 : <%=request.getParameter("hobby") %><br/>
			주소 : (<%=request.getParameter("zipcode") %>) <%=request.getParameter("address1") %><br/>
			상세주소 : <%=request.getParameter("address2") %><br/>
			
		</fieldset>
		
	</div>

</body>
</html>