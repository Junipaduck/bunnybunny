<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해피포인트 - 로그인</title>
</head>
<body>
<script type="text/javascript">
function doKakaoLogin() {
    location.href = "https://kauth.kakao.com/oauth/authorize?client_id=17cca8149886e3a10cca266bef314925&redirect_uri=http://192.168.3.123:8089/FoodCode/kakao&response_type=code&scope=account_email";
    		}
</script>

	<header>
		<jsp:include page="../inc/header.jsp"></jsp:include>
	</header>


	<!-- 중간 작업공간 시작 ============================================================== -->
	
	<!-- PC 로그인 -->
<div class="member-content login-content login-index-content">
    <!-- //페이지 네비게이션 -->
    <div class="section-inner">
        <h2 class="page-title">로그인</h2>
        <div class="small-layout-inner">
            <p class="page-subTitle">안녕하세요, 2팀 입니다</p>
            <form id="loginForm" name="loginForm" action="https://nsso.happypointcard.com/LoginServlet">
                <input type="hidden" id="method" name="method" value="idpwProcessEx"/>
                <input type="hidden" name="ssid" value="91"/>
                <fieldset class="fieldset row">
                    <legend>로그인</legend>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <input type="text" placeholder="아이디" title="아이디 입력" id="id" name="id" value="">
                                <div class="input-element">
                                    <button type="button" class="btn-value-delete" tabindex="-1">입력값 삭제</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <input type="password" placeholder="비밀번호(숫자, 영문, 특수문자 조합 8~16자리)" title="비밀번호 입력" id="pw" name="pw" maxlength="16">
                                <div class="input-element">
                                    <button type="button" class="btn-value-delete" tabindex="-1">입력값 삭제</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="selector-wrap">
                        <ul class="login-assist-list">
                            <li><a href="/page/member-info/find-id-pw-form.spc?findType=id" title="아이디 찾기">아이디 찾기</a></li>
                            <li><a href="/page/member-info/find-id-pw-form.spc?findType=pw" title="비밀번호 찾기">비밀번호 찾기</a></li>
                        </ul>
                    </div>
                    <div class="btn-group wide">
                        <button type="submit" class="btn medium accent">로그인</button>
                    </div>
                   	  <!-- 카카오, 네이버 로그인 -->
                   	  <div style="margin-top: 10px;">
			              <img src="${pageContext.request.contextPath }/resources/images/kakaoBtn.png" onclick="doKakaoLogin()" style="width: 40px; height: 40px; margin-right: 13px;">
			              <img src="${pageContext.request.contextPath }/resources/images/naverBtn.png" onclick="doKakaoLogin()" style="width: 40px; height: 40px;">
			              <br><small>카카오톡</small><small>　　네이버</small>
                	  </div>
                </fieldset>
            </form>
            <div class="simple-login-banner">
                <a target="_blank" href="https://sepay.org/spm/join?regSiteCode=RF&ctgCode=1&subCode=1">
                	<img src="https://front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/member/simple-login.png" alt="휴대폰번호 간편로그인">
                </a>
            </div>
        </div>
    </div>
</div>
<!-- //PC 로그인 -->
	
	
	
	<!-- 중간 작업공간 끝 ============================================================== -->


 	<footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
    </footer>
  
</body>
</html>
 