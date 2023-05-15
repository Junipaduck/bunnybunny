<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2팀 - 계좌 조회 내역</title>
</head>
<body>

<header>
	<jsp:include page="../inc/header.jsp"></jsp:include>
</header>

<!-- 카드 사용 내역 시작 -->
<div class="content">
	<div class="section-inner">
		<div class="subpage-title-area">
			<h2 class="title">My 계좌조회</h2>
			<p class="sub-text">나의 계좌내역을 조회할 수 있습니다.</p>
		</div>
		<!-- 이번 달 총 사용 금액 출력 시작 -->
		<div class="description-list member-box" style="width: 400px; height: 70px; margin-bottom: 30px;">
			<dl>
				<dt tabindex="0" style="width: 200px;">[${member.member_name }홍길동]님의 계좌 총액</dt>
				<dd tabindex="0">100,000,000원</dd>
			</dl>
		</div>
		<!-- 이번 달 총 사용 금액 출력 끝 -->
		<div class="contents-container-wrap">
			<div class="list-content">
			<!-- 카드별 요약 시작 -->
				<button class="btn normal medium" style="margin-bottom: 20px;">계좌 연결 추가하기</button>
				<div class="list-wrapper">
					<div class="list-item card">
						<div class="thumbnail-area" style="width: 125px;">
							<div class="thumbnail" style="width: 125px; height: 80px;">
								<img src="https://visualbank-wp-uploads.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2019/08/hd-kt-tr.png">
							</div>
						</div>
						<div class="description" style="float: left; width: 30%;">
							<h2 class="name">현대카드</h2>
						</div>
						<div class="description" style="width: 30%;">
							<h2 class="info-list" style="margin-top: 0px;">100,000원</h2>
						</div>
						<div class="description" style="float: right; width: 10%;">
							<button class="btn accent small" onclick="location.href='accountDetail.ac'">상세조회</button>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">234-*****-3234</p>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">결제 예정일 : 5월 12일</p>
						</div>
					</div>
					<div class="list-item card">
						<div class="thumbnail-area" style="width: 125px;">
							<div class="thumbnail" style="width: 125px; height: 80px;">
								<img src="https://visualbank-wp-uploads.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2019/08/tello-new-tr.png">
							</div>
						</div>
						<div class="description" style="float: left; width: 30%;">
							<h2 class="name">롯데카드</h2>
						</div>
						<div class="description" style="width: 30%;">
							<h2 class="info-list" style="margin-top: 0px;">50,000원</h2>
						</div>
						<div class="description" style="float: right; width: 10%;">
							<button class="btn accent small" onclick="location.href='accountDetail.ac'">상세조회</button>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">134-*****-3233</p>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">결제 예정일 : 5월 12일</p>
						</div>
					</div>
					<div class="list-item card">
						<div class="thumbnail-area" style="width: 100px;">
							<div class="thumbnail" style="width: 100px; height: 80px;">
								<img src="https://visualbank-wp-uploads.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2017/08/taptapo.png">
							</div>
						</div>
						<div class="description" style="float: left; width: 30%; margin-left: 85px;">
							<h2 class="name">삼성카드</h2>
						</div>
						<div class="description" style="width: 30%;">
							<h2 class="info-list" style="margin-top: 0px;">80,000원</h2>
						</div>
						<div class="description" style="float: right; width: 10%;">
							<button class="btn accent small" onclick="location.href='accountDetail.ac'">상세조회</button>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px; margin-left: 26px;">970-*****-5685</p>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px; margin-left: 26px;">결제 예정일 : 5월 15일</p>
						</div>
					</div>
					<div class="list-item card">
						<div class="thumbnail-area" style="width: 100px;">
							<div class="thumbnail" style="width: 100px; height: 80px;">
								<img src="https://visualbank-wp-uploads.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2017/09/card_2014_1.jpg">
							</div>
						</div>
						<div class="description" style="float: left; width: 30%; margin-left: 85px;">
							<h2 class="name">신한카드</h2>
						</div>
						<div class="description" style="width: 30%;">
							<h2 class="info-list" style="margin-top: 0px;">70,000원</h2>
						</div>
						<div class="description" style="float: right; width: 10%;">
							<button class="btn accent small" onclick="location.href='accountDetail.ac'">상세조회</button>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px; margin-left: 26px;">573-*****-7845</p>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px; margin-left: 26px;">결제 예정일 : 5월 15일</p>
						</div>
					</div>
				</div>
				<!-- 카드별 요약 끝 -->
			</div>
		</div>
	</div>
</div>
<!-- 카드 사용 내역 끝 -->



<!-- 카드 추천 / 이벤트 시작 -->
<div class="content">
	<div class="section-inner">
		이벤트 / 광고 파트
	</div>
</div>
<!-- 카드 추천 / 이벤트 끝 -->



<footer>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
</footer>
</body>
</html>
 