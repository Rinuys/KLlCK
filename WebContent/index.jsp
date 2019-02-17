<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>KLlCK</title>

<!-- 부트스트랩 css추가 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<!-- 커스텀CSS -->
<link href="css/modern-business.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
</head>
<body>
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
					<li class="nav-item dropdown"><a
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

	<header>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">

				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="main-background"
					style="background-image: url('http://rgb.45soft.com/image/1920x1080/ffffff.jpg')">
					<div class="search">
						<p class="logo-main">KLlCK</p>
						<form action="">
							<input class="search-form" type="text" placeholder="Search.....">
							<input class="search-btn" type="submit" value="">
						</form>
					</div>
				</div>
			</div>
		</div>
	</header>
<body>
	<section class="container">
		<form method="get" action="./index.jsp" class="form-inline mt-3">
			<select name="lectureDivide" class="form-control mx-1 mt-2">
				<option value="전체">전체</option>
				<option value="전공">전공</option>
				<option value="교양">교양</option>
				<option value="기타">기타</option>
			</select> <input type="text" name="search" class="form-control mx-1 mt-2"
				placeholder="내용을 입력하세요">
			<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal"
				href="#registerModal">등록하기</a> <a class="btn btn-danger mx-1 mt-2"
				data-toggle="modal" href="#reportModal">신고</a>
		</form>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						컴퓨터개론&nbsp;<small>김현우</small>
					</div>
					<div class="col-4 text-right">
						종합<span style="color: red;">A</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					정말 좋은 강의에요.&nbsp;<small>(2017년 가을학기)</small>
				</h5>
				<p class="card-text">강의가 너무 쉬워서 배운게 없습니다.</p>
				<div class="row">
					<div class="col-9 text-left">
						종합<span style="color: red;"">A</span> 성적<span style="color: red;"">B</span>
						강의력<span style="color: red;"">C</span> <span style="color: green;">(추천:15)</span>
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('추천하시겠습니까?)"
							href="./likeAction.jsp?evaluationID=">추천</a> <a
							onclick="return confirm('삭제하시겠습니까?)"
							href="./deleteAction.jsp?evaluationID=">삭제</a>
					</div>
				</div>
			</div>
		</div>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						컴퓨터통신&nbsp;<small>강솔</small>
					</div>
					<div class="col-4 text-right">
						종합<span style="color: red;">A</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					정말 좋은 강의에요.&nbsp;<small>(2017년 가을학기)</small>
				</h5>
				<p class="card-text">강의가 너무 쉬워서 배운게 없습니다.</p>
				<div class="row">
					<div class="col-9 text-left">
						종합<span style="color: red;"">A</span> 성적<span style="color: red;"">B</span>
						강의력<span style="color: red;"">C</span> <span style="color: green;">(추천:15)</span>
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('추천하시겠습니까?)"
							href="./likeAction.jsp?evaluationID=">추천</a> <a
							onclick="return confirm('삭제하시겠습니까?)"
							href="./deleteAction.jsp?evaluationID=">삭제</a>
					</div>
				</div>
			</div>
		</div>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						자바&nbsp;<small>이홍석</small>
					</div>
					<div class="col-4 text-right">
						종합<span style="color: red;">A</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					정말 좋은 강의에요.&nbsp;<small>(2017년 가을학기)</small>
				</h5>
				<p class="card-text">강의가 너무 쉬워서 배운게 없습니다.</p>
				<div class="row">
					<div class="col-9 text-left">
						종합<span style="color: red;"">A</span> 성적<span style="color: red;"">B</span>
						강의력<span style="color: red;"">C</span> <span style="color: green;">(추천:15)</span>
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('추천하시겠습니까?)"
							href="./likeAction.jsp?evaluationID=">추천</a> <a
							onclick="return confirm('삭제하시겠습니까?)"
							href="./deleteAction.jsp?evaluationID=">삭제</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">평가등록</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./evaluationRegisterAction.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>강의명</label> <input type="text" name="lectureName"
									class="form-control" maxlength="20">
							</div>
							<div class="form-group col-sm-6">
								<label>교수명</label> <input type="text" name="profesosrName"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label>수강연도</label> <select name="lectureYear"
									class="form-control">
									<option value="2014">2014</option>
									<option value="2015">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018" selected>2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
									<option value="2021">2021</option>
								</select>
							</div>
							<div class="form-group col-sm-4">
								<label>수강학기</label> <select name="semesterDivide"
									class="form-control">
									<option value="1학기" selected>1학기</option>
									<option value="여름학기" selected>여름학기</option>
									<option value="2학기" selected>2학기</option>
									<option value="겨울학기" selected>겨울학기</option>
								</select>
							</div>
							<div class="form-group col-sm-4">
								<label>강의구분</label> <select name="lectureDivide"
									class="form-control">
									<option value="전공" selected>1전공</option>
									<option value="교양" selected>교양</option>
									<option value="기타" selected>기타</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>제목</label> <input type="text" name="evalutationTitle"
								class="form-control" maxlength="30">
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea name="evaluationContent" class="form-control"
								maxlength="2048" style="height: 180px;">
							</textarea>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label>종합</label> <select name="totalScore" class="form-control">
									<option value="A+" selected>A+</option>
									<option value="A">A</option>
									<option value="B+">B+</option>
									<option value="B">B</option>
									<option value="C+">C+</option>
									<option value="C">C</option>
									<option value="D+">D+</option>
								</select>
							</div>
							<div class="form-group col-sm-4">
								<label>성적</label> <select name="creditScore"
									class="form-control">
									<option value="A+" selected>A+</option>
									<option value="A">A</option>
									<option value="B+">B+</option>
									<option value="B">B</option>
									<option value="C+">C+</option>
									<option value="C">C</option>
									<option value="D+">D+</option>
								</select>
							</div>
							<div class="form-group col-sm-4">
								<label>강의력</label> <select name="lectureScore"
									class="form-control">
									<option value="A+" selected>A+</option>
									<option value="A">A</option>
									<option value="B+">B+</option>
									<option value="B">B</option>
									<option value="C+">C+</option>
									<option value="C">C</option>
									<option value="D+">D+</option>
								</select>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary">등록하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="reportModal" tabindex="-1" role="dialog"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">신고</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./reportAction.jsp" method="post">
						<div class="form-group">
							<label>제목</label> <input type="text" name="reportTitle"
								class="form-control" maxlength="30">
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea name="reportContent" class="form-control"
								maxlength="2048" style="height: 180px;">
							</textarea>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-danger">신고하기</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
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