
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
		script.println("alert('로그인을 해주세요.');");
		script.println("location.href='login.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	request.setCharacterEncoding("UTF-8");
	String boardType = "FREE";
	String boardTitle = null;
	String boardContent = null;
	String boardIP = null;
	//구현하면 추가
	//String boardFile = null;
	System.out.println(boardTitle);
	System.out.println(boardContent);
	if(request.getParameter("boardTitle") != null){
		boardTitle = (String)request.getParameter("boardTitle");
	}
	if(request.getParameter("boardContent") != null){
		boardContent = (String)request.getParameter("boardContent");
	}
	if(boardTitle == null || boardContent == null || boardTitle.equals("") || boardContent.equals("")){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}else{
		BoardDAO boardDAO = new BoardDAO();
		int result = boardDAO.write(new BoardDTO(0, userID, boardTitle, boardContent, null, null, "FREE", null));
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('자유게시판 글쓰기에 실패했습니다.');");
			script.println("location.href='board.jsp';");
			script.println("</script>");
			script.close();
			return;
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 성공했습니다.');");
			script.println("location.href='board.jsp';");
			script.println("</script>");
			script.close();
			return;
		}
	}
	%>