<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

#accountUl {
  list-style: none;
}

#accountUl > li {
  float: left;
  margin-right: 4px;
}

#accountUl > li:first-child:before {
  content: " | ";
}

#accountUl > li:after {
  content: " | "
}

</style>

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
		<div class="description-list member-box" style="width: 400px; height: 70px; position: relative; left:300px; top: 40px" >
			<dl>
				<dt tabindex="0" style="width: 200px;">[${member.member_name }홍길동]님의 계좌 총액</dt>
				<dd tabindex="0">172,000,000원</dd>
			</dl>
		</div>
		<!-- 이번 달 총 사용 금액 출력 끝 -->
		<div class="contents-container-wrap">
			<div class="list-content">
			<!-- 카드별 요약 시작 -->
				<button class="btn normal medium" style="margin-bottom: 20px; position: relative; left: 880px;">계좌 연결 추가하기</button>
				<div class="list-wrapper">
				
					<div class="list-item card">
						<div class="thumbnail-area" style="width: 125px;">
							<div class="thumbnail" style="width: 125px; height: 80px;">
								<img style="width: 70px; height: 70px;" src="${pageContext.request.contextPath }/resources/images/카카오뱅크.png">
							</div>
						</div>
						<div class="description" style="float: left; width: 30%;">
							<h2 class="name">카카오뱅크</h2>
						</div>
						<div class="description" style="width: 30%;">
							<h2 class="info-list" style="position: relative; top:20px;">230,000원</h2>
						</div>
						<div class="description" style="float: right; width: 10%;">
							<button class="btn accent small" onclick="location.href='accountDetail.ac'" style="position: relative; top:20px;">상세조회</button>
							<div class="description" style="position:relative; top: 60px; left: -110px; ">
							<ul id="accountUl">
								  <li>모바일</li>
								  <li>이자</li>
								  <li>무서류</li>
							</ul>
						</div>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">111-*****-22224</p>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">개설일 : 2021년 05월 15일</p>
						</div>
						
					</div>
					
					<div class="list-item card">
						<div class="thumbnail-area" style="width: 125px;">
							<div class="thumbnail" style="width: 125px; height: 80px;">
								<img style="width: 70px; height: 70px;" src="${pageContext.request.contextPath }/resources/images/경남은행.png">
							</div>
						</div>
						<div class="description" style="float: left; width: 30%;">
							<h2 class="name">경남은행</h2>
						</div>
						<div class="description" style="width: 30%;">
							<h2 class="info-list" style="position: relative; top:20px;">170,000원</h2>
						</div>
						<div class="description" style="float: right; width: 10%;">
							<button class="btn accent small" onclick="location.href='accountDetail.ac'" style="position: relative; top:20px;">상세조회</button>
							<div class="description" style="position:relative; top: 60px; left: -60px; ">
							<ul id="accountUl">
								  <li>모바일</li>
								  <li>이자</li>
							</ul>
						</div>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">111-*****-22224</p>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">개설일 : 2021년 05월 15일</p>
						</div>
						
					</div>
					
					<div class="list-item card">
						<div class="thumbnail-area" style="width: 125px;">
							<div class="thumbnail" style="width: 125px; height: 80px;">
								<img style="width: 70px; height: 70px;" src="${pageContext.request.contextPath }/resources/images/기업은행.png">
							</div>
						</div>
						<div class="description" style="float: left; width: 30%;">
							<h2 class="name">기업은행</h2>
						</div>
						<div class="description" style="width: 30%;">
							<h2 class="info-list" style="position: relative; top:20px;">1,233,000원</h2>
						</div>
						<div class="description" style="float: right; width: 10%;">
							<button class="btn accent small" onclick="location.href='accountDetail.ac'" style="position: relative; top:20px;">상세조회</button>
							<div class="description" style="position:relative; top: 60px; left: -110px; ">
							<ul id="accountUl">
								  <li>모바일</li>
								  <li>이자</li>
								  <li>무서류</li>
							</ul>
						</div>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">111-*****-22224</p>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">개설일 : 2021년 05월 15일</p>
						</div>
						
					</div>
					
					<div class="list-item card">
						<div class="thumbnail-area" style="width: 125px;">
							<div class="thumbnail" style="width: 125px; height: 80px;">
								<img style="width: 70px; height: 70px;" src="${pageContext.request.contextPath }/resources/images/신한은행.png">
							</div>
						</div>
						<div class="description" style="float: left; width: 30%;">
							<h2 class="name">신한은행</h2>
						</div>
						<div class="description" style="width: 30%;">
							<h2 class="info-list" style="position: relative; top:20px;">710,000원</h2>
						</div>
						<div class="description" style="float: right; width: 10%;">
							<button class="btn accent small" onclick="location.href='accountDetail.ac'" style="position: relative; top:20px;">상세조회</button>
							<div class="description" style="position:relative; top: 60px; left: -110px; ">
							<ul id="accountUl">
								  <li>모바일</li>
								  <li>이자</li>
								  <li>무서류</li>
							</ul>
						</div>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">111-*****-22224</p>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">개설일 : 2021년 05월 15일</p>
						</div>
						
					</div>
					
					<div class="list-item card">
						<div class="thumbnail-area" style="width: 125px;">
							<div class="thumbnail" style="width: 125px; height: 80px;">
								<img style="width: 70px; height: 70px;" src="${pageContext.request.contextPath }/resources/images/우리은행.png">
							</div>
						</div>
						<div class="description" style="float: left; width: 30%;">
							<h2 class="name">우리은행</h2>
						</div>
						<div class="description" style="width: 30%;">
							<h2 class="info-list" style="position: relative; top:20px;">417,000원</h2>
						</div>
						<div class="description" style="float: right; width: 10%;">
							<button class="btn accent small" onclick="location.href='accountDetail.ac'" style="position: relative; top:20px;">상세조회</button>
							<div class="description" style="position:relative; top: 60px; left: -60px; ">
							<ul id="accountUl">
								  <li>모바일</li>
								  <li>이자</li>
							</ul>
						</div>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">111-*****-22224</p>
						</div>
						<div class="description">
							<p class="info-list" style="margin-top: 0px;">개설일 : 2021년 05월 15일</p>
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
 