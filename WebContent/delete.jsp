<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.vo.GuestVo" %>
<%@ page import = "com.javaex.dao.GuestDao" %>

<%
	String password = request.getParameter("password");
    //비밀번호가 같은사람이 있을 수 있어서 no로 한번 더 구분해주기 위해
	int no = Integer.parseInt(request.getParameter("no"));

	GuestDao guestDao = new GuestDao();
	GuestVo guestVo = new GuestVo(no, password);
	guestDao.guestDelete(guestVo);
	
	response.sendRedirect("./addList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
삭제
</body>
</html>