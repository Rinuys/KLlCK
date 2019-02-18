<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userID=null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
	session.invalidate();
%>
	<script>
	location.href='index.jsp';
	</script>