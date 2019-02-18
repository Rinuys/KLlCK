<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
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
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

.my-status-list {
	padding: 0.75rem 1.25rem;
	border-bottom: 1px solid rgba(0, 0, 0, .125);
}

.my-status-title {
	color: rgba(0, 0, 0, .525);
	display: inline;
	padding-left: 0.75rem;
}

.my-status-content {
	display: inline;
	padding-left: 1.75rem;
}
</style>
</head>

<body>
<!-- �α��� ���� Ȯ�� -->
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�α����� ���ּ���.');");
		script.println("location.href='login.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
%>

<!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-uos fixed-top">
    <div class="container">
      <a class="navbar-brand logo" href="index.jsp">KLlCK</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="class-evaluate.jsp">������</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="reports.jsp">���� / ����Ʈ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="board.jsp">�Խ���</a>
          </li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						MY Page </a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
						<a class="dropdown-item" href="my-status.jsp">�� ����</a> 
						<a class="dropdown-item" href="status-modify.jsp">�� ���� ����</a> 
						<a class="dropdown-item" href="subscribe.jsp">���� ����</a>
						<a class="dropdown-item" href="userLogoutAction.jsp">�α׾ƿ�</a>
				</div>
			</li>
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
					<a href="my-status.html" class="list-group-item">�� ����</a> <a
						href="status-modify.html" class="list-group-item">�� ���� ����</a> <a
						href="subscribe.html" class="list-group-item">���� ����</a>
				</div>
			</div>
			<!-- Content Column -->
			<div class="col-lg-9 mb-4">
				<h2 class="my-status-list">�⺻ ����</h2>
				<div class="my-status-list">
					<div class="my-status-title">����</div>
					<div class="my-status-content my-status-img">
						<img src="https://cf-fpi.everytime.kr/0.png" alt="">
					</div>
				</div>
				<div class="my-status-list">
					<div class="my-status-title">�г���</div>
					<div class="my-status-content">����</div>
				</div>
				<div class="my-status-list">
					<div class="my-status-title mr-3">�а�</div>
					<div class="my-status-content">������а�</div>
				</div>
				<div class="my-status-list">
					<div class="my-status-title">������</div>
					<div class="my-status-content">������а�</div>
				</div>
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
