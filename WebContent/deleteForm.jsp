<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.vo.GuestVo" %>
<%@ page import = "com.javaex.dao.GuestDao" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));

	GuestDao guestDao = new GuestDao();
	GuestVo guestVo = guestDao.getGuest(no);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
		비밀번호 : <input type = "text" name="password">
		<button type="submit">확인</button><br>
		<!-- 비밀번호가 같은사람이 있을 수 있어서 no로 한번 더 구분해주기 위해 -->
		<input type="hidden" name="no" value="<%=guestVo.getNo()%>">
	</form>
	<br>
	<a href="./addList.jsp">메인으로 돌아가기</a>
</body>
</html>