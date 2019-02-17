<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">

<style>
.btn-login {
	font-size: 0.9rem;
	letter-spacing: 0.05rem;
	padding: 0.75rem 1rem;
	border-radius: 2rem;
}
</style>
</head>

<body>


	<div class="container">
		<form>
			<div class="row">
				<h4>비밀번호 찾기</h4>
				<div class="input-group input-group-icon">
					<input type="text" placeholder="닉네임" />
					<div class="input-icon">
						<i class="fa fa-user"></i>
					</div>
				</div>
				<div class="input-group input-group-icon">
					<input type="password" placeholder="이메일" />
					<div class="input-icon">
						<i class="fa fa-key"></i>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-half">
					<h4>인증번호</h4>
					<div class="input-group">

						<div class="col-third">

							<style>
.col-third {
	width: 77.666666%;
}
</style>
							<input type="text" placeholder="6자리 숫자 입력" />
						</div>
					</div>
				</div>
				<div class="col-half"></div>
			</div>

			<div class="row">
				<h4>이용약관</h4>
				<div class="input-group">
					<input type="checkbox" id="terms" /> <label for="terms">약관을
						읽었으며 이에 동의합니다.</label>
				</div>
				<button
					class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2"
					type="submit">Confirm</button>
			</div>
		</form>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>



	<script src="js/index.js"></script>




</body>

</html>
