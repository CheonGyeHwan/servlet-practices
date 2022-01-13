<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList"%>
<%@ page import="com.poscoict.guestbook.dao.GuestbookDao"%>
<%@ page import="com.poscoict.guestbook.vo.GuestbookVo"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<%
		List<GuestbookVo> list = new ArrayList<>();
		GuestbookDao dao = new GuestbookDao();
		
		list = dao.findAll();
		int num = list.size();
	%>
	<form action="<%= request.getContextPath() %>/add.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE="등록"></td>
		</tr>
	</table>
	</form>
	<br>
	<%
		for (GuestbookVo vo : list) {
	%>
	<table width=510 border=1>
		<tr>
			<td>[<%= num %>]</td>
			<td><%= vo.getName() %></td>
			<td><%= vo.getRegDate() %></td>
			<td><a href="/guestbook01/deleteform.jsp?no=<%= vo.getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%= vo.getMessage().replaceAll("\n", "<br/>") %></td>
		</tr>
	</table>
	<%
			num--;
		}
	%>
</body>
</html>