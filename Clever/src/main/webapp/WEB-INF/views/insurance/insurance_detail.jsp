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
	
	<div id="insurance" style="margin-bottom: 200px;">
	
            <div class="container text-center">
			  <div class="row">
			    <div class="col"></div>
			    <div class="col-9"> <!-- 그리드 중간부분 시작 -->
			    
		     		  <div class="subpage-title-area">
				            <h2 class="title">보험상세조회</h2>
				            <p class="sub-text">나의 보험가입내역을 조회할 수 있습니다.</p>
				      </div>
			      
				      <div class="description-list member-box" style="width: 400px; height: 100px; margin-bottom: 30px;">
						<dl>
							<dt tabindex="0" style="width: 170px;">[${member.member_name }홍길동]님</dt>
							<dd tabindex="0">KB손해보험 총 1건</dd>
						</dl>
						<dl>
							<dt tabindex="0" style="width: 170px;">월 보험료</dt>
							<dd tabindex="0">60,000원</dd>
						</dl>
					  </div>
				  
					   <table class="data-table medium">
			                <caption>보험상세조회</caption>
			                <colgroup>
			                    <col style="width: 150px;">
			                    <col>
			                    <col style="width: 0px;">
			                </colgroup>
			                <thead>
			                <tr>
			                    <th class="align-center counter"></th>
			                    <th class="align-center counter">KB손보실손의료비보장보험 (15년납)</th>
			                </tr>
			                </thead>
			                <tbody>
				                <tr class="_view" data-id="2695">
				                    <td class="align-center counter" valign="middle">계약자</td>
				                    <td class="align-center date">홍길동</td>
				                </tr>
				                 <tr class="_view" data-id="2695">
				                    <td class="align-center counter" valign="middle">피보험자</td>
				                    <td class="align-center date">홍길동</td>
				                </tr>
				                 <tr class="_view" data-id="2695">
				                    <td class="align-center counter" valign="middle">보장시작일</td>
				                    <td class="align-center date">2020.02.19</td>
				                </tr>
				                 <tr class="_view" data-id="2695">
				                    <td class="align-center counter" valign="middle">보장만기일</td>
				                    <td class="align-center date">2035.02.19</td>
				                </tr>
				                 <tr class="_view" data-id="2695">
				                    <td class="align-center counter" valign="middle">납입주기</td>
				                    <td class="align-center date">월 1회</td>
				                </tr>
				                 <tr class="_view" data-id="2695">
				                    <td class="align-center counter" valign="middle">보장상태</td>
				                    <td class="align-center date">정상</td>
				                </tr>
			                </tbody>
			            </table>
			            
				            <div class="container text-center" style="margin-top: 50px;">
							  <div class="row">
							    <div class="col">
							      <p style="font-size: 20px;">자동이체정보</p>
							      <hr>
							      자동이체 신청이 되어있지 않습니다.
							    </div>
							    <div class="col">
							      <p style="font-size: 20px;">카드등록정보</p>
							      <hr>
							      카드주 : 홍길동 <br>
							      카드정보 : 카카오뱅크 1234-5678-9999-1155
							    </div>
							  </div>
							</div>
			            
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