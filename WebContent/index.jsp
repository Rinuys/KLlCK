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

<!-- ��Ʈ��Ʈ�� css�߰� -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<!-- Ŀ����CSS -->
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
						href="class-evaluate.jsp">������</a></li>
					<li class="nav-item"><a class="nav-link" href="reports.jsp">����
							/ ����Ʈ</a></li>
					<li class="nav-item"><a class="nav-link" href="board.jsp">�Խ���</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							MY Page </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="my-status.jsp">�� ����</a> <a
								class="dropdown-item" href="status-modify.jsp">�� ���� ����</a> <a
								class="dropdown-item" href="subscribe.jsp">���� ����</a>
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
				<option value="��ü">��ü</option>
				<option value="����">����</option>
				<option value="����">����</option>
				<option value="��Ÿ">��Ÿ</option>
			</select> <input type="text" name="search" class="form-control mx-1 mt-2"
				placeholder="������ �Է��ϼ���">
			<button type="submit" class="btn btn-primary mx-1 mt-2">�˻�</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal"
				href="#registerModal">����ϱ�</a> <a class="btn btn-danger mx-1 mt-2"
				data-toggle="modal" href="#reportModal">�Ű�</a>
		</form>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						��ǻ�Ͱ���&nbsp;<small>������</small>
					</div>
					<div class="col-4 text-right">
						����<span style="color: red;">A</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					���� ���� ���ǿ���.&nbsp;<small>(2017�� �����б�)</small>
				</h5>
				<p class="card-text">���ǰ� �ʹ� ������ ���� �����ϴ�.</p>
				<div class="row">
					<div class="col-9 text-left">
						����<span style="color: red;"">A</span> ����<span style="color: red;"">B</span>
						���Ƿ�<span style="color: red;"">C</span> <span style="color: green;">(��õ:15)</span>
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('��õ�Ͻðڽ��ϱ�?)"
							href="./likeAction.jsp?evaluationID=">��õ</a> <a
							onclick="return confirm('�����Ͻðڽ��ϱ�?)"
							href="./deleteAction.jsp?evaluationID=">����</a>
					</div>
				</div>
			</div>
		</div>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						��ǻ�����&nbsp;<small>����</small>
					</div>
					<div class="col-4 text-right">
						����<span style="color: red;">A</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					���� ���� ���ǿ���.&nbsp;<small>(2017�� �����б�)</small>
				</h5>
				<p class="card-text">���ǰ� �ʹ� ������ ���� �����ϴ�.</p>
				<div class="row">
					<div class="col-9 text-left">
						����<span style="color: red;"">A</span> ����<span style="color: red;"">B</span>
						���Ƿ�<span style="color: red;"">C</span> <span style="color: green;">(��õ:15)</span>
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('��õ�Ͻðڽ��ϱ�?)"
							href="./likeAction.jsp?evaluationID=">��õ</a> <a
							onclick="return confirm('�����Ͻðڽ��ϱ�?)"
							href="./deleteAction.jsp?evaluationID=">����</a>
					</div>
				</div>
			</div>
		</div>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						�ڹ�&nbsp;<small>��ȫ��</small>
					</div>
					<div class="col-4 text-right">
						����<span style="color: red;">A</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					���� ���� ���ǿ���.&nbsp;<small>(2017�� �����б�)</small>
				</h5>
				<p class="card-text">���ǰ� �ʹ� ������ ���� �����ϴ�.</p>
				<div class="row">
					<div class="col-9 text-left">
						����<span style="color: red;"">A</span> ����<span style="color: red;"">B</span>
						���Ƿ�<span style="color: red;"">C</span> <span style="color: green;">(��õ:15)</span>
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('��õ�Ͻðڽ��ϱ�?)"
							href="./likeAction.jsp?evaluationID=">��õ</a> <a
							onclick="return confirm('�����Ͻðڽ��ϱ�?)"
							href="./deleteAction.jsp?evaluationID=">����</a>
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
					<h5 class="modal-title" id="modal">�򰡵��</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./evaluationRegisterAction.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>���Ǹ�</label> <input type="text" name="lectureName"
									class="form-control" maxlength="20">
							</div>
							<div class="form-group col-sm-6">
								<label>������</label> <input type="text" name="profesosrName"
									class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label>��������</label> <select name="lectureYear"
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
								<label>�����б�</label> <select name="semesterDivide"
									class="form-control">
									<option value="1�б�" selected>1�б�</option>
									<option value="�����б�" selected>�����б�</option>
									<option value="2�б�" selected>2�б�</option>
									<option value="�ܿ��б�" selected>�ܿ��б�</option>
								</select>
							</div>
							<div class="form-group col-sm-4">
								<label>���Ǳ���</label> <select name="lectureDivide"
									class="form-control">
									<option value="����" selected>1����</option>
									<option value="����" selected>����</option>
									<option value="��Ÿ" selected>��Ÿ</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>����</label> <input type="text" name="evalutationTitle"
								class="form-control" maxlength="30">
						</div>
						<div class="form-group">
							<label>����</label>
							<textarea name="evaluationContent" class="form-control"
								maxlength="2048" style="height: 180px;">
							</textarea>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label>����</label> <select name="totalScore" class="form-control">
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
								<label>����</label> <select name="creditScore"
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
								<label>���Ƿ�</label> <select name="lectureScore"
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
								data-dismiss="modal">���</button>
							<button type="submit" class="btn btn-primary">����ϱ�</button>
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
					<h5 class="modal-title" id="modal">�Ű�</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./reportAction.jsp" method="post">
						<div class="form-group">
							<label>����</label> <input type="text" name="reportTitle"
								class="form-control" maxlength="30">
						</div>
						<div class="form-group">
							<label>����</label>
							<textarea name="reportContent" class="form-control"
								maxlength="2048" style="height: 180px;">
							</textarea>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">���</button>
							<button type="submit" class="btn btn-danger">�Ű��ϱ�</button>
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