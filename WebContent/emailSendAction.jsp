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
		script.println("alert('�α����� ���ּ���.');");
		script.println("location.href = 'login.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	boolean emailChecked = userDAO.getUserEmailChecked(userID);
	if(emailChecked){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�̹� ������ ȸ���Դϴ�.');");
		script.println("location.href = 'index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	
	String host = "http://210.89.191.71:8080/KLlCK/";
	String from = "KLlCK.tomak0@gmail.com";
	String to = userDAO.getUserEmail(userID);
	String subject = "�����򰡸� ���� �̸��� ���������Դϴ�.";
	String content = "���� ��ũ�� �����Ͽ� �̸��� ������ �����ϼ���." + "<a href='" + host + "emailCheckAction.jsp?code=" + new SHA256().getSHA256(to) + "'>�̸��� �����ϱ�</a>";
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
			script.println("alert('������ �߻��߽��ϴ�.');");
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
	<title>������ �� ����Ʈ</title>
	<!-- ��Ʈ��Ʈ�� css�߰� -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- Ŀ����css�߰� -->
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
      <label class="mt-3" style="color:white"><%=checkBoardDAO.getUserNick(userID) %>�� �ȳ��ϼ���!</label>
      <%} %>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="class-evaluate.jsp">������</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="reports.jsp">���� / ����Ʈ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="board.jsp">�Խ���</a>
          </li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						MY Page </a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
						<a class="dropdown-item" href="my-status.jsp">�� ����</a> 
						<a class="dropdown-item" href="status-modify.jsp">�� ���� ����</a> 
						<a class="dropdown-item" href="subscribe.jsp">���� ����</a>
						<%
						if(!emailCheckUserDAO.getUserEmailChecked(userID)){
						%>
						<a class="dropdown-item" href="emailSendAction.jsp">�̸��� �����ϱ�</a>
						<%
						}
						%>
						<a class="dropdown-item" href="userLogoutAction.jsp">�α׾ƿ�</a>
				</div>
			</li>

			</ul>
		</div>
    </div>
  </nav>
  
  <header>
	<section class="container mt-10" style="max-width:560px; margin-top: 150px;">
		<div class="alert alert-success mt-3" role="alert">
			�̸��� �ּ� ���� ������ ���۵Ǿ����ϴ�. ȸ�����Խ� �Է��ߴ� �̸��Ͽ� ���� Ȯ���ϼ���.
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