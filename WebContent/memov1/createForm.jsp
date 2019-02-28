<%@ page contentType="text/html; charset=UTF-8" %> 
<% request.setCharacterEncoding("utf-8"); %>

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
	
	
		<h1 class="col-sm-offset-2">메모등록</h1>
		<form class="form-horizontal" method="post" action="createProc.jsp">
		
			<div class="form-group">
				<label class="control-label col-sm-2" for="title">제목</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="title" name="title" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="content">내용</label>
				<div class="col-sm-6">
					<textarea class="form-control" id="content" name="content" rows="10"></textarea>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-defulat">등록</button>
					<button type="reset" class="btn btn-defulat">취소</button>
					<button type="button" class="btn btn-defulat" onclick="location.href='./list.jsp'">목록으로</button>
				</div>
			</div>
			
		</form>
		
		
	</div>

</body>
</html>