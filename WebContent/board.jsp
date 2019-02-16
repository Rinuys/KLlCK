<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Modern Business - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">
  <link href="css/custom.css" rel="stylesheet">
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
              <a class="nav-link" href="class-evaluate.jsp">������</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="reports.jsp">���� / ����Ʈ</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="board.jsp">�Խ���</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              MY Page
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              <a class="dropdown-item" href="my-status.jsp">�� ����</a>
              <a class="dropdown-item" href="status-modify.jsp">�� ���� ����</a>
              <a class="dropdown-item" href="subscribe.jsp">���� ����</a>
            </div>
          </li>
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
        <a href="index.jsp">��������</a>
      </li>
    </ol>

    <!-- Intro Content -->
    <div class="row">
      <div class="notice">
        <h2>��������1</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>
        <hr>
      </div>
    </div>
    <div class="row">
        <div class="notice">
          <h2>��������2</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>
          <hr>
        </div>
      </div>
    <!-- /.row -->

    <!-- Team Members -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.jsp">�����Խ���</a>
        </li>
      </ol>
	<form method="get" action="./index.jsp" class="form-inline mt-3">
				<select name="Divide" class="form-control ml-2">
					<option value="devideTime" selected>�ֽż�</option>
					<option value="devideLike">��õ��</option>
				</select>
				<input type="text" name="search" class="form-control " placeholder="������ �Է��ϼ���.">
				<button type="submit" class="btn btn-primary mt-3 mb-3">�˻�</button>
		</form>
		<!-- �����Խ��� �۾��� ��� -->
		<a class="btn btn-primary mx-1 ml-1 mb-2 mt-2" data-toggle="modal" href="#freeRegisterModal">����ϱ�</a>
		<br>
		
		
		
		
		<div class="modal fade" id="freeRegisterModal" tabindex="-1" role="dialog" area-labelledby="modal" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
				<!-- ������ -->
					<div class="modal-header">
						<h5 class="modal-title" id="modal">�����Խ��� �۾���</h5>
						<button type="button" class="close" data-dismiss="modal" area-label="Close">
							<span area-hidden="true">&times;</span>
						</button>	
					</div>
				<!-- ��� �ٵ� -->
					<div class="modal-body">
						<!-- freeBoardResgisterAction.jsp�� �Ѱ���form�±� -->
						<form action"./freeBoardRegisterAction.jsp" method="post">
							<div class="form-row">
								<div class="form-group col-sm-10 ml-3">
									<label>����</label>
									<input type="text" name="freeBoardTitle" class="form-control" maxlength="20" placeholder="������">
								</div>
								<div class="form-group col-sm-10 ml-3">
									<label>�۳���</label>
									<textarea name="freeBoardTitle" class="form-control" style="height:300px" maxlength="2048" placeholder="�۳���"></textarea>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary ml-1">����ϱ�</button>
									<button type="button" class="btn btn-secondary ml-1" data-dismiss="modal">�ݱ�</button>						
								</div>
							</div>
						</form>
					
					</div>
				
				</div>
			</div>
		</div>
		
		
    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100 text-center">

          <div class="card-body">
            <div class="card-body-top">
                <img class="card-profile" src="http://artzone.indiecolaj.com/images/24/dp.jpg" alt="">
                <div class="card-writer">�ۼ���</div>
            </div>
            <div class="card-body-main">
                <p>Lorem ipsum dolor sit amet</p>
            </div> 
          </div>          
        </div>
      </div>

      <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
  
            <div class="card-body">
              <div class="card-body-top">
                  <img class="card-profile" src="http://artzone.indiecolaj.com/images/24/dp.jpg" alt="">
                  <div class="card-writer">�ۼ���</div>
              </div>
              <div class="card-body-main">
                  <p>Lorem ipsum dolor sit amet</p>
              </div> 
            </div>          
          </div>
        </div>

        <div class="col-lg-4 mb-4">
            <div class="card h-100 text-center">
    
              <div class="card-body">
                <div class="card-body-top">
                    <img class="card-profile" src="http://artzone.indiecolaj.com/images/24/dp.jpg" alt="">
                    <div class="card-writer">�ۼ���</div>
                </div>
                <div class="card-body-main">
                    <p>Lorem ipsum dolor sit amet</p>
                </div> 
              </div>          
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

</body>
</html>