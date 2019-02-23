<%@page import="user.UserDAO"%>
<%@page import="user.UserDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String url = "jdbc:mysql://210.89.191.71:3306/KLlCK";
	// ������ ������ mariadb�� �����ϰڴ�. ���� localhost�� �ƴ϶� �������� ip�ּҸ� �Է��ؾ� �Ѵ�.
	String user = "root";
	String password = "kllck";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	StringBuffer result = new StringBuffer();
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		result.append("����̹� �ε� ����");
		
		conn = DriverManager.getConnection(url,user,password);
		result.append("����̹� ���� ����");
		
		String sql = "select userPassword,userEmail,userAccount from user";
		
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			result.append("	<tr>");
			result.append("<td>" + rs.getString("userPassword") + "</td>");
			result.append("<td>" + rs.getString("userEmail") + "</td>");
			result.append("<td>" + rs.getString("userAccount") + "</td>");
			result.append("	</tr>");
		}
	} catch(ClassNotFoundException e){
		System.out.println("[����] : " + e.getMessage());
	} catch(SQLException e){
		System.out.println("[����] : " + e.getMessage());
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

<title>KLlCK</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">

<style>
	.col-md-7 {
		max-width: 15%;
	}
	.img-fluid rounded mb-3 mb-md-0 {
		max-width: 50%;
		height: 150%;
	}
	.img-fluid {
		height: 100%;
	}
	.col-md-5 {
		flex: 15%;
		max-width: 120%;
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
    	%>

	<%
    		BoardDAO checkBoardDAO = new BoardDAO();
    		UserDAO emailCheckUserDAO = new UserDAO();
    	%>
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
			<%if(userID != null){ %>
			<label class="mt-3" style="color: white"><%=checkBoardDAO.getUserNick(userID) %>��
				�ȳ��ϼ���!</label>
			<%} %>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="class-evaluate.jsp">������</a></li>
					<li class="nav-item"><a class="nav-link" href="reports.jsp">����
							/ ����Ʈ</a></li>
					<li class="nav-item"><a class="nav-link" href="board.jsp">�Խ���</a>
					</li>
					<%
          	if(userID == null){
          		
          %>
					<li class="nav-item"><a class="nav-link" href="login.jsp">�α���</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="sign-up.jsp">ȸ������</a>
					</li>
					<%
          	}else{
          %>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							MY Page </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="my-status.jsp">�� ����</a> <a
								class="dropdown-item" href="status-modify.jsp">�� ���� ����</a> <a
								class="dropdown-item" href="subscribe.jsp">���� ����</a>
							<%
						if(!emailCheckUserDAO.getUserEmailChecked(userID)){
						%>
							<a class="dropdown-item" href="emailSendAction.jsp">�̸��� �����ϱ�</a>
							<%
						}
						%>
							<a class="dropdown-item" href="userLogoutAction.jsp">�α׾ƿ�</a>
						</div></li>
					<%
          	}
			%>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<br>
		<h1 class="mt-4 mb-3">���� / ����Ʈ</h1>

		<ol class="breadcrumb">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					���� </a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="navbarDropdownBlog">
					<a class="dropdown-item" href="test.jsp">����</a> <a
						class="dropdown-item" href="reports.jsp">����Ʈ</a>
				</div></li>
		</ol>

		<!-- Project One -->
		<div class="row">
			<div class="col-md-7">

				<a href="#"> 
					<img class="img-fluid rounded mb-3 mb-md-0"
					src="https://t1.daumcdn.net/cfile/tistory/23173D4C53E9D0F809" alt=""
					style="height: 200px;">
				</a>
			</div>
			<div class="col-md-5">
				<h3>����Ʈ 1</h3>
				<p>����Ʈ ����</p>
			</div>
		</div>
		<!-- /.row -->

		<hr>
		<div class="align_right">
			<button type="button" class="btn_write btn_txt01" style="cursor: pointer;" onclick="location.href='reports-write.jsp'">����</button>
		</div>
		<!-- Pagination -->
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span
					class="sr-only">Previous</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
					class="sr-only">Next</span>
			</a></li>
		</ul>

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
	<!-- �������� �ڹٽ�ũ��Ʈ -->
	<script src="./js/jquery.min.js"></script>
	<!-- ��Ʈ��Ʈ�� �ڹٽ�ũ��Ʈ -->
	<script src="./js/bootstrap.min.js"></script>
</body>

</html>