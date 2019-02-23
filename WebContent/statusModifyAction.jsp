<%@page import="util.SHA256"%>
<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userID = null;
String newUserID = null;
String newUserEmail = null;
String newUserNick = null;

if(session.getAttribute("userID") != null){
	userID = (String)session.getAttribute("userID");
}
if(userID == null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 해주세요.');");
	script.println("location.href = 'login.jsp';");
	script.println("</script>");
	script.close();
	return;
}
request.setCharacterEncoding("UTF-8");

if(request.getParameter("newUserID") != null){
	newUserID = (String)request.getParameter("newUserID");
}
if(request.getParameter("newUserEmail") != null){
	newUserEmail = (String)request.getParameter("newUserEmail");
}
if(request.getParameter("newUserNick") != null){
	newUserNick = (String)request.getParameter("newUserNick");
}

UserDAO userDAO = new UserDAO();
	int result = userDAO.statusModify(userID, newUserID, newUserEmail, newUserNick);
	if(result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('사용자정보 변경 성공.');");
		script.println("history.back();");
		script.println("</script>");
	}else if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 등록된 이메일입니다.');");
		script.println("history.back();");
		script.println("</script>");
	}
%>
