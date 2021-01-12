<%
	session.removeAttribute("sessionName");
	response.sendRedirect("./index.jsp");
%>