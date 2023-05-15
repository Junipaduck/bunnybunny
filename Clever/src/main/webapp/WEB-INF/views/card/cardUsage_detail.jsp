<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2팀 - 카드 사용내역</title>
</head>
<body>

<header>
	<jsp:include page="../inc/header.jsp"></jsp:include>
</header>

<!-- 카드 사용 내역 시작 -->
<div class="content">
	<div class="section-inner">
		<!-- 카드별 총 사용 금액 출력 시작 -->
		<div class="subpage-title-area">
			<p class="sub-text" tabindex="0">이번 달 사용 금액</p>
			<h2 class="title" tabindex="0">300,000원</h2>
		</div>
		<!-- 카드별 총 사용 금액 출력 끝 -->
		<div class="contents-container-wrap">
			<div class="list-content">
				<!-- 카드 사용내역 시작 -->
				<div class="list-wrapper" style="margin-bottom: 70px;">
					<!-- 셀렉트박스 시작 -->
					<div class="select-wrapper" style="margin-top: 70px; margin-left: 800px;">
	                    <select name="q.cardCorporation" class="select-tric medium type2 _card-corp" id="cardCorporation">
	                        <option value="" >최신순</option>
	                        <option value="하나카드" >오래된순</option>
	                        <option value="씨티카드" >높은금액순</option>
	                        <option value="우리카드" >낮은금액순</option>
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
	                                <th>결제일자</th>
	                                <th>결제시간</th>
	                                <th>가맹점명</th>
	                                <th>결제금액</th>
	                                <th>결제구분</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        	<tr>
	                                <td class="align-center date">2023-05-09</td>
	                                <td class="align-center date">21:30</td>
	                                <td class="align-center">가맹점1</td>
	                                <td class="align-center">18,000</td>
	                                <td class="align-center">일시불</td>
	                            </tr>
	                        	<tr>
	                                <td class="align-center date">2023-05-07</td>
	                                <td class="align-center date">20:29</td>
	                                <td class="align-center">가맹점2</td>
	                                <td class="align-center">3,000</td>
	                                <td class="align-center">일시불</td>
	                            </tr>
	                        	<tr>
	                                <td class="align-center date">2023-05-07</td>
	                                <td class="align-center date">12:28</td>
	                                <td class="align-center">가맹점1</td>
	                                <td class="align-center">9,900</td>
	                                <td class="align-center">일시불</td>
	                            </tr>
	                        	<tr>
	                                <td class="align-center date">2023-05-06</td>
	                                <td class="align-center date">17:33</td>
	                                <td class="align-center">가맹점4</td>
	                                <td class="align-center">2,000</td>
	                                <td class="align-center">일시불</td>
	                            </tr>
	                        	<tr>
	                                <td class="align-center date">2023-05-06</td>
	                                <td class="align-center date">13:00</td>
	                                <td class="align-center">가맹점3</td>
	                                <td class="align-center">10,000</td>
	                                <td class="align-center">일시불</td>
	                            </tr>
	                        	<tr>
	                                <td class="align-center date">2023-05-03</td>
	                                <td class="align-center date">14:30</td>
	                                <td class="align-center">가맹점2</td>
	                                <td class="align-center">49,000</td>
	                                <td class="align-center">일시불</td>
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
<!-- 카드 사용 내역 끝 -->





<!-- 안내문구 시작 -->
<div class="content"  style="margin-top: 70px; margin-bottom: 70px;">
	<div class="section-inner">
		<div class="grade-etc-infomation brand">
			<div class="information-header">
				<p class="guide-text">이용금액 안내</p>
			</div>
			<p>
				- 통신비, 관리비 등 자도이체 내역은 이용대금명세서에서 확인할 수 있습니다.<br>
				- 결제한 날로부터 2~3일 지난 후 취소한 내역은 카드사에서 제공하지 않아 확인이 어려울 수 있습니다.<br>
				- 타인에게 발급된 가족카드의 사용 내역은 카드사에서 제공하지 않아 확인이 어려울 수 있습니다.
			</p>
			<br>
			<button type="button" class="btn slightly line">자주 묻는 질문 바로가기</button>
		</div>
	</div>
</div>
<!-- 안내문구 끝 -->

<footer>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
</footer>
</body>
</html>
 