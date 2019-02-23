<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	
	userID = "user123";
	/* if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	} */
		
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

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">
<style>
	/* nav-bar */
	.bg-uos {
		background-color: rgb(10, 77, 155);
	}
	
	.logo {
		font-size: 2.25rem;
		color: white;
	}
	.nav-link {
		font-size: 1.25rem;
		color: white;
	}
	/* header */
	.logo-main {
		font-size: 3.25rem;
		color: black;
		text-align: center;
	}
</style>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById('submit1').onclick = function() {
			document.frm.submit();
		};
	};
</script>
</head>

<body>

	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-uos fixed-top">
		<div class="container">
			<a class="navbar-brand logo" href="index.html">KLlCK</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="class-evaluate.html">강의평</a></li>
					<li class="nav-item"><a class="nav-link" href="reports.html">족보
							/ 레포트</a></li>
					<li class="nav-item"><a class="nav-link" href="board.html">게시판</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							MY Page </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="my-status.html">내 정보</a> <a
								class="dropdown-item" href="status-modify.html">내 정보 변경</a> <a
								class="dropdown-item" href="subscribe.html">구독 내역</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<form action="reports-write_ok.jsp" method="post" name="frm" enctype="multipart/form-data">
			<input type="hidden" name="userID" value="<%=userID %>"/>
			<!-- Page Heading/Breadcrumbs -->
			<br>
			<h1 class="mt-4 mb-3">족보 / 레포트 업로드</h1>

			<ol class="breadcrumb">
				<li class="breadcrumb-item">
					<label for="class">과목명 : </label> 
					<input type="text" name="lecture">
				</li>
				<li class="breadcrumb-item active">
					<label for="professor">교수명	: </label> 
					<input type="text" name="professor">
				</li>
			</ol>

			<div class="row">

				<!-- Post Content Column -->
				<div class="col-lg-8">

					<!-- Preview Image -->
					<input type="file" name="report">
					<hr>

					<!-- Post Content -->

					<!-- Comments Form -->
					<div class="card my-4">
						<h5 class="card-header">Title / Professor</h5>
						<div class="card-body">							
							<div class="form-group">
							<label for="reportTitle">제목 :</label>
							<input type="text" name="reportTitle">
							<br><hr>
							<label for="price">가격 :</label>
							<input type="text" name="price">원
							</div>
						</div>
					</div>
					<div class="card my-4">
						<h5 class="card-header">Leave a Comment</h5>
						<div class="card-body">
							<div class="form-group">
								<textarea name="reportContent" class="form-control" rows="10"></textarea>
							</div>
						</div>
					</div>

				<button type="submit" id="submit1" class="btn btn-primary">Submit</button>
				<br><br>
				</div>


			</div>
			<!-- /.row -->
		</form>
	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-uos">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
