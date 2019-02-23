<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%
	String userID = null;

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
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>KLlCK</title>

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
			<%
				UserDAO userDAO = new UserDAO();
			%>
			<!-- Content Column -->
			<div class="col-lg-9 mb-4">
				<form method="post" action="statusModifyAction.jsp" class="my-status-form">
					<h2 class="my-status-list">개인정보 변경(변경할 정보를 입력하세요)</h2>
					<p class="my-status-list">
						<label for="name" class="my-status-title">아이디</label> <input type="text" name="newUserID" value="<%=userID %>" class="my-status-content">
					</p>
					<p class="my-status-list">
						<label for="name" class="my-status-title">닉네임</label> <input type="text" name="newUserNick" value="<%=userDAO.getUserNick(userID) %>" class="my-status-content">
					</p>
					<p class="my-status-list">
						<label for="mail" class="my-status-title">이메일</label> <input type="text" name="newUserEmail" value="<%=userDAO.getUserEmail(userID) %>" class="my-status-content">
					</p>
					<div class="my-status-list">
						<button type="submit" class="btn btn-primary ml-1">변경하기</button>
						<a type="button" class="btn btn-secondary ml-1"
							href="index.jsp">메인으로 돌아가기</a>
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
