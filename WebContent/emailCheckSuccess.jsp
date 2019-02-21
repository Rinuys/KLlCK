<%@page import="user.UserDAO"%>
<%@page import="user.UserDTO"%>
<%@page import="board.BoardDAO"%>
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
						System.out.println(emailCheckUserDAO.getUserEmailChecked(userID));
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
  <header>
	<section class="container mt-10" style="max-width:560px; margin-top: 150px;">
		<div class="alert alert-success mt-3" role="alert">
			이메일 인증이 완료되었습니다. 다음 링크로 이동해주세요
		</div>
		<a style=""class="btn btn btn-outline-secondary" href="http://kllck.ml/">KLlCK</a>
	</section>
	</header>

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