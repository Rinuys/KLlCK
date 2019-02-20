
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@
	page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	
%>
<%!
	public static String getClientIP(HttpServletRequest request){
		String ip = request.getHeader("X-FORWARDED-FOR");
		if(ip == null || ip.length() == 0){
			ip = request.getHeader("Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0){
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0){
			ip = request.getRemoteAddr();
		}
		return ip;
	}
%>
<%
	//로그인 유무확인
	String userID = null;
	if(session.getAttribute("userID") != "admin"){
		userID = (String) session.getAttribute("userID");
	}
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('관리자만 사용가능합니다.');");
		script.println("location.href='index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	request.setCharacterEncoding("UTF-8");
	String boardType = "NOTICE";
	String boardTitle = null;
	String boardContent = null;
	String boardIP = null;

	//구현하면 추가
	//String boardFile = null;

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
		boardIP = getClientIP(request);
		int result = boardDAO.write(new BoardDTO(0, "NOTICE", boardTitle, boardContent, null, boardIP, null, userID));
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('공지사항 쓰기에 실패했습니다.');");
			script.println("location.href='board.jsp';");
			script.println("</script>");
			script.close();
			return;
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('공지사항 쓰기에 성공했습니다.');");
			script.println("location.href='board.jsp';");
			script.println("</script>");
			script.close();
			return;
		}
	}
	%>