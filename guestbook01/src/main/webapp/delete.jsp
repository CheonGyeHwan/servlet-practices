<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.poscoict.guestbook.dao.GuestbookDao"%>

<%
request.setCharacterEncoding("UTF-8");
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestbookDao dao = new GuestbookDao();
	dao.delete(no, password);
	
	response.sendRedirect("/guestbook01");
%>