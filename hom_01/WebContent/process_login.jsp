
<%@page contentType="text/html; charset=utf-8"%>
<%@include file = "./dbconn.jsp"%>
<%

	String ID = request.getParameter("ID");
	String password = request.getParameter("password");
	
	String location = "./login.jsp?error=1";
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from hom_01_user where ID = ? and password = ?";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, ID);
	pstmt.setString(2, password);
	rs = pstmt.executeQuery();
	
	if(rs.next()) {	
		String name = rs.getString("name");
		session.setAttribute("sessionName", name);
		location = "./index.jsp";

	}
	response.sendRedirect(location);
%>