<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.happypointcard.com/page/main/index.spc by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 May 2023 15:55:05 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, width=device-width, target-densitydpi=medium-dpi">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" type="image/png"  href="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/resources/ha-web/images/shared/favicon.png"/>

    <title>자산관리 2팀</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/css/common9846.css?v=2023051200">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/css/vendors/uniform.custom.css" /> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/plugins/jquery.selectric-1.11.1/selectric.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/plugins/slick-1.8.0/slick.css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/css/dev.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/js/plugins/datepicker-1.0.9/datepicker.min.css"/>

    

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/js/plugins/swiper/swiper.css" />
    <script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/js/plugins/swiper/swiper.min.js"></script>

    <script type="text/javascript">
    (function() {
        var name = 'spc.app.FLASH_MAPS';
        if( get_cookie( name ) ) {
            document.cookie = name + "=;path=/;expires=Thu, 01 Jan 1970 00:00:01 GMT";
        }
        function get_cookie(name){
            return document.cookie.split(';').some(function(c) {
                return c.trim().startsWith(name + '=');
            });
        }
    })();

    </script>
</head>
<body class="">
    <!-- #wrap -->
    <div id="wrap">
        <!-- #container -->
        <div id="container">
            
            
            
            
<!-- 헤더시작 ============================================================================================================================-->
	<header id="header">
	    <div class="section-inner">
	        <div id="skip-menu">
	            <ul class="content-move-menu">
	                <li><a href="#content">본문 바로가기</a></li>
	            </ul>
	        </div>
	        <div class="header-aside">
	            <ul class="header-aside-menu">
	                <li><a href="login.me">로그인</a></li>
	                    <li><a href="joinForm.me">회원가입</a></li>
	<!--                 <li><a href="https://www.happypointcard.com/page/presentation/membership.spc">멤버십라운지</a></li> -->
	<!--                 <li><a href="https://www.happypointcard.com/page/store/search.spc">매장찾기</a></li> -->
	                <li class="csmenu">
	                    <a href="매핑주소를입력하시오">고객센터</a>
	                    <ul class="menu-open">
	                        <li><a href="https://www.happypointcard.com/page/customer/qna.spc">챗봇상담</a></li>
	<!--                         <li><a href="https://www.happypointcard.com/page/customer/faq.spc">FAQ</a></li> -->
	                        <li><a href="noticeList.no">공지사항</a></li>
	                        <li><a href="매핑주소를입력하시오">팁게시판</a></li>
	<!--                         <li><a href="https://www.happypointcard.com/page/customer/term.spc">이용약관</a></li> -->
	                    </ul>
	                </li>
	                <li class="card"><a href="https://www.happypointcard.com/page/mypage/card/register.spc"><i class="icon-card"></i>카드등록</a></li>
	            </ul>
	        </div>
	        <div class="header-primary">
	            <h1 class="header-logo"><a href="./" tabindex="-1">2팀♥</h1>
	            <nav>
	                <ul class="gnb">
	                    <li class="gnb-menu">
	                        <a href="매핑주소를입력하시오" onclick="headerPage.showSubGnb(this);">소개</a>
	                    </li>
	                    <li class="gnb-menu">
	                        <a href="매핑주소를입력하시오" onclick="headerPage.showSubGnb(this);">상품소개</a>
	                    </li>
	                    <li class="gnb-menu">
	                        <a href="매핑주소를입력하시오" onclick="headerPage.showSubGnb(this);">이벤트/쿠폰</a>
	                    </li>
	                    <li class="gnb-menu">
	                        <a href="매핑주소를입력하시오" onclick="headerPage.showSubGnb(this);">커뮤니티</a>
	                    </li>
	                    <li class="gnb-menu">
	                        <a href="javascript:void(0);" onclick="headerPage.showSubGnb(this);">마이페이지</a>
	                        <div class="sub-menu-wrap">
	                            <ul class="sub-gnb">
	                                <li class="sub-menu"><a href="accountBook.ac">My 가계부</a></li>
	                                <li class="sub-menu"><a href="memberAsset.me">My 자산조회</a></li>
	                                <li class="sub-menu"><a href="memberConsumption.me">My 소비분석</a></li>
	                                <li class="sub-menu"><a href="memberBudget.me">My 예산설정</a></li>
	                                <li class="sub-menu"><a href="memberInformation.me">나의 회원 정보</a></li>
	                            </ul>
	                        </div>
	                    </li>
	                </ul>
	            </nav>
	            <button type="button" class="btn-allmenu">전체메뉴</button>
	        </div>
	    </div>
	    <div class="dim-bg"></div>
	</header>
	
	 <!-- 페이지 네비게이션 -->
    <div class="page-navigation">
        <div class="inner">
        </div>
    </div>
<!-- 헤더끝 ============================================================================================================================-->



</div>
</div>
</body>
</html>
