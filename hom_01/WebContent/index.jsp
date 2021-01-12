<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="./exceptionNoPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link rel="shortcut icon" href="./resources/images/favicon.ico">
<link rel="stylesheet"
	<%--페이지 스타일 --%> href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

	<section class="wrap">
		<div class="">
			<%
				String example = request.getParameter("example");
				if (session.getAttribute("sessionName") == null) {
			%>
			<button class="login" onclick="location.href = 'login.jsp'">로그인</button>
			<button class="create" onclick="location.href = 'createAccount.jsp'">회원가입</button>
			<%
				} else {
			%>
			<%=session.getAttribute("sessionName")%>님 어서오세요!
			<button class="logout" onclick="location.href = 'logout.jsp'">로그아웃</button>
			<%
				}
			%>
		</div>
		<%if (example == null) { %>
		<button onclick="location.href='./index.jsp?example'">example</button>
		<%
		}
		if (example != null) {
		%>
		<p>example 입니다.</p>
		<h3>생성된 샘플파일</h3>
		<button onclick="location.href='./index.jsp'">없애기</button>
		<%
			}
		%>
	</section>
</body>
</html>