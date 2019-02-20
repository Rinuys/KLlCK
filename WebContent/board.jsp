<%@page import="java.io.PrintWriter"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 공지사항 글코드 : "NOTICE" 자유게시판 글코드 : "FREE" 강의평게시판 글코드 : "EVALUATE" 레포트/족보게시판 글코드 : "REPORT" -->
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
p {
	margin: 20px 0px;
}
</style>
<style>
  
    .notice{
      justify-content: center;
      align-items: flex-start;
      width: 100%;
      padding: 0px 20px 0px 20px;
    }
    .card-body-top{
      display: flex;
      border-bottom: 1px solid black;
      padding-bottom: 7px;
    }
    .card-writer{
      padding: 3px 0px 0px 10px;
    }
    .card-body{
      display: flex;
      flex-direction: column;
      height: 200px;
    }
    .card-body-main{
      display:flex;
      padding-top: 10px;
    }
    .card-profile{
      width:30px;
      height:30px;
    }
  </style>
</head>
<body>
<!-- 로그인 유무 확인 -->
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String searchType = "devideTime";
	String search = "";
	int pageNumber = 0;
	String boardType = "FREE";
	
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
	if(request.getParameter("search") != null){
		search = (String) request.getParameter("search");
	}
	if(request.getParameter("searchType") != null){
		searchType = (String) request.getParameter("searchType");
	}
	if(request.getParameter("boardType") != null){
		boardType = (String) request.getParameter("boardType");
	}
	if(request.getParameter("pageNumber") != null){
		try{
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}catch(Exception e){
			System.out.println("검색페이지오류");
		}
	}
%>

<%
	BoardDAO checkBoardDAO = new BoardDAO();
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
    <br><br><br>
    <!-- Page Heading/Breadcrumbs -->
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="./board.jsp">공지사항</a>
        <!-- 공지사항 글쓰기 모달 -->
		<% 
			if(userID != null){
				if(userID.equals("admin")){
			%>
		<a class="btn btn-info mb-1" data-toggle="modal" href="#noticeRegisterModal">공지사항글쓰기</a>
		<br>
		<%
		}
			}
		%>
      </li>

    </ol>

    <!-- 공지사항 글배열 -->
    <%
	ArrayList<BoardDTO> noticeBoardList = new ArrayList<BoardDTO>();
	noticeBoardList = new BoardDAO().getNoticeList("NOTICE", 0);
	if(noticeBoardList != null){
		for(int i = 0; i < noticeBoardList.size(); i++){
			if(i == 3)break;
			BoardDTO noticeBoard = noticeBoardList.get(i);
    %>
    <div class="row">
      <div class="notice">
        <h2><%=noticeBoard.getBoardTitle() %></h2>
        <p><%=noticeBoard.getBoardContent() %></p>
        <hr>
      </div>
    </div>
	<%
			}
	}
	%>

    <!-- /.row -->

    <!-- Team Members -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="./board.jsp">자유게시판</a>
        </li>
      </ol>
	<form method="get" action="./board.jsp" class="form-inline mt-3 mb-2">
				<select name="searchType" class="form-control ml-2">
				<%
					System.out.println(searchType);
				%>
					<option value="devideTime" <% if(searchType.equals("devideTime")) out.println("selected"); %>>최신순</option>
					<option value="devideLike" <% if(searchType.equals("devideLike")) out.println("selected"); %>>추천순</option>
				</select>
				<input type="text" name="search" class="form-control " placeholder="내용을 입력하세요.">
				<button type="submit" class="btn btn-primary mt-3 mb-3">검색</button>
		</form>
		<!-- 자유게시판 글쓰기 모달 -->
		<% if(userID != null){
			%>
		<a class="btn btn-primary mx-1 ml-1 mb-3 mt-2" data-toggle="modal" href="#freeRegisterModal">글쓰기</a>
		<br>
		<%
		}
		%>
		<!-- 게시판 글 배열 -->
		<%
			ArrayList<BoardDTO> boardList = new ArrayList<BoardDTO>();
			boardList = new BoardDAO().getList(searchType, search, boardType, pageNumber);
			if(boardList != null){
				for(int i = 0; i < boardList.size(); i++){
					if(i == 6)break;
					BoardDTO board = boardList.get(i);
		%>
	<% if(i == 0){
		%>
    <div class="row">
    <%
	}
    %>
    <%
	BoardDAO boardDAO = new BoardDAO();
	%>
      <div class="col-lg-4 mb-4">
        <div class="card h-100 text-center">
          <div class="card-body">
            <div class="card-body-top">
                <img class="card-profile" src="http://artzone.indiecolaj.com/images/24/dp.jpg" alt="">
                <div class="card-writer"><%=boardDAO.getUserNick(board.getUserID())%></div>
            </div>
            <div class="card-body-top">
                <div class="card-writer"><%=board.getBoardTitle() %></div>
            </div>
            <div class="card-body-main">
                <p><%= board.getBoardContent() %></p>
            </div> 
          </div>          
        </div>
      </div>
    <%
    	}
	%>
	</div>
	</div>
	
	<ul class="pagination justify-content-center mt-3">
		<li class="page-item">
		<%
			if(pageNumber <= 0){
				
		%>
		<a class="page-link disabled">이전</a>
		<%
			}else{
		%>
		<a class="page-link" href="./board.jsp?searchType=<%= URLEncoder.encode(searchType, "UTF-8") %>&search=<%= URLEncoder.encode(search, "UTF-8")%>&boardType=<%=URLEncoder.encode(boardType, "UTF-8") %>&pageNumber=<%= pageNumber - 1 %>">이전</a>
		<%
			}
		%>
		</li>
		<li class="page-item">
		<%
			if(boardList.size() < 6){
		%>
			<a class="page-link disabled">다음</a>
		<%
			}else{
		%>
		<a class="page-link" href="./board.jsp?searchType=<%= URLEncoder.encode(searchType, "UTF-8") %>&search=<%= URLEncoder.encode(search, "UTF-8")%>&boardType=<%=URLEncoder.encode(boardType, "UTF-8") %>&pageNumber=<%= pageNumber + 1 %>">다음</a>
		<%
			}
			}
		%>
		</li>
	</ul>
	</body>
	
	
	<!-- 자유게시판 글쓰기 모달 -->
		<div class="modal fade" id="freeRegisterModal" tabindex="-1" role="dialog" area-labelledby="modal" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
				<!-- 모달헤더 -->
					<div class="modal-header">
						<h5 class="modal-title" id="modal">자유게시판 글쓰기</h5>
						<button type="button" class="close" data-dismiss="modal" area-label="Close">
							<span area-hidden="true">&times;</span>
						</button>	
					</div>
				<!-- 모달 바디 -->
					<div class="modal-body">
						<!-- freeBoardResgisterAction.jsp로 넘겨줄form태그 -->
						<form action="./freeBoardRegisterAction.jsp" method="post">
							<div class="form-row">
								<div class="form-group col-sm-10 ml-3  mr-3">
									<label>제목</label>
									<input type="text" name="boardTitle" class="form-control" maxlength="20" placeholder="글제목">
								</div>
								<div class="form-group col-sm-10 ml-3  mr-3">
									<label>글내용</label>
									<textarea name="boardContent" class="form-control" style="height:300px" maxlength="2048" placeholder="글내용"></textarea>
								</div>
								<div class="form-group col-sm-10 ml-3  mr-3">
									<label>해시태그(검색을 빠르게 해줍니다.)</label>
									<textarea name="HashTag" class="form-control" style="height:40px" maxlength="2048" placeholder="#팝니다.#삽니다.#궁금해요.#필요해요."></textarea>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary ml-1">등록하기</button>
									<button type="button" class="btn btn-secondary ml-1" data-dismiss="modal">닫기</button>						
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- 공지사항 글쓰기 모달 -->
		<div class="modal fade" id="noticeRegisterModal" tabindex="-1" role="dialog" area-labelledby="modal" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
				<!-- 모달헤더 -->
					<div class="modal-header">
						<h5 class="modal-title" id="modal">공지사항 글쓰기</h5>
						<button type="button" class="close" data-dismiss="modal" area-label="Close">
							<span area-hidden="true">&times;</span>
						</button>	
					</div>
				<!-- 모달 바디 -->
					<div class="modal-body">
						<!-- freeBoardResgisterAction.jsp로 넘겨줄form태그 -->
						<form action="./noticeBoardRegisterAction.jsp" method="post">
							<div class="form-row">
								<div class="form-group col-sm-10 ml-3 mr-3">
									<label>제목</label>
									<input type="text" name="boardTitle" class="form-control" maxlength="20" style="width:100%" placeholder="글제목">
								</div>
								<div class="form-group col-sm-10 ml-3  mr-3">
									<label>글내용</label>
									<textarea name="boardContent" class="form-control" style="height:300px;width:100%" maxlength="2048" placeholder="글내용"></textarea>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary ml-1">등록하기</button>
									<button type="button" class="btn btn-secondary ml-1" data-dismiss="modal">닫기</button>						
								</div>
							</div>
						</form>
					</div>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>