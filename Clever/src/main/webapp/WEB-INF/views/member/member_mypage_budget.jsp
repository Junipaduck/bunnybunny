<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 예산설정</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

	<header>
		<jsp:include page="../inc/header.jsp"></jsp:include>
	</header>


	<!-- 중간 작업공간 시작 ============================================================== -->
	
    <!-- //페이지 네비게이션 -->
    
        <!-- 페이지 네비게이션 -->
    <div class="page-navigation">
            <div class="inner">
                <span class="path"><a href="./" title="홈">Home</a></span>
                <span class="path"><a href="" title="예산설정">예산설정</a></span>
            </div>
        </div>
        
        
    <div class="section-inner">
        <div class="subpage-title-area">
            <h2 class="title">예산설정</h2>
            <p class="sub-text">예산설정 후 소비 분석을 해보세요</p>
        </div>
    </div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <form class="w3-container" style="margin: auto;width: 200px;">

		<label>한 달 예산</label>
		<input class="w3-input" type="text">
		
		<label>목표 지출액</label>
		<input class="w3-input" type="text">
	    <br>
		<button class="w3-button w3-white w3-border w3-border-Khaki w3-round-large">예산설정 GO</button>
	</form>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	
	<!-- 중간 작업공간 끝 ============================================================== -->


 	<footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
    </footer>
  
</body>
</html>