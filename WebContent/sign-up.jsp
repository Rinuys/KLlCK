<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
  <title>KLlCK</title>    
  <!-- 커스텀css추가 -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="css/style.css">
    <!-- 부트스트랩 css추가 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
<style>
@media ( min-width : 300px) {
	.container {
		padding-right: 50px;
		padding-left: 50px;
		margin-right: auto;
		margin-left: auto;
		width: 600px;	}
html, body {
  height: 100%;
}

body {
  display: grid;
  font-family: "Open Sans", sans-serif;
  font-size: 16px;
  backgound-color:gray;
}

.rdo{
  margin: auto;
  -webkit-user-select: none;
  user-select: none;
  cursor: pointer;
  }
.cbx {
  margin: auto;
  -webkit-user-select: none;
  user-select: none;
  cursor: pointer;
}
.cbx span {
  display: inline-block;
  vertical-align: middle;
  transform: translate3d(0, 0, 0);
}
.cbx span:first-child {
  position: relative;
  width: 18px;
  height: 18px;
  border-radius: 3px;
  transform: scale(1);
  vertical-align: middle;
  border: 1px solid #9098A9;
  transition: all 0.2s ease;
}
.cbx span:first-child svg {
  position: absolute;
  top: 3px;
  left: 2px;
  fill: none;
  stroke: #FFFFFF;
  stroke-width: 2;
  stroke-linecap: round;
  stroke-linejoin: round;
  stroke-dasharray: 16px;
  stroke-dashoffset: 16px;
  transition: all 0.3s ease;
  transition-delay: 0.1s;
  transform: translate3d(0, 0, 0);
}
.cbx span:first-child:before {
  content: "";
  width: 100%;
  height: 100%;
  background: #506EEC;
  display: block;
  transform: scale(0);
  opacity: 1;
  border-radius: 50%;
}
.cbx span:last-child {
  padding-left: 8px;
}
.cbx:hover span:first-child {
  border-color: #506EEC;
}

.inp-cbx:checked + .cbx span:first-child {
  background: #506EEC;
  border-color: #506EEC;
  animation: wave 0.4s ease;
}
.inp-cbx:checked + .cbx span:first-child svg {
  stroke-dashoffset: 0;
}
.inp-cbx:checked + .cbx span:first-child:before {
  transform: scale(3.5);
  opacity: 0;
  transition: all 0.6s ease;
}

@keyframes wave {
  50% {
    transform: scale(0.9);
  }
}


</style>



</head>
  <body>
  <div class="container">
    <form action="./userSignUpAction.jsp" method="post">
      <div class="row-ml-10-mr-10">
        <h4>계정생성</h4>
          <input type="text" name="userID" placeholder="아이디" class="mb-1" />
          <input type="text" name="userNick" placeholder="닉네임" class="mb-1" />
          <input type="password" name="userPassword" placeholder="비밀번호" class="mb-1"/>
          <input type="password" name="userPasswordConfirm" placeholder="비밀번호재입력" class="mb-1"/>
          <input type="email" name="userEmail" placeholder="이메일" class="mb-1"/>
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
		<input type="text" name="userBirth" placeholder="생년월일(ex:950827)" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'>
      </div>
        </div>
        <div class="col-half">
          <h4>성별</h4>
          <div class="input-group rdo">
            <input type="radio" name="userGender" value="male" id="male"/>
            <label for="male">남자</label>
            <input type="radio" name="userGender" value="female" id="female"/>
            <label for="female">여자</label>
          </div>
        </div>
      </div>

      <div class="row-ml-10-mr-10">
        <h4>이용약관</h4>
        <div class="input-group">
        	<textarea id="terms_textArea" readonly="readonly" cols="65" rows="10"><1조>&#10;서울시립대학교 블록체인 동아리&#10;TOMAK의 KLlCK 서비스를 이용하는데 동의합니다.</textarea>
		     <input class="inp-cbx" name="termChecked" id="termChecked" type="checkbox" style="display: none;"/> 
		     <label class="cbx"  for="termChecked"><span> 
		     <svg width="12px" height="10px" viewbox="0 0 12 10">
		      <polyline points="1.5 6 4.5 9 10.5 1"></polyline>
		    </svg></span><span>약관을 읽었으며 이에 동의합니다.</span></label>
				</div>
	      </div>
	      <button class="btn btn-primary my-2 my-sm-0" type="submit">회원가입</button>
	      <button type="button" class="btn btn-secondary" onclick="location.href='index.jsp'">돌아가기</button>
	    </form>
  </div>
  

	<!-- 제이쿼리 자바스크립트 -->
	<script src="./js/jquery.min.js"></script>
		<!-- 파퍼 자바스크립트 -->
	<script src="./js/pooper.js"></script>
		<!-- 부트스트랩 자바스크립트 -->
	<script src="./js/bootstrap.min.js"></script>
  </body>
  </html>
  