<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해피포인트 - 회원가입</title>
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

	<header>
		<jsp:include page="../inc/header.jsp"></jsp:include>
	</header>


	<!-- 중간 작업공간 시작 ============================================================== -->

		    <!-- //페이지 네비게이션 -->
    <div class="section-inner">
        <h1 class="page-title" style="text-align: center;">회원정보수정</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="small-layout-inner">
<!--             <p class="page-subTitle">안녕하세요, 아이티윌2팀 입니다</p> -->
            <form id="joinForm" name="joinForm" action="" method="post" style="width: 500px;margin: auto;">
                <fieldset class="fieldset row">
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                            	<h5><label>아이디</label></h5>
                                <input type="text" placeholder="아이디" title="아이디 입력" id="id" name="id" value="">
                            </div>
                            <!-- <p class="etc em normal">도움말 텍스트입니다.</p> -->
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <h5><label>현재 비밀번호</label></h5>
                                <input type="password" placeholder="비밀번호(숫자, 영문, 특수문자 조합 8~16자리)" title="비밀번호 입력" id="passwd" name="passwd" maxlength="16">
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <h5><label>변경 할 비밀번호</label></h5>
                                <input type="password" placeholder="비밀번호(숫자, 영문, 특수문자 조합 8~16자리)" title="비밀번호 입력" id="passwd2" name="passwd2" maxlength="16">
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <h5><label>이름</label></h5>
                                <input type="text" placeholder="이름을 입력하세요" title="비밀번호 입력" id="name" name="name">
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <h5><label>생년월일</label></h5>
                                <input type="text" placeholder="ex)19000101" title="비밀번호 입력" id="birth" name="birth">
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <h5><label>전화번호</label></h5>
                                <input type="text" placeholder="- 기호 생략" title="비밀번호 입력" id="phone" name="phone">
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <h5><label>이메일</label></h5>
                                <input type="text" placeholder="이메일을 입력하세요" title="비밀번호 입력" id="email" name="email">
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <h5><label>주소</label></h5>
                                <input type="text" placeholder="주소를 입력하세요" title="비밀번호 입력" id="address" name="address">
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <h5><label>관심분야</label></h5>
                                &nbsp;
                                <select name="interest">
                                	<option>관심분야 선택</option>
                                	<option value="saving">저축</option>
                                	<option value="stock">주식</option>
                                	<option value="card">카드</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="insert">
                            <div class="input-cover" style="overflow: visible;">
                                <!-- 입력값 삭제 버튼 없을경우 no-delete추가 -->
                                <h5><label>성별</label></h5>
                                &nbsp;
								 <input type="radio" id="member_male" value="남" name="member_gender"><label for="member_male">남</label>
								 <input type="radio" id="member_female" value="여" name="member_gender"><label for="member_female">여</label>
                            </div>
                        </div>
                    </div>
                    <div class="btn-group wide">
                        <button type="submit" class="btn medium accent">수정하기</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	
	<!-- 중간 작업공간 끝 ============================================================== -->


 	<footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
    </footer>
<!-- 부트스트랩 -->    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
 