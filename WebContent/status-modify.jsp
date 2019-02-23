<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%
	String url = "jdbc:mysql://210.89.191.71:3306/KLlCK";
	// 리눅스 서버의 mariadb에 연결하겠다. 따라서 localhost가 아니라 리눅스의 ip주소를 입력해야 한다.
	String user = "root";
	String password = "kllck";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	StringBuffer result = new StringBuffer();
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		result.append("드라이버 로딩 성공");
		
		conn = DriverManager.getConnection(url,user,password);
		result.append("드라이버 연결 성공");
		
 		String sql = "select userId, userPassword,userEmail,userAccount from user = ?";
		
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String userId = rs.getString("userId");
			String userPassword = rs.getString("userPassword");
			String userEmail = rs.getString("userEmail");
			String userAccount = rs.getString("userAccount");
		}
	} catch(ClassNotFoundException e){
		System.out.println("[에러] : " + e.getMessage());
	} catch(SQLException e){
		System.out.println("[에러] : " + e.getMessage());
	} finally{
		if(conn!=null) try {conn.close();} catch(SQLException e){}
	}
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<style>
.row {
	padding-bottom: 1.75rem;
}

.col-lg-9 {
	padding: 0px;
	border-radius: .25rem;
}

form {
	border: 1px solid rgba(0, 0, 0, .125);
	padding-bottom: 1.75rem;
}

.my-status-list {
	padding: 0.75rem 1.25rem;
	border-bottom: 1px solid rgba(0, 0, 0, .125);
}

.my-status-form {
	display: flex;
	flex-direction: column;
}

.my-status-title {
	color: rgba(0, 0, 0, .525);
	display: inline;
	padding-left: 0.75rem;
}

.my-status-content {
	display: inline;
	margin-left: 1.75rem;
	border-top-color: transparent;
	border-left-color: transparent;
	border-right-color: transparent;
}

input>.my-status-content {
	
}
</style>
</head>

<body>

	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-uos fixed-top">
		<div class="container">
			<a class="navbar-brand logo" href="index.jsp">KLlCK</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="class-evaluate.jsp">강의평</a></li>
					<li class="nav-item"><a class="nav-link" href="reports.jsp">족보
							/ 레포트</a></li>
					<li class="nav-item"><a class="nav-link" href="board.jsp">게시판</a>
					</li>
					<li class="nav-item dropdown active"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							MY Page </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="my-status.jsp">내 정보</a> <a
								class="dropdown-item" href="status-modify.jsp">내 정보 변경</a> <a
								class="dropdown-item" href="subscribe.jsp">구독 내역</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<br>
		<br>
		<br>

		<ol class="breadcrumb">
			<li class="breadcrumb-item active">MY PAGE</li>
		</ol>

		<!-- Content Row -->
		<div class="row">
			<!-- Sidebar Column -->
			<div class="col-lg-3 mb-4">
				<div class="list-group">
					<a href="my-status.jsp" class="list-group-item">내 정보</a> 
					<a href="status-modify.jsp" class="list-group-item">내 정보 변경</a> 
					<a href="subscribe.jsp" class="list-group-item">구독 내역</a>
				</div>
			</div>
			<!-- Content Column -->
			<div class="col-lg-9 mb-4">
				<form action="" class="my-status-form">
					<h2 class="my-status-list">개인정보 변경</h2>
					<p class="my-status-list">
						<label for="name" class="my-status-title">사진</label> <input
							type="file" name="name" class="my-status-content">
					</p>
					<p class="my-status-list">
						<label for="name" class="my-status-title">닉네임</label> <input
							type="text" name="name" value="강솔" class="my-status-content">
					</p>
					<p class="my-status-list">
						<label for="mail" class="my-status-title">이메일</label> <input
							type="text" name="mail" value="웹메일" class="my-status-content">
					</p>
					<p class="my-status-list">
						<label for="major" class="my-status-title">학과</label> <input
							type="text" name="major" value="영어영문학과" class="my-status-content">
					</p>
					<div class="my-status-list">
						<div class="my-status-title">사진</div>
						<div class="my-status-content my-status-img">
							<img src="https://cf-fpi.everytime.kr/0.png" alt="">
						</div>
					</div>
				</form>

			</div>
		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-uos">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; 2019 by
				KLlCK</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
