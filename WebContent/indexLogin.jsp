<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>KLlCK</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">
  <link href="css/custom.css" rel="stylesheet">
  <style>
  </style>
</head>
<body>
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
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              MY Page
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              <a class="dropdown-item" href="my-status.jsp">내 정보</a>
              <a class="dropdown-item" href="status-modify.jsp">내 정보 변경</a>
              <a class="dropdown-item" href="subscribe.jsp">구독 내역</a>
            </div>
          </li>
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

  <!-- Page Content -->
  <div class="container">

    <h1 class="my-4">최신 강의평</h1>

    <!-- Marketing Icons Section -->
    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">대학영어(W): 하지혜</h4>
          <div class="card-body">
            <p class="card-text">교수님은 친절하시고 좋으신데 중간고사 없는 대신 퀴즈 몇번 보고 에세이 작성하는 과제는 자주 있습니다.</p>
          </div>
          <div class="card-footer">
            <a href="reports.jsp" class="btn btn-primary">다른 강의평 보기</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">스페인어: 박숙희</h4>
          <div class="card-body">
            <p class="card-text">엄청 열정적이신 교수님. 약간 고등학교식 수업? 직접 말하고 적으라는 거 적고 참여 안할 수 없는 수업이다.</p>
          </div>
          <div class="card-footer">
            <a href="reports.jsp" class="btn btn-primary">다른 강의평 보기</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">동양문화의사적이해: 이완석</h4>
          <div class="card-body">
            <p class="card-text">교수님이 굉장히 관대하십니다. 딴짓, 출튀 다 신경 안 쓰시고요.</p>
          </div>
          <div class="card-footer">
            <a href="reports.jsp" class="btn btn-primary">다른 강의평 보기</a>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->

    <!-- Portfolio Section -->
    <br><br><h2>Hot 게시물</h2><br>

    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <div class="card-header">
              <a href="#"><img class="board-profile" src="http://www.localsegye.co.kr/news/data/20181016/p1065594974453059_805_thum.jpg" alt=""><span>닉네임</span></a>
          </div>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">글 제목</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <div class="card-header">
                <a href="#"><img class="board-profile" src="http://www.localsegye.co.kr/news/data/20181016/p1065594974453059_805_thum.jpg" alt=""><span>닉네임</span></a>
            </div>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">글 제목</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
            </div>
          </div>
      </div>
    </div>
    <!-- /.row -->
    <hr>

    <!-- Call to Action Section -->
    <div class="row mb-4">
      <div class="col-md-8">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
      </div>
      <div class="col-md-4">
        <a class="btn btn-lg btn-secondary btn-block" href="#">Call to Action</a>
      </div>
    </div>

  </div>
  <!-- /.container -->

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