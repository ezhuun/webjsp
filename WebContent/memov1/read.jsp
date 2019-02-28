<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" %> 
<%
	request.setCharacterEncoding("utf-8");

	int memono = Integer.parseInt(request.getParameter("memono"));

	String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	String user = "soldesk";
	String password = "1234";
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	Class.forName(driver);
	
	Connection con = DriverManager.getConnection(url, user, password);
	
	StringBuffer sql = new StringBuffer();
	
	/* 조회수 증가 */
	sql.append(" update memo set ");
	sql.append(" viewcnt = viewcnt + 1 ");
	sql.append(" where memono = ? ");
	
	PreparedStatement pstmt = con.prepareStatement(sql.toString());
	pstmt.setInt(1, memono);
	
	pstmt.executeUpdate();
	
	sql.delete(0, sql.length());

	
	/* 게시물 조회 */
	sql.append(" select memono, title, content, to_char(wdate, 'yyyy-mm-dd') as wdate, viewcnt ");
	sql.append(" from memo ");
	sql.append(" where memono = ? ");
	
	pstmt = con.prepareStatement(sql.toString());
	pstmt.setInt(1, memono);
	
	ResultSet rs = pstmt.executeQuery();
	String content = "";
	if(rs.next()){
		content = rs.getString("content");
		content.replaceAll("\r\n", "<br/>");
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
	
		<h2>조회</h2>
		<div class="panel panel-default">
			<div class="panel-heading">제목</div>
			<div class="panel-body"><%=rs.getString("title") %></div>

			<div class="panel-heading">내용</div>
			<div class="panel-body"><%=content %></div>
			
			<div class="panel-heading">조회수</div>
			<div class="panel-body"><%=rs.getInt("viewcnt") %></div>
			
			<div class="panel-heading">등록일</div>
			<div class="panel-body"><%=rs.getString("wdate") %></div>
		</div>

		<div>
			<button type="button" class="btn btn-default" onclick="location.href='./createForm.jsp'">등록</button>
			<button type="button" class="btn btn-default" onclick="">수정</button>
			<button type="button" class="btn btn-default" onclick="">삭제</button>
			<button type="button" class="btn btn-default" onclick="location.href='./list.jsp'">목록</button>
		</div>
		
	</div>

</body>
</html>
<%
	if(rs != null) rs.close();
	if(pstmt != null) pstmt.close();
	if(con != null) con.close();
%>
