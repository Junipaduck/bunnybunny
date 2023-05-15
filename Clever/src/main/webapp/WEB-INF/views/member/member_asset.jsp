<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - My 자산조회</title>
<style type="text/css">
</style>
</head>
<body>

	<header>
		<jsp:include page="../inc/header.jsp"></jsp:include>
	</header>


	<!-- 중간 작업공간 시작 ============================================================== -->
	
    <!-- 페이지 네비게이션 -->
    <div class="page-navigation">
            <div class="inner">
                <span class="path"><a href="./" title="홈">Home</a></span>
                <span class="path"><a href="/page/presentation/point.spc" title="My 자산조회">My 자산조회</a></span>
            </div>
        </div>

        <!-- //페이지 네비게이션 -->
        <div class="section-inner">
            <div class="subpage-title-area">
                <h2 class="title">My 자산조회</h2>
                <p class="sub-text">등록된 자산을 조회해보세요~</p>
            </div>
        </div>
        <div class="section-inner">
            <div class="happypoint-list-wrap">
                <!-- 텍스트 언더라인 탭 -->
                <div class="tab-wrapper text-underline">
                    <ul class="tab">
                    </ul>
                </div>
                <div class="happypoint-brand-list-wrap" style="margin-left: 260px;">
                    <ul class="brand-intro-list">
                        <li class="two-per-row">
                            <img src="${pageContext.request.contextPath }/resources/images/통장이미지.png" alt="계좌조회" class="brand-thumb">
                            <!-- 링크 이동인 경우 a태그로 변경, .brand-link 클래스 추가 -->
                            <a href="accountInquiry.ac" class="brand-title brand-link" title="계좌조회">계좌조회</a>
                            <p class="brand-sub">연동된 모든 계좌를 조회하세요~</p>
                            <div class="brand-benefit-mem">
                            </div>
                        </li>
                        <li class="two-per-row">
                            <img src="${pageContext.request.contextPath }/resources/images/카드이미지.png" alt="카드조회" class="brand-thumb">
                            <a href="cardUsage.ca" class="brand-title brand-link" title="카드조회">카드조회</a>
                            <p class="brand-sub">카드를 조회하세요~</p>
                            <div class="brand-benefit-mem">
                            </div>
                        </li>
                    </ul>
                    <ul class="brand-intro-list">
                        <li class="two-per-row">
                            <img src="${pageContext.request.contextPath }/resources/images/보험이미지.png" alt="보험조회" class="brand-thumb">
                            <a href="insurance.io" class="brand-title brand-link" title="보험조회">보험조회</a>
                            <p class="brand-sub">보험료를 조회하세요~</p>
                            <div class="brand-benefit-mem">
                            </div>
                        </li>
                        <li class="two-per-row">
                            <img src="${pageContext.request.contextPath }/resources/images/대출이미지.png" alt="대출조회" class="brand-thumb">
                            <a href="loan.oa" class="brand-title brand-link" title="대출조회">대출조회</a>
                            <p class="brand-sub">대출내역을 조회하세요~</p>
                            <div class="brand-benefit-mem">
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
	
	
	<!-- 중간 작업공간 끝 ============================================================== -->


 	<footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
    </footer>
  
</body>
</html>