<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 나의 회원정보</title>
</head>
<body>

	<header>
		<jsp:include page="../inc/header.jsp"></jsp:include>
	</header>


	<!-- 중간 작업공간 시작 ============================================================== -->
		
	<!-- 회원정보 -->
	<div class="member-content member-info-content info-index">
	    <!-- 페이지 네비게이션 -->
	    <div class="page-navigation">
	        <div class="inner">
	            <span class="path"><a href="./">Home</a></span>
	            <span class="path"><a href="/page/member-info/index.spc">회원정보</a></span>
	        </div>
	    </div>
	
	    <!-- //페이지 네비게이션 -->
	    <div class="section-inner">
	        <div class="subpage-title-area">
	            <h2 class="title">반가워요 고객님.</h2>
	            <p class="sub-text">혹시 이 기능을 찾으셨나요?<br/>원하시는 방법을 선택해 서비스를 이용하실 수 있어요!</p>
	        </div>
	        <div class="medium-layout-inner">
	            <!-- 회원 간편메뉴 모음 -->
	            <ul class="member-easy-menu">
	                <li>
	                    <a href="javascript:page.confirmAndMove('/page/member-info/find-id-pw-form.spc?findType=id', 'logout')">
	                        <div class="ico-img">
	                            <img src="https://front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/member/ico-id-search.png" alt="아이디 찾기 이미지"/>
	                        </div>
	                        <p>아이디 찾기</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="javascript:page.confirmAndMove('/page/member-info/find-id-pw-form.spc?findType=pw', 'logout')">
	                        <div class="ico-img">
	                            <img src="https://front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/member/ico-pw-search.png" alt="비밀번호 찾기 이미지"/>
	                        </div>
	                        <p>비밀번호 찾기</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="memberModifyForm.me">
	                        <div class="ico-img">
	                            <img src="https://front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/member/ico-info-change.png" alt="회원정보 수정 이미지"/>
	                        </div>
	                        <p>회원정보 수정</p>
	                    </a>
	                </li>
	            </ul>
	            <!-- 회원탈퇴 -->
	            <div class="withdraw-area">
	                <p class="question">서비스 이용을 더 이상 원치 않으신가요?</p>
	                <a href="javascript:page.confirmAndMove('/page/member-info/confirm-pw-form.spc?redirectUrl=/page/member-info/withdrawal-form.spc&title=widthraw', 'login')" class="btn-arrow">
	                    회원탈퇴<i class="ico right small"></i>
	                </a>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- //회원정보 -->
	
	
	
	<!-- 중간 작업공간 끝 ============================================================== -->


 	<footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
    </footer>
  
</body>
</html>