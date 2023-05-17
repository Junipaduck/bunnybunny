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

    <title>자산관리 2팀 - 메인</title>


<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/css/common9846.css?v=2023051200">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/css/vendors/uniform.custom.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/plugins/jquery.selectric-1.11.1/selectric.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/plugins/slick-1.8.0/slick.css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/css/dev.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/js/plugins/datepicker-1.0.9/datepicker.min.css"/>
 <!-- 부트스트랩 css 링크 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 

    

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

 	<header>
		<jsp:include page="inc/header.jsp"></jsp:include>
	</header>

<!-- 해피포인트 제휴 쇼핑몰 안내 #popupPartnerShopping -->
<div class="layer-popup basic-popup small partner-popup partner-shopping-popup" id="popupPartnerShopping">
    <form>
        <div class="popup-wrapper">
            <div class="popup-inner">
                <div class="popup-body">
                    <div class="popup-content">
                        <div class="title-header">
                            <div class="icon"><img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/partner/icon-popup-shopping.png" alt="해피포인트 제휴 쇼핑몰 안내"></div>
                            <h3 class="title">해피포인트 제휴 쇼핑몰 안내</h3>
                            <p class="info-text">해피포인트 사이트를 통해<br> 제휴 쇼핑몰을 방문하셔서 상품을 구매하시면, <br>추가 해피포인트를 적립해드려요.</p>
                            <p class="sub-text">적립 대상 상품은 각 제휴 쇼핑몰의<br> 운영 정책에 따라 변경 될 수 있습니다.</p>
                        </div>
                        <div class="bottom-btn-group half">
                            <a href="javascript:void(0);" class="btn medium normal btn-close">취소</a>
                            <a href="javascript:headerPage.layer_popup_3()" class="btn medium accent">사이트 이동</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<div class="layer_popup" id="agreement"></div>

<form name="headerForm" id="headerForm" method="post" action="https://www.happypointcard.com/page/alliance/gate-check.spc" target="_blank">
    <input type="hidden" name="code" id="code"/>
    <input type="hidden" name="storeCd" id="storeCd"/>
    <input type="hidden" name="W_RURL" id="W_RURL"/>
    <input type="hidden" name="W_MEMBER_NO" value=""/>
    <input type="hidden" name="W_USER_ID" value=""/>
    <input type="hidden" name="pageCd" id="pageCd"/>
</form>


<!-- #content -->
            <div id="content" class="content">
                

<!-- 키비주얼 -->
<section class="main-section main-keyvisual-section">
    <div class="main-keyvisual-slider">
        <div class="swiper-container">
            <div class="swiper-wrapper">
 					 <div class="swiper-slide banner-hit" style="background-image: url(${pageContext.request.contextPath }/resources/images/main11.png" data-bannerid="10001"></div>
<%--                		 <div class="swiper-slide banner-hit" style="background-image: url(${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/banner/normal/2020110509470336271811046109.png)" onclick="location.href='https://www.happypointcard.com/page/presentation/point.spc'" data-bannerid="10001"></div> --%>
<%--                 <div class="swiper-slide banner-hit" style="background-image: url(${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/banner/normal/2020110502481711145321665417.png)" onclick="location.href='https://www.happypointcard.com/page/presentation/app.spc'" data-bannerid="10000"></div> --%>
<%--  					 <div class="swiper-slide banner-hit" style="background-image: url(${pageContext.request.contextPath }/resources/images/main2.png" data-bannerid="10001"></div> --%>
                </div>
            <div class="slider-controller-area">
                <div class="paging">
                    <span class="current"></span><span class="slash">/</span><span class="total"></span>
                </div>
                <button type="button" class="btn-controller pause" title="시작/정지">시작/정지</button>
            </div>
            <div class="swiper-button-next" title="다음"></div>
            <div class="swiper-button-prev" title="이전"></div>
        </div>
    </div>
</section>
<!-- //키비주얼 -->

<!-- 중고상품리스트 -->

<!-- 중고상품리스트 -->

<!-- 상품리스트 인클루드 -->
<jsp:include page="sale_product_list.jsp"></jsp:include>

<!-- 제휴 영역-->
<section class="main-section main-partner-section">
    <div class="section-inner">
        <div class="main-section-title white">
            <h2 class="title">여긴 뉴스 ?</h2>
            <p class="sub-text">해피포인트 카드의 혜택을 똑같이 누리세요.</p>
            <a href="https://www.happypointcard.com/page/alliance/corporation.spc" class="btn-more" title="더보기">더보기</a>
        </div>
        <ul class="partner-list">
            <li class="item">
                    <a href="https://daem.t-monet.com/event/ext/landing?os=10" target="_blank" title="제휴사이트 새창열기">
                        <div class="logo" style="height: 150px"><img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/aliance/company/2022110710575153549164256718789.jpg" alt="댐댐" class="center-mode"></div>
                        <div class="desc">
                            <h3 class="name">댐댐ㅋㅋㅋ</h3>
                            <p class="benefit">포인트 전환 가능</p>
                            <div class="partner-company-area">
                                <div class="partner-logo-area">
                                    <div class="partner-logo">
                                        <img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/aliance/company/2022110710575253549164871265602.png" alt="댐댐" class="center-mode">
                                    </div>
                                </div>
                                <span class="partner-name">댐댐ㅋㅋ</span>
                            </div>
                        </div>
                    </a>
                </li>
            <li class="item">
                    <a href="https://www.booknlife.com/hp/noticeDetail.do?NOTICE_ID=1472" target="_blank" title="제휴사이트 새창열기">
                        <div class="logo" style="height: 150px"><img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/aliance/company/2022102714361252611865412914848.jpg" alt="북앤라이프" class="center-mode"></div>
                        <div class="desc">
                            <h3 class="name">북앤라이프</h3>
                            <p class="benefit">포인트 전환 가능</p>
                            <div class="partner-company-area">
                                <div class="partner-logo-area">
                                    <div class="partner-logo">
                                        <img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/aliance/company/2022102711144952599781964586626.png" alt="북앤라이프" class="center-mode">
                                    </div>
                                </div>
                                <span class="partner-name">북앤라이프</span>
                            </div>
                        </div>
                    </a>
                </li>
            <li class="item">
                    <a href="https://vo.la/NEayKT" target="_blank" title="제휴사이트 새창열기">
                        <div class="logo" style="height: 150px"><img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/aliance/company/2022102510012852422580856133104.jpg" alt="헤이폴 폴닢" class="center-mode"></div>
                        <div class="desc">
                            <h3 class="name">헤이폴 폴닢</h3>
                            <p class="benefit">포인트 전환 가능</p>
                            <div class="partner-company-area">
                                <div class="partner-logo-area">
                                    <div class="partner-logo">
                                        <img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/aliance/company/2022102512045852429990777776266.png" alt="헤이폴 폴닢" class="center-mode">
                                    </div>
                                </div>
                                <span class="partner-name">헤이폴 폴닢</span>
                            </div>
                        </div>
                    </a>
                </li>
            <li class="item">
                    <a href="https://vo.la/UCZcHu" target="_blank" title="제휴사이트 새창열기">
                        <div class="logo" style="height: 150px"><img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/aliance/company/2022103117444652968779435682957.jpg" alt="KB포인트리" class="center-mode"></div>
                        <div class="desc">
                            <h3 class="name">KB포인트리</h3>
                            <p class="benefit">포인트 전환 가능</p>
                            <div class="partner-company-area">
                                <div class="partner-logo-area">
                                    <div class="partner-logo">
                                        <img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/aliance/company/2022102512032052429893007269894.png" alt="KB포인트리" class="center-mode">
                                    </div>
                                </div>
                                <span class="partner-name">KB포인트리</span>
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
    </div>
</section>
<!-- //제휴 영역-->







	<footer>
  		<jsp:include page="inc/footer.jsp"></jsp:include>
    </footer>


</body>
</html>
