<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보험조회페이지</title>

	<!-- 부트스트랩 css 링크 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<!-- 부트스트랩 JS -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

	<header>
		<jsp:include page="../inc/header.jsp"></jsp:include>
	</header>


	<!-- 중간 작업공간 시작 ============================================================== -->
	
<div class="content">
	<div class="section-inner">
		<!-- 카드별 총 사용 금액 출력 시작 -->
		<div class="subpage-title-area">
			<h2 class="title" tabindex="0">My 대출 조회</h2>
			<p class="sub-text">나의 대출 내역을 조회할 수 있습니다.</p>
		</div>
		<!-- 카드별 총 사용 금액 출력 끝 -->
		<div class="contents-container-wrap">
			<div class="list-content">
				<!-- 카드 사용내역 시작 -->
				<div class="list-wrapper" style="margin-bottom: 70px;">
				<div class="description-list member-box" style="width: 400px; height: 70px; margin-bottom: 30px;">
						<dl>
							<dt tabindex="0" style="width: 170px;">[${member.member_name }홍길동]님의 일시상환금</dt>
							<dd tabindex="0">230,000,000원</dd>
						</dl>
					  </div>
					<!-- 셀렉트박스 시작 -->
					<div class="select-wrapper" style="margin-top: 70px; margin-left: 800px;">
	                    <select name="q.cardCorporation" class="select-tric medium type2 _card-corp" id="cardCorporation">
	                        <option value="" >최신순</option>
	                        <option value="" >오래된순</option>
	                        <option value="" >높은금액순</option>
	                        <option value="" >낮은금액순</option>
	                    </select>
	                </div>
	                <!-- 셀렉트박스 끝 -->
                	<div class="common-board-list" style="margin-top: 18px;">
	                    <table class="data-table medium">
<!-- 	                        <caption>해피버스데이 파티 당첨자 발표</caption> -->
	                        <colgroup>
	                            <col style="width: 100px;">
	                            <col>
	                            <col style="width: 140px;">
	                        </colgroup>
	                        <thead>
	                            <tr>
	                                <th>상품명</th>
	                                <th>대출 계좌번호</th>
	                                <th>대출 일자</th>
	                                <th>만기 일자</th>
	                                <th>대출액(약정액)</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        	<tr>
	                                <td class="align-center date">햇살론</td>
	                                <td class="align-center date">806-02-175313</td>
	                                <td class="align-center">2023-05-15</td>
	                                <td class="align-center">2025-07-20</td>
	                                <td class="align-center">150,000,000</td>
	                            </tr>
	                        	<tr>
	                                <td class="align-center date">제일은행<br>현금서비스</td>
	                                <td class="align-center date">806-02-175313</td>
	                                <td class="align-center">2023-05-20</td>
	                                <td class="align-center">2025-07-30</td>
	                                <td class="align-center">80,000,000</td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>
				</div>
				<!-- 카드 사용내역 끝 -->
				
				<!-- 카드 사용내역 시작 -->
				<div class="list-wrapper" style="margin-bottom: 70px;">
				<div class="description-list member-box" style="width: 400px; height: 70px; margin-bottom: 30px;">
						<dl>
							<dt tabindex="0" style="width: 170px;">[${member.member_name }홍길동]님의 분할상환금</dt>
							<dd tabindex="0">8,000,000원</dd>
						</dl>
					  </div>
					<!-- 셀렉트박스 시작 -->
					<div class="select-wrapper" style="margin-top: 70px; margin-left: 800px;">
	                    <select name="q.cardCorporation" class="select-tric medium type2 _card-corp" id="cardCorporation">
	                        <option value="" >최신순</option>
	                        <option value="" >오래된순</option>
	                        <option value="" >높은금액순</option>
	                        <option value="" >낮은금액순</option>
	                    </select>
	                </div>
	                <!-- 셀렉트박스 끝 -->
                	<div class="common-board-list" style="margin-top: 18px;">
	                    <table class="data-table medium">
<!-- 	                        <caption>해피버스데이 파티 당첨자 발표</caption> -->
	                        <colgroup>
	                            <col style="width: 100px;">
	                            <col>
	                            <col style="width: 140px;">
	                        </colgroup>
	                        <thead>
	                            <tr>
	                                <th>상품명</th>
	                                <th>대출 계좌번호</th>
	                                <th>대출 일자</th>
	                                <th>만기 일자</th>
	                                <th>대출액(약정액)</th>
	                                <th>월 상환금</th>
	                                <th>금리 유형</th>
	                                <th>금리</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        	<tr>
	                                <td class="align-center date">햇살론</td>
	                                <td class="align-center date">806-02-175313</td>
	                                <td class="align-center">2023-05-15</td>
	                                <td class="align-center">2025-07-20</td>
	                                <td class="align-center">5,000,000</td>
	                                <td class="align-center">60,000</td>
	                                <td class="align-center">고정 금리</td>
	                                <td class="align-center">8%</td>
	                            </tr>
	                        	<tr>
	                                <td class="align-center date">제일은행<br>현금서비스</td>
	                                <td class="align-center date">806-02-175313</td>
	                                <td class="align-center">2023-05-20</td>
	                                <td class="align-center">2025-07-30</td>
	                                <td class="align-center">3,000,000</td>
	                                <td class="align-center">55,000</td>
	                                <td class="align-center">변동 금리</td>
	                                <td class="align-center">3.5%</td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>
				</div>
				<!-- 카드 사용내역 끝 -->
				
			</div>
		</div>
	</div>
</div>
				  		

	<!-- 중간 작업공간 끝 ============================================================== -->


 	<footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
    </footer>
</body>
</html>