<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel ="stylesheet" href = "./resources/css/bootstrap.min.css"/>
<title>페이지 오류</title>
</head>
<body>
	<div class = "jumbotron">
		<div class = "container">
			<h2 class = "alert alert-danger">요청하신 Page를  찾을수가 없습니다 끼루룩</h2>
		</div>
	</div>
	<div class = "container">
		<p><%=request.getRequestURL() %>
		<p> <a href ="./index.jsp" class = "btn btn-secondary">처음으로 &raquo;</a>
	</div>
</body>

</html>