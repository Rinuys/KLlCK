<%@page import="user.UserDAO"%>
<%@page import="user.UserDTO"%>
<%@page import="board.BoardDAO"%>
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
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
  
    <!-- Custom styles for this template -->
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

    	<%
    		BoardDAO checkBoardDAO = new BoardDAO();
    		UserDAO emailCheckUserDAO = new UserDAO();
    	%>
<!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-uos fixed-top">
    <div class="container">
      <a class="navbar-brand logo" href="index.jsp">KLlCK</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <%if(userID != null){ %>
      <label class="mt-3" style="color:white"><%=checkBoardDAO.getUserNick(userID) %>님 안녕하세요!</label>
      <%} %>
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
						<%
						if(!emailCheckUserDAO.getUserEmailChecked(userID)){
						%>
						<a class="dropdown-item" href="emailSendAction.jsp">이메일 인증하기</a>
						<%
						}
						%>
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
  
    <!-- Page Content -->
    <div class="container">
  
      <!-- Page Heading/Breadcrumbs -->
      <br>
      <h1 class="mt-4 mb-3">족보 / 레포트 
      </h1>
  
      <ol class="breadcrumb">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            선택
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
            <a class="dropdown-item" href="test.jsp">족보</a>
            <a class="dropdown-item" href="reports.jsp">레포트</a>
          </div>
        </li>
      </ol>
  
      <!-- Project One -->
      <div class="row">
        <div class="col-md-7">
        <style>
          .col-md-7 {
            max-width: 15%;
          }
        </style>
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
        <style>
          .img-fluid rounded mb-3 mb-md-0 "src="http://placehold.it/700x300" alt=" {
            max-width: 50%;
            height: 150%;
          }
        </style>
        <style>
          .img-fluid {
            height: 100%;
          }
        </style>
          </a>
        </div>
        <div class="col-md-5">
      <style>
       .col-md-5{flex: 15%; max-width: 120%;}</style>
          <h3>Project One</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
          <a class="btn btn-primary" href="#">View Project
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
        </div>
      </div>
      <!-- /.row -->
  
      <hr>
  
      <!-- Project Two -->
      <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Project Two</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, odit velit cumque vero doloremque repellendus distinctio maiores rem expedita a nam vitae modi quidem similique ducimus! Velit, esse totam tempore.</p>
          <a class="btn btn-primary" href="#">View Project
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
        </div>
      </div>
      <!-- /.row -->
  
      <hr>
  
      <!-- Project Three -->
      <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Project Three</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, temporibus, dolores, at, praesentium ut unde repudiandae voluptatum sit ab debitis suscipit fugiat natus velit excepturi amet commodi deleniti alias possimus!</p>
          <a class="btn btn-primary" href="#">View Project
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
        </div>
      </div>
      <!-- /.row -->
  
      <hr>
  
      <!-- Project Four -->
      <div class="row">
  
        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Project Four</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, quidem, consectetur, officia rem officiis illum aliquam perspiciatis aspernatur quod modi hic nemo qui soluta aut eius fugit quam in suscipit?</p>
          <a class="btn btn-primary" href="#">View Project
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
        </div>
      </div>
      <!-- /.row -->
  
      <hr>
  
      <!-- Pagination -->
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>
  
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
  		<!-- 제이쿼리 자바스크립트 -->
	<script src="./js/jquery.min.js"></script>
		<!-- 파퍼 자바스크립트 -->
	<script src="./js/pooper.min.js"></script>
		<!-- 부트스트랩 자바스크립트 -->
	<script src="./js/bootstrap.min.js"></script>
  </body>
  
  </html>