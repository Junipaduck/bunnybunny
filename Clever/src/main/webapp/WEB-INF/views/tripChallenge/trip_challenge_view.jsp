<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행챌린지페이지</title>

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
	<div id="" style="margin-bottom: 200px;">
	
            <div class="container text-center">
			  <div class="row">
			    <div class="col"></div>
			    
			    	  <div class="subpage-title-area" style="margin: auto;">
				            <h2 class="title">여행목돈챌린지</h2>
				            <p class="sub-text">
					            2팀과 제휴여행사가 함께하는 여행목돈챌린지에 도전하세요!<br>
					            여행을 떠나고싶은 날짜와, 원하는 경비를 설정할 수 있습니다.<br>
					            챌린지에 성공하여 여행사 프로모션쿠폰도 받고 여행도 떠나보세요~<br>
<!-- 					            메모) 여행챌린지를 신청하지 않은 사람은 member 테이블에 신청여부 N을 주고 신청양식이 나옴, 신청하기를 하면 Y로 update해주고 Y인 사람은 신청양식이 아닌 챌린지상세페이지가 나옴, 목표금액과 날짜를 달성한사람은 여행사 할인쿠폰을 줌! -->
							</p>
				      </div>
			    
			      		<!-- 노랑풍선 광고배너 -->
						<section class="main-section main-keyvisual-section" style="margin-top: 30px;">
						    <div class="main-keyvisual-slider">
						        <div class="swiper-container">
						            <div class="swiper-wrapper">
						                <div class="swiper-slide banner-hit" style="background-image: url(https://cimgcdn.ybtour.co.kr/attachHome/EP/EM/202304/202304061051186242210002001067.jpg)" onclick="location.href='https://www.ybtour.co.kr/promotion/promotionDetail.yb?mstNo=20000020450&subDspMenu=DMT'" data-bannerid="10001"></div>
						                <div class="swiper-slide banner-hit" style="background-image: url(https://cimgcdn.ybtour.co.kr/attachHome/EP/EM/202304/202304131423522081104009001008.jpg)" onclick="location.href='https://www.ybtour.co.kr/promotion/promotionDetail.yb?mstNo=20000020536&subDspMenu=DMT'" data-bannerid="10001"></div>
						                <div class="swiper-slide banner-hit" style="background-image: url(https://cimgcdn.ybtour.co.kr/attachHome/EP/EM/202302/202302071130131871102001001078.jpg)" onclick="location.href='https://www.ybtour.co.kr/promotion/promotionDetail.yb?mstNo=20000017453&subDspMenu=DMT'" data-bannerid="10001"></div>
						                <div class="swiper-slide banner-hit" style="background-image: url(https://cimgcdn.ybtour.co.kr/attachHome/EP/EM/202304/202304061111462122210002001032.jpg)" onclick="location.href='https://www.ybtour.co.kr/promotion/promotionDetail.yb?mstNo=20000017352&subDspMenu=DMT'" data-bannerid="10001"></div>
						                <div class="swiper-slide banner-hit" style="background-image: url(https://cimgcdn.ybtour.co.kr/attachHome/EP/EM/202304/202304241731431661802007001026.jpg)" onclick="location.href='https://www.ybtour.co.kr/promotion/promotionDetail.yb?mstNo=20000020814&subDspMenu=DMT'" data-bannerid="10001"></div>
						                </div>
						        </div>
						    </div>
						</section>	
						<!-- 노랑풍선 광고배너 -->
							
			    <div class="col-12"> <!-- 그리드 중간부분 시작 -->
			    
			      		<!-- 여행목돈챌린지 -->
				            <form id="" name="" action="" method="post" style="width: 500px; margin: auto;">
				            		 <h2 class="title" style="margin-top: -150px;">가입상품상세</h2><br>
							            <p class="sub-text" style="margin-bottom: 50px;">
								            본 챌린지는 제휴여행사 노랑풍선과 함께합니다.<br>
								            <a href="https://www.ybtour.co.kr/index.yb" style="background-color:yellow; font-style: italic;">노랑풍선 공식홈페이지 바로가기</a><br>
										</p>
				                    <div class="field">
				                        <div class="insert">
				                            <div class="input-cover" style="overflow: visible;">
				                                <h5 style="text-align: left;"><label>여행일자</label></h5>
				                                <hr>
				                            </div>
				                        </div>
				                    </div>
				                    여행일자, 여행까지남은개월수, 목표금액, 현재누적금액  (아직 수정중인 페이지임)
				                    &nbsp;&nbsp;&nbsp;
				                    <div class="btn-group wide">
				                   		 <button type="submit" class="btn medium accent" fdprocessedid="00bzq9" style="height: 30px; line-height: 30px; margin-left: 400px; margin-top: 20px;" onclick="location.href='매핑주소'">해지하기</button>
				                    </div>
				            </form>
		            
		            
			    </div> <!-- 그리드 중간부분 끝 -->
			    <div class="col"></div>
			  </div>
			</div>
            
            
               
						
    </div>
				  		

	<!-- 중간 작업공간 끝 ============================================================== -->


 	<footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
    </footer>
</body>
</html>