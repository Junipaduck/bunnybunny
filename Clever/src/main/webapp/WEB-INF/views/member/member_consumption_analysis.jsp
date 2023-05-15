<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 소비분석</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<!-- 차트 스크립트 -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load('current', {'packages':['corechart']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {

    var data = google.visualization.arrayToDataTable([
      ['Task', 'Hours per Day'],
      ['식비',     11],
      ['쇼핑',      2],
      ['생활비',  2],
      ['통신비', 2],
      ['기타',    7]
    ]);

    var options = {
      title: '000님의 0월 소비차트'
    };

    var chart = new google.visualization.PieChart(document.getElementById('piechart'));

    chart.draw(data, options);
  }
</script>
<body>

	<header>
		<jsp:include page="../inc/header.jsp"></jsp:include>
	</header>


	<!-- 중간 작업공간 시작 ============================================================== -->

    <!-- 페이지 네비게이션 -->
    <div class="page-navigation">
        <div class="inner">
            <span class="path"><a href="./">Home</a></span>
            <span class="path"><a href="">소비분석</a></span>
        </div>
    </div>

    <div class="section-inner">
        <div class="subpage-title-area">
            <h2 class="title">소비분석</h2>
            <p class="sub-text">소비분석 해보세요~</p>
        </div>
    </div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<!-- 그리드 나누기 -->
	<div class="container text-center">
	  <div class="row">
	    <div class="col">
	  		<div id="piechart" style="width: 900px; height: 500px;"></div>
	    </div>
	    <div class="col">
	    	<br>
	    	<br>
	    	<br>
		    <!-- 카드 시작 -->
		    <div class="row">
			  <div class="col-sm-6 mb-3 mb-sm-0">
			    <div class="card" style="width: 300px;">
			      <div class="card-body">
			        <h5 class="card-title">최다지출</h5>
			        <p class="card-text">000님은 00카테고리 지출이 많아요!</p>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- 카드 끝 -->
			&nbsp;&nbsp;&nbsp;
		    <!-- 카드 시작 -->
		    <div class="row">
			  <div class="col-sm-6 mb-3 mb-sm-0">
			    <div class="card" style="width: 300px;">
			      <div class="card-body">
			        <h5 class="card-title">절약</h5>
			        <p class="card-text">000님 전월대비 000원을 아끼셨네요!</p>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- 카드 끝 -->
			&nbsp;&nbsp;&nbsp;
		    <!-- 카드 시작 -->
		    <div class="row">
			  <div class="col-sm-6 mb-3 mb-sm-0">
			    <div class="card" style="width: 300px;">
			      <div class="card-body">
			        <h5 class="card-title">상품추천</h5>
			        <p class="card-text">000님껜 000상품이 적합하네요!</p>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- 카드 끝 -->
	    </div>
	   </div> 
    </div>
    
    <!-- 상품 소개 시작 -->
    <div class="happypoint-brand-list-wrap" style="margin-left: 400px;">
	    <ul class="brand-intro-list">
	        <li class="two-per-row">
	            <img src="${pageContext.request.contextPath }/resources/images/여행이미지.png" alt="여행적금" class="brand-thumb">
	            <!-- 링크 이동인 경우 a태그로 변경, .brand-link 클래스 추가 -->
	            <a href="tripChallengeform.to" class="brand-title brand-link" title="여행적금">여행적금</a>
	            <p class="brand-sub">목표금액을 정하고 여행가요~</p>
	            <div class="brand-benefit-mem">
	            </div>
	        </li>
	        <li class="two-per-row">
	            <img src="${pageContext.request.contextPath }/resources/images/커피이미지.png" alt="커피적금" class="brand-thumb">
	            <a href="매핑주소" class="brand-title brand-link" title="카드조회">커피적금</a>
	            <p class="brand-sub">하루 1잔 커피값 아껴서 돈 모아요~</p>
	            <div class="brand-benefit-mem">
	            </div>
	        </li>
	    </ul>
    </div>
	<!-- 중간 작업공간 끝 ============================================================== -->


 	<footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
    </footer>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>