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
	String reportIndex = "";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	String uploadPath = "C:/Java/eclipse-workspace/Project/WebContent/upload";
	int maxFileSize = 1024 * 1024 * 10; // 10MB
	String encType= "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath, maxFileSize, encType, new DefaultFileRenamePolicy());
	
	String lecture = multi.getParameter("lecture");
	String userID = multi.getParameter("userID");
	String price = multi.getParameter("price");
	String reportTitle = multi.getParameter("reportTitle");
	String reportContent = multi.getParameter("reportContent");
	String professor = multi.getParameter("professor");
	String reportIP = "1.1.1.1";
	String lectureIndex = "";
	String reportFile = multi.getFilesystemName("report"); // 중복처리된 파일명
	
	System.out.println("lecture" + lecture);
	System.out.println("userID" + userID);
	System.out.println("price" + price);
	System.out.println("reportTitle" + reportTitle);
	System.out.println("reportContent" + reportContent);
	System.out.println("professor" + professor);
	System.out.println("reportIP" + reportIP);
	System.out.println("reportFile" + reportFile);
	
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
 				+ " where lectureName = ? and professor = ?;";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, lecture);
		pstmt.setString(2, professor);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			lectureIndex = rs.getString("lectureIndex");
			
			sql = "insert into reportBoard values(0,?,?,0,?,?,?,?,now(),?)";
			//sql = "insert into reportBoard values(0, 1, 1000, 0, '중간고사', '중간고사 족보', 'id123', '000.000.000.000', now(), 'IT관리론 중간');";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lectureIndex);
			pstmt.setString(2, price);
			pstmt.setString(3, lecture);
			pstmt.setString(4, reportContent);
			pstmt.setString(5, userID);
			pstmt.setString(6, reportIP);
			pstmt.setString(7, reportFile);
			result = pstmt.executeUpdate();
			
			if(result == 1){
				flag = 1;
				System.out.println("reportBoard1 테이블 데이터 쓰기 성공");
			} else {
				System.out.println("reportBoard1 테이블 데이터 쓰기 실패");
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
				System.out.println("lecture1 테이블 데이터 쓰기 성공");
			} else {
				flag = 0;
				System.out.println("lecture1 테이블 데이터 쓰기 실패");
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
					System.out.println("reportBoard2 테이블 데이터 쓰기 성공");
				} else {
					flag = 0;
					System.out.println("reportBoard2 테이블 데이터 쓰기 실패");
				}
			}
		}
		
		sql = "select max(reportIndex) reportIndex from reportBoard";
		
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();		
		if(rs.next()){
			reportIndex = rs.getString("reportIndex");
		}
		
	} catch(ClassNotFoundException e){
		System.out.println("[에러] : " + e.getMessage());
	} catch(SQLException e){
		System.out.println("[에러] : " + e.getMessage());
	} finally{
		if(conn!=null) try {conn.close();} catch(SQLException e){}
		if(pstmt!=null) try {pstmt.close();} catch(SQLException e){}
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>
<link rel="stylesheet" href="./css/base/jquery-ui.css">

<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<!-- Custom styles for this template -->
<script type="text/javascript">
    $(document).ready(function() {
	 	var commoditySend = function(){	
	    	$.ajax({
	    		url: 'http://172.30.1.18:13000/api/org.uos.kllck.Commodity',
	    		type: 'post',
	    		dataType: 'json',
	    		data:{
	    			$class: "org.uos.kllck.Commodity",
	    			commodityId: $('#commodityId').val(),
	    			hashValue: "hohohoooo",
	    			keyValue: "123hoho123hoho",
	    			price: $('#price').val(),
	    			owner: "resource:org.uos.kllck.Student#0001"
	    		},
	    		success: function(){
	    			alert("성공");
	    		},
	    		error: function(){
	    			alert($('#price').val());
	    			alert($('#commodityId').val());
	    		}
	    	});   
	 	}
	 	commoditySend();
	 	
	 	$('#submit1').button();
    });
</script>
</head>
<body>
	<input type="hidden" id="price" name="price" value="<%=price%>">
	<input type="hidden" id="commodityId" name="commodityId" value="<%=reportIndex%>">
	<a id="submit1" href="reports.jsp">게시판으로 돌아가기</a>
</body>
</html>