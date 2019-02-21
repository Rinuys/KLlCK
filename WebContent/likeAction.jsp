<%@page import="likey.LikeDAO"%>
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
	String boardIP = getClientIP(request);
	if(request.getParameter("boardIndex") != null){
		boardIndex = (String)request.getParameter("boardIndex");
	}
	LikeDAO likeDAO = new LikeDAO();
	int result = likeDAO.likeExist(userID, boardIndex);
	System.out.println("result1 : " + result);
	if (result == 0) {
		result = likeDAO.like(userID, boardIndex, boardIP);
		System.out.println("result2 : " + result);
		if(result == 1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('추천하시겠습니까?');");
			script.println("location.href='board.jsp';");
			script.println("</script>");
			script.close();
			return;
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류.');");
			script.println("location.href='board.jsp';");
			script.println("</script>");
			script.close();
			return;
		}
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('추천을 취소하시겠습니까?');");
		script.print("location.href='likeCancelAction.jsp?boardIndex=");
		script.println(boardIndex + "';");
		script.println("</script>");
		script.close();
		return;
	}
%>