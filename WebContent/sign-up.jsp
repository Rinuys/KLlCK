<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <!-- 커스텀css추가 -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="css/style.css">
    <!-- 부트스트랩 css추가 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<style>
		@media (min-width: 300px) {
	  .container {
	    padding-right: 50px;
		padding-left: 50px;
		margin-right: auto;
		margin-left: auto;
	    width: 600px;
	  }
	}
	.terms : not(checkbox){
	}
	</style>


  </head>
  <body>
  <div class="container">
    <form>
      <div class="row-ml-10-mr-10">
        <h4>계정생성</h4>
          <input type="text" placeholder="닉네임" />
          <input type="password" placeholder="비밀번호" />
          <input type="password" placeholder="비밀번호확인" />
          <input type="email" placeholder="이메일" />
      </div>
      <div class="row-ml-10-mr-10">
        <div class="col-half">
          <h4>생년월일</h4>
      <div class="input-group-ml-10-mr-10">
        <script>
function onlyNumber(event){
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        return false;
}
 
function removeChar(event) {
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        event.target.value = event.target.value.replace(/[^0-9]/g, "");
}
</script>
		<input type="text" placeholder="생년월일(ex:950827)" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'>
      </div>
        </div>
        <div class="col-half">
          <h4>성별</h4>
          <div class="input-group">
            <input type="radio" name="gender" value="male" id="gender-male"/>
            <label for="gender-male">남자</label>
            <input type="radio" name="gender" value="female" id="gender-female"/>
            <label for="gender-female">여자</label>
          </div>
        </div>
      </div>
            
      <div class="row-ml-10-mr-10">
        <h4>이용약관</h4>
        <div class="input-group">
        	<textarea id="terms_textArea" readonly="readonly" cols="65" rows="10"><1조>&#10;서울시립대학교 블록체인 동아리&#10;TOMAK의 KLlCK 서비스를 이용하는데 동의합니다.</textarea>
 			 <input class="checkbox" id="terms" type="checkbox"/>
 			 <label for="terms">약관을 읽었으며 이에 동의합니다.</label>
	        </div>
	      </div>
	      <button class="btn btn-primary my-2 my-sm-0" type="submit">회원가입</button>
	    </form>
  </div>
	<!-- 제이쿼리 자바스크립트 -->
	<script src="./js/jquery.min.js"></script>
		<!-- 파퍼 자바스크립트 -->
	<script src="./js/pooper.min.js"></script>
		<!-- 부트스트랩 자바스크립트 -->
	<script src="./js/bootstrap.min.js"></script>
  </body>
  </html>
  