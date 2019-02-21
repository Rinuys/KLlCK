<%@page import="user.UserDTO"%>
<%@page import="board.BoardDAO"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@page import="util.SHA256"%>
<%@page import="util.Gmail"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	UserDAO userDAO = new UserDAO();
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요.');");
		script.println("location.href = 'login.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	boolean emailChecked = userDAO.getUserEmailChecked(userID);
	if(emailChecked){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 인증된 회원입니다.');");
		script.println("location.href = 'index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	
	String host = "http://210.89.191.71:8080/KLlCK/";
	String from = "KLlCK.tomak0@gmail.com";
	String to = userDAO.getUserEmail(userID);
	String subject = "강의평가를 위한 이메일 인증메일입니다.";
	String content = "다음 링크에 접속하여 이메일 인증을 진행하세요." + "<a href='" + host + "emailCheckAction.jsp?code=" + new SHA256().getSHA256(to) + "'>이메일 인증하기</a>";
	Properties p =new Properties();
	p.put("mail.smtp.user", from);
	p.put("mail.smtp.host", "smtp.googlemail.com");
	p.put("mail.smtp.port", "465");
	p.put("mail.smtp.starttls.enable", "true");
	p.put("mail.smtp.auth", "true");
	p.put("mail.smtp.debug", "true");
	p.put("mail.smtp.socketFactory.port", "465");
	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	p.put("mail.smtp.socketFactory.fallback", "false");
	
	try{
		Authenticator auth = new Gmail();
		Session ses = Session.getInstance(p,auth);
		ses.setDebug(true);
		MimeMessage msg = new MimeMessage(ses);
		msg.setSubject(subject);
		Address fromAddr = new InternetAddress(from);
		msg.setFrom(fromAddr);
		Address toAddr = new InternetAddress(to);
		msg.addRecipient(Message.RecipientType.TO, toAddr);
		msg.setContent(content, "text/html;charset=UTF-8");
		Transport.send(msg);
		}catch(Exception e){
			e.printStackTrace();
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('오류가 발생했습니다.');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}

	%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>강의평가 웹 사이트</title>
	<!-- 부트스트랩 css추가 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- 커스텀css추가 -->
	<link rel="stylesheet" href="./css/custom.css">
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

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

			</ul>
		</div>
    </div>
  </nav>
  
  <header>
	<section class="container mt-10" style="max-width:560px; margin-top: 150px;">
		<div class="alert alert-success mt-3" role="alert">
			이메일 주소 인증 메일이 전송되었습니다. 회원가입시 입력했던 이메일에 가서 확인하세요.
		</div>
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