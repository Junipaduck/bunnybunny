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
	                        <li><a href="매핑주소를입력하시오">챗봇상담</a></li>
	<!--                         <li><a href="https://www.happypointcard.com/page/customer/faq.spc">FAQ</a></li> -->
	                        <li><a href="noticeList.no">공지사항</a></li>
	                        <li><a href="매핑주소를입력하시오">팁게시판</a></li>
	<!--                         <li><a href="https://www.happypointcard.com/page/customer/term.spc">이용약관</a></li> -->
	                    </ul>
	                </li>
	                <li class="card"><a href="매핑주소를입력하시오"><i class="icon-card"></i>카드등록</a></li>
	            </ul>
	        </div>
	        <div class="header-primary">
	            <h1 class="header-logo"><a href="./" tabindex="-1"><img src="${pageContext.request.contextPath }/resources/images/CleverLogo2.png" width="120px" height="40px"></h1>
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
	    <!-- 전체메뉴 -->
	    <!-- 매핑주소 수정해야함! -->
	    <div class="header-all-menu">
	        <div class="menu-header">
	            <div class="section-inner">
	                <h2 class="memu-title">전체메뉴</h2>
	                <ul class="util-menu">
	                    <li><a href="매핑주소를입력하시오"><i class="icon membership"></i>멤버십라운지</a></li>
	                    <li><a href="매핑주소를입력하시오"><i class="icon store"></i>매장찾기</a></li>
	                </ul>
	                <button type="button" class="btn-close">메뉴닫기</button>
	            </div>
	        </div>
	        <div class="menu-body">
	            <div class="section-inner">
	                <div class="menu-wrapper">
	                    <div class="menu-row">
	                        <div class="menu-asset">
	                            <h3 class="depth01">소개~~~</h3>
	                            <ul class="sub-menu depth02">
	                                <li><a href="매핑주소를입력하시오">아이티윌 2팀</a></li>
	                                <li>
	                                    <a href="매핑주소를입력하시오">2팀</a>
	                                    <ul class="sub-menu depth03">
	                                        <li><a href="매핑주소를입력하시오">2팀</a></li>
	                                        <li><a href="매핑주소를입력하시오">2팀ㅎㅎㅎ</a></li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="menu-row">
	                        <div class="menu-asset">
	                            <h3 class="depth01">상품소개</h3>
	                            <ul class="sub-menu depth02">
	                                <li>
	                                    <a href="매핑주소를입력하시오">여행 목돈 챌린지</a>
	                                    <ul class="sub-menu depth03">
	                                        <li><a href="매핑주소를입력하시오">전체</a></li>
	                                    </ul>
	                                </li>
	                                <li>
	                                    <a href="매핑주소를입력하시오">적금???</a>
	                                    <ul class="sub-menu depth03">
	                                        <li><a href="매핑주소를입력하시오">전체</a></li>
	                                        <li><a href="매핑주소를입력하시오">커피적금</a></li>
	                                    </ul>
	                                </li>
	                                <li>
	                                    <a href="매핑주소를입력하시오">추천카드</a>
	                                    <ul class="sub-menu depth03">
	                                        <li><a href="매핑주소를입력하시오">전체</a></li>
	                                        <li><a href="매핑주소를입력하시오">체크카드</a></li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="menu-row">
	                        <div class="menu-asset">
	                            <h3 class="depth01">이벤트/쿠폰</h3>
	                            <ul class="sub-menu depth02">
	                                <li><a href="매핑주소를입력하시오">진행이벤트</a></li>
	                                <li><a href="매핑주소를입력하시오">당첨자 발표</a></li>
	                                <li><a href="매핑주소를입력하시오">모바일 쿠폰 안내</a></li>
	                            </ul>
	                        </div>
	                        <div class="menu-asset">
	                            <h3 class="depth01">커뮤니티</h3>
	                            <ul class="sub-menu depth02">
	                                <li><a href="매핑주소를입력하시오">자산관리 꿀팁게시판</a></li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="menu-row">
	                        <div class="menu-asset">
	                            <h3 class="depth01">마이페이지</h3>
	                            <ul class="sub-menu depth02">
	                                <li>
	                                    <a href="accountBook.ac">My 가계부</a>
	                                </li>
	                                <li>
	                                    <a href="memberAsset.me">My 자산조회</a>
	                                    <ul class="sub-menu depth03">
	                                        <li><a href="accountInquiry.ac">계좌 조회</a></li>
	                                        <li><a href="cardUsage.ca">카드 조회</a></li>
	                                        <li><a href="insurance.io">보험조회</a></li>
	                                        <li><a href="loan.oa">대출 조회</a></li>
                                        </ul>
	                                </li>
	                                <li><a href="memberConsumption.me">My 소비분석</a></li>
	                                <li><a href="memberBudget.me">My 예산관리</a></li>
	                                <li>
	                                	<a href="memberInformation.me">나의 회원정보</a>
	                                    <ul class="sub-menu depth03">
	                                        <li><a href="https://www.happypointcard.com/page/mypage/card/password.spc">아이디 찾기</a></li>
	                                        <li><a href="https://www.happypointcard.com/page/mypage/card/register.spc">비밀번호 찾기</a></li>
	                                        <li><a href="memberModifyForm.me">회원정보 수정</a></li>
                                        </ul>
                                	</li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="menu-row">
	                        <div class="menu-asset">
	                            <h3 class="depth01">고객센터</h3>
	                            <ul class="sub-menu depth02">
	                                <li><a href="https://www.happypointcard.com/page/customer/qna.spc">Q&A</a></li>
	                                <li><a href="https://www.happypointcard.com/page/customer/faq.spc">FAQ</a></li>
	                                <li><a href="noticeList.no">공지사항</a></li>
	                                <li><a href="https://www.happypointcard.com/page/customer/term.spc">이용약관</a></li>
	                                <li><a href="AdminMain.ad">관리자페이지(임시)</a></li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <!-- //전체메뉴 -->
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
