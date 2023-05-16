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

	<!-- 페이지 네비게이션 -->
	<div class="page-navigation">
	        <div class="inner">
	            <span class="path"><a href="./" title="홈">Home</a></span>
	            <span class="path"><a href="" title="My 자산조회">My 자산조회</a></span>
	            <span class="path"><a href="" title="My 자산조회">My 보험조회</a></span>
	        </div>
	</div>

	<!-- 중간 작업공간 시작 ============================================================== -->
	
	<div id="insurance" style="margin-bottom: 200px;">
	
            <div class="container text-center">
			  <div class="row">
			    <div class="col"></div>
			    <div class="col-9"> <!-- 그리드 중간부분 시작 -->
			    
			    
		     		  <div class="subpage-title-area">
				            <h2 class="title">My 보험조회</h2>
				            <p class="sub-text">나의 보험가입내역을 조회할 수 있습니다.</p>
				      </div>
			      
				      <div class="description-list member-box" style="width: 400px; height: 70px; margin-bottom: 30px;">
						<dl>
							<dt tabindex="0" style="width: 170px;">[${member.member_name }홍길동]님의 월 보험료</dt>
							<dd tabindex="0">115,000원</dd>
						</dl>
					  </div>
				  
				  
					    <table class="data-table medium">
			                <caption>보험조회</caption>
			                <colgroup>
			                    <col style="width: 100px;">
			                    <col>
			                    <col style="width: 140px;">
			                </colgroup>
			                <thead>
			                <tr>
			                    <th class="align-center counter">번호</th>
			                    <th class="align-center counter">보험사</th>
			                    <th class="align-center counter">월 보험료</th>
			                    <th class="align-center counter"></th>
			                </tr>
			                </thead>
			                <tbody>
				                <tr class="_view" data-id="2695">
				                    <td class="align-center counter" valign="middle">3</td>
				                    <td class="align-center date">KB손해보험</td>
				                    <td class="align-center date">월 60,000원</td>
				                    <td class="align-center date"><button type="submit" class="btn medium accent" fdprocessedid="00bzq9" style="height: 30px; line-height: 30px;" onclick="location.href='insuranceDetail.io'">보험상세조회</button></td>
				                </tr>
				                <tr class="_view" data-id="2695">
				                    <td class="align-center counter" valign="middle">3</td>
				                    <td class="align-center date">삼성생명</td>
				                    <td class="align-center date">월 55,000원</td>
				                    <td class="align-center date"><button type="submit" class="btn medium accent" fdprocessedid="00bzq9" style="height: 30px; line-height: 30px;" onclick="location.href='insuranceDetail.io'">보험상세조회</button></td>
				                </tr>
			                </tbody>
			            </table>
		            
		            
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