<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<form action="post">

			<!-- Page Heading/Breadcrumbs -->
			<br>
			<h1 class="mt-4 mb-3">족보 / 레포트 업로드</h1>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><label for="class">과목명 : </label> <input
					type="text" name="class"></li>
				<li class="breadcrumb-item active"><label for="professor">교수명
						: </label> <input type="text" name="professor"></li>
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
						<h5 class="card-header">Leave a Comment:</h5>
						<div class="card-body">
							<div class="form-group">
								<textarea class="form-control" rows="10"></textarea>
							</div>
						</div>
					</div>


				</div>

				<!-- Sidebar Widgets Column -->
				<div class="col-md-4">

					<!-- Search Widget -->
					<div class="card mb-4">
						<h5 class="card-header">해시태그</h5>
						<div class="card-body">
							<div class="input-group">
								<div class="form-group">
									<textarea class="form-control" rows="3"></textarea>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
					</div>



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
