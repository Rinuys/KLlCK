<%@page import="util.SHA256"%>
<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String userPassword = null;
	String userPasswordConfirm = null;
	String userEmail = null;
	String userNick = null;
	String userGender = null;
	String userBirth = null;
	String termChecked = null;
	if(request.getParameter("userID") != null){
		userID = (String)request.getParameter("userID");
	}
	if(request.getParameter("userPassword") != null){
		userPassword = (String)request.getParameter("userPassword");
	}
	if(request.getParameter("userPasswordConfirm") != null){
		userPasswordConfirm = (String)request.getParameter("userPasswordConfirm");
	}
	if(request.getParameter("userEmail") != null){
		userEmail = (String)request.getParameter("userEmail");
	}
	if(request.getParameter("userNick") != null){
		userNick = (String)request.getParameter("userNick");
	}
	if(request.getParameter("userGender") != null){
		userGender = (String)request.getParameter("userGender");
	}
	if(request.getParameter("userBirth") != null){
		userBirth = (String)request.getParameter("userBirth");
	}
	if(request.getParameter("termChecked") != null){
		termChecked = (String)request.getParameter("termChecked");
	}
	System.out.println(termChecked);

	if(!userPassword.equals(userPasswordConfirm)){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 일치하지 않습니다.');");
		script.println("history.back();");
		script.println("</script>");
	}else if(termChecked == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('약관에 동의해주세요.');");
		script.println("history.back();");
		script.println("</script>");
	}else{
		//정보미입력시 경고
		if(userID == null || userPassword == null || userEmail == null || userNick == null || userGender == null|| userBirth == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된 사항이 있습니다.');");
			script.println("history.back();");
			script.println("</script>");
		}
		userPassword = new SHA256().getSHA256(userPassword);
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(new UserDTO(userID, userNick, userPassword, userEmail, false, userBirth, userGender, null, null));
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디 입니다.');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
		}
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.');");
		script.println("location.href='index.jsp';");
		script.println("</script>");
		script.close();
		}
%>