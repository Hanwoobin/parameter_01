<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
 <link rel="stylesheet" <%--페이지 스타일 --%> href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> <%--부트스트랩 링크 (링크 1이라도 틀리면 안됨) --%>
<title>Login</title>

</head>
<script>
history.replaceState({}, null, location.pathname); //파라미터 (login.jsp?error=1) ?error=1을 없애주는 역할, 하지만 순간적으로는 파라미터 값이 보인다.
</script>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
		
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디 또는 비밀번호가 잘못됬습니다.");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="process_login.jsp" method="post">
				<div class="form-group">
					<label class="sr-only"> id </label>
					<input type="text" class="form-control" placeholder="ID" name='ID' required autofocus>
				</div>
				<div class="form-group">
					<label class="sr-only"> Password </label> 
					<input	type="password" class="form-control" placeholder="Password" name='password' required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>