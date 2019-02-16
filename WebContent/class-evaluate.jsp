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
            <li class="nav-item active">
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

    <!-- Page Content -->
      <br><br>
      
        <div style='display:inline;float:left;width:200px; margin:10px;'>
        <div class="col- mb-4">
        <div class="list-group">
          <a href="my-status.jsp" class="list-group-item">내 정보</a>
          <a href="status-modify.jsp" class="list-group-item">내 정보 변경</a>
          <a href="subscribe.jsp" class="list-group-item">구독 내역</a>        
        </div>
      </div>
      </div>
      
      
      <div style='display:inline;float:left;width:1000px; margin:10px;'>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active">강의평</li>
        </ol>
    
        <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
          <div class="card">
            <div class="card-header" role="tab" id="headingOne">
              <h5 class="mb-0">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">강좌명1</a>
              </h5>
            </div>
            <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
              <div class="card-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
              </div>
            </div>
          </div>
          
          <div class="card">
            <div class="card-header" role="tab" id="headingTwo">
              <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">강좌명2</a>
              </h5>
            </div>
            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
              <div class="card-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
              </div>
            </div>
          </div>
          
          <div class="card">
            <div class="card-header" role="tab" id="headingThree">
              <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">강좌명3</a>
              </h5>
            	</div>
            			<div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
              				<div class="card-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
              				</div>
            			</div>
          			</div>
        		</div>
    		</div>
      <!-- /.container -->

  <!-- Footer -->
  <div style='float:left; width:100%'>
  <footer class="py-5 bg-uos">
      <p class="m-0 text-center text-white">Copyright &copy; 2019 by KLlCK</p>
  </footer>
</div>
	<!-- 제이쿼리 자바스크립트 -->
	<script src="./js/jquery.min.js"></script>
		<!-- 파퍼 자바스크립트 -->
	<script src="./js/pooper.min.js"></script>
		<!-- 부트스트랩 자바스크립트 -->
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>