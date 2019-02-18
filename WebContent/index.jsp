<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<!-- 로그인 유무 확인 -->
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
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
            <a class="nav-link" href="class-evaluate.jsp">강의평</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="reports.jsp">족보 / 레포트</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="board.jsp">게시판</a>
          </li>
          <%
          	if(userID == null){
          		
          %>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">로그인</a>
          </li>
          <li class="nav-item">
          	<a class="nav-link" href="sign-up.jsp">회원가입</a>
          </li>
          <%
          	}else{
          %>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						MY Page </a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
						<a class="dropdown-item" href="my-status.jsp">내 정보</a> 
						<a class="dropdown-item" href="status-modify.jsp">내 정보 변경</a> 
						<a class="dropdown-item" href="subscribe.jsp">구독 내역</a>
						<a class="dropdown-item" href="userLogoutAction.jsp">로그아웃</a>
				</div>
			</li>
			<%
          	}
			%>
			</ul>
		</div>
    </div>
  </nav>

  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="main-background" style="background-image: url('http://rgb.45soft.com/image/1920x1080/ffffff.jpg')">
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
			</select>
			<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요">
			<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">등록하기</a>
			<a class="btn btn-danger mx-1 mt-2" data-toggle="modal" href="#reportModal">신고</a>
		</form>
	<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left">컴퓨터개론&nbsp;<small>김현우</small></div>
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
					종합<span style=color:red;">A</span>
					성적<span style=color:red;">B</span>
					강의력<span style=color:red;">C</span>
					<span style="color:green;">(추천:15)</span>
				</div>
				<div class="col-3 text-right">
					<a onclick="return confirm('추천하시겠습니까?)" href="./likeAction.jsp?evaluationID=">추천</a>
					<a onclick="return confirm('삭제하시겠습니까?)" href="./deleteAction.jsp?evaluationID=">삭제</a>
				</div>
			</div>
		</div>
	</div>
		<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left">컴퓨터통신&nbsp;<small>강솔</small></div>
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
					종합<span style=color:red;">A</span>
					성적<span style=color:red;">B</span>
					강의력<span style=color:red;">C</span>
					<span style="color:green;">(추천:15)</span>
				</div>
				<div class="col-3 text-right">
					<a onclick="return confirm('추천하시겠습니까?)" href="./likeAction.jsp?evaluationID=">추천</a>
					<a onclick="return confirm('삭제하시겠습니까?)" href="./deleteAction.jsp?evaluationID=">삭제</a>
				</div>
			</div>
		</div>
	</div>
		<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left">자바&nbsp;<small>이홍석</small></div>
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
					종합<span style=color:red;">A</span>
					성적<span style=color:red;">B</span>
					강의력<span style=color:red;">C</span>
					<span style="color:green;">(추천:15)</span>
				</div>
				<div class="col-3 text-right">
					<a onclick="return confirm('추천하시겠습니까?)" href="./likeAction.jsp?evaluationID=">추천</a>
					<a onclick="return confirm('삭제하시겠습니까?)" href="./deleteAction.jsp?evaluationID=">삭제</a>
				</div>
			</div>
		</div>
	</div>
	</section>


  <!-- Footer -->
  <footer class="py-5 bg-uos">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; 2019 by KLlCK</p>
    </div>
    <!-- /.container -->
  </footer>
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>