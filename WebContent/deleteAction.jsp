<%@page import="likey.LikeDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@
	page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	
%>
<%
	//로그인 유무확인
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인해주세요.');");
		script.println("location.href='index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	request.setCharacterEncoding("UTF-8");
	String boardIndex = null;
	if(request.getParameter("boardIndex") != null){
		boardIndex = (String)request.getParameter("boardIndex");
	}
	BoardDAO boardDAO = new BoardDAO();
	int result = boardDAO.delete(userID, boardIndex);
	if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('삭제가 완료되었습니다.');");
		script.println("location.href='board.jsp';");
		script.println("</script>");
		script.close();
		return;

	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.')';");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
%>