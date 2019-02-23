<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%@ page import="java.io.File" %>


<%
	request.setCharacterEncoding("utf-8");
	
	String url = "jdbc:mysql://210.89.191.71:3306/KLlCK";
	// 리눅스 서버의 mariadb에 연결하겠다. 따라서 localhost가 아니라 리눅스의 ip주소를 입력해야 한다.
	String user = "root";
	String password = "kllck";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String userID = request.getParameter("userID");
	String price = request.getParameter("price");
	String reportTitle = request.getParameter("reportTitle").replaceAll(" ", "");
	String reportContent = request.getParameter("reportContent");
	String professor = request.getParameter("professor");
	String reportIP = request.getRemoteAddr();
	String lectureIndex = "";
	String reportFile = "";
	
	String uploadPath = "C:/Jaba/eclipse-workspace/Project/WebContent/upload";
	int maxFileSize = 1024 * 1024 * 10; // 10MB
	String encType= "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath, maxFileSize, encType, new DefaultFileRenamePolicy());
	
	reportFile = multi.getFilesystemName("upload"); // 중복처리된 파일명
	long filesize = 0;
	File file = multi.getFile("upload");
	if(file != null) {
		filesize = file.length();
	}

	int result = 0;
	int flag = 2;
	//flag
	//0 - 실패
	//1 - 성공
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection(url,user,password);
		
 		String sql = "select lectureIndex from lecture"
 				+ "where lectureName = 'IT관리론' and professor = '홍사능';";
		
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			lectureIndex = rs.getString("lectureIndex");
			
			sql = "insert into reportBoard values(0,?,?,0,?,?,?,?,now(),?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lectureIndex);
			pstmt.setString(2, price);
			pstmt.setString(3, reportTitle);
			pstmt.setString(4, reportContent);
			pstmt.setString(5, userID);
			pstmt.setString(6, reportIP);
			pstmt.setString(7, reportFile);
			result = pstmt.executeUpdate();
			
			if(result == 1){
				flag = 1;
				System.out.println("reportBoard 테이블 데이터 쓰기 성공");
			} else {
				System.out.println("reportBoard 테이블 데이터 쓰기 실패");
				flag = 0;
			}
			
		} else{
			sql = "insert into lecture values(0, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reportTitle);
			pstmt.setString(2, professor);
			result = pstmt.executeUpdate();
			if(result == 1){
				flag = 1;
				System.out.println("lecture 테이블 데이터 쓰기 성공");
			} else {
				flag = 0;
				System.out.println("lecture 테이블 데이터 쓰기 실패");
			}
			
			sql = "select max(lectureIndex) lectureIndex from lecture";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				lectureIndex = rs.getString("lectureIndex");
				sql = "insert into reportBoard values(0,?,?,0,?,?,?,?,now(),?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, lectureIndex);
				pstmt.setString(2, price);
				pstmt.setString(3, reportTitle);
				pstmt.setString(4, reportContent);
				pstmt.setString(5, userID);
				pstmt.setString(6, reportIP);
				pstmt.setString(7, reportFile);
				result = pstmt.executeUpdate();
				if(result == 1){
					flag = 1;
					System.out.println("reportBoard 테이블 데이터 쓰기 성공");
				} else {
					flag = 0;
					System.out.println("reportBoard 테이블 데이터 쓰기 실패");
				}
			}
		}
	} catch(ClassNotFoundException e){
		System.out.println("[에러] : " + e.getMessage());
	} catch(SQLException e){
		System.out.println("[에러] : " + e.getMessage());
	} finally{
		if(conn!=null) try {conn.close();} catch(SQLException e){}
		if(pstmt!=null) try {pstmt.close();} catch(SQLException e){}
	}
	
	out.println("<script type='text/javascript'>");
	if(flag == 0){
		out.println("alert('글쓰기에 성공했습니다.');");
		out.println("location.href='reports.jsp';"); //list로 이동
	} else{
		out.println("alert('글쓰기에 실패했습니다.');");
		out.println("history.back();"); //뒤로 가기
	}
	out.println("</script>");
%>