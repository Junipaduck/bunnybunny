<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.happypointcard.com/page/customer/notice-list.spc by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 12 May 2023 15:45:09 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, width=device-width, target-densitydpi=medium-dpi">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" type="image/png"  href="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/resources/ha-web/images/shared/favicon.png"/>

    <title>해피포인트 - 공지사항</title>
</head>
<body>

	<header>
		<jsp:include page="../inc/header.jsp"></jsp:include>
	</header>


	<!-- 중간 작업공간 시작 ============================================================== -->




<div class="customer-content notice-board-list">

    <!-- //페이지 네비게이션 -->
    <div class="section-inner">
        <div class="subpage-title-area">
            <h2 class="title">공지사항</h2>
            <p class="sub-text">해피포인트의 소식 및 안내사항을 확인해보세요.</p>
        </div>
                <form action="https://www.happypointcard.com/page/customer/notice-list.spc" name="noticeForm" id="noticeForm">
        <div class="common-board-list">
            <!-- 공통 검색박스 -->
            <div class="common-search-box">
                    <input type="text" id="searchText" name="q.searchText" placeholder="제목 + 내용" title="제목 내용 입력" value="">
                    <div class="input-element">
                        <a href="javascript:void(0);" class="btn-value-delete">입력값 삭제</a>
                        <button type="submit" class="search-submit">검색</button>
                    </div>
            </div>

            <table class="data-table medium">
                <caption>공지사항</caption>
                <colgroup>
                    <col style="width: 100px;">
                    <col>
                    <col style="width: 140px;">
                </colgroup>
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>발표일</th>
                </tr>
                </thead>
                <tbody>
<!--                 <tr class="_view" data-id="2715"> -->
<!--                     <td class="align-center counter">num</td> -->
<!--                     새글일 경우 new 클래스 추가 -->
<!--                     <td class="article new"> -->
<!--                         <a href="javascript:void(0);">하나 테스트 ~~~~~</a></td> -->
<!--                     <td class="align-center date">date</td> -->
<!--                 </tr> -->
                <tr class="_view" data-id="2695">
                    <td class="align-center counter">176</td>
                    <!-- 새글일 경우 new 클래스 추가 -->
                    <td class="article">
                        <a href="noticeView.no">하나테스트~~ 클릭하면 notice_view.jsp 뷰페이지로 이동함</a></td>
                    <td class="align-center date">2023.05.02</td>
                </tr>
                <tr class="_view" data-id="2675">
                    <td class="align-center counter">175</td>
                    <!-- 새글일 경우 new 클래스 추가 -->
                    <td class="article">
                        <a href="javascript:void(0);">ㅋㅋㅋ</a></td>
                    <td class="align-center date">2023.04.24</td>
                </tr>
                <tr class="_view" data-id="2655">
                    <td class="align-center counter">174</td>
                    <!-- 새글일 경우 new 클래스 추가 -->
                    <td class="article">
                        <a href="javascript:void(0);">다 하드코딩 입니다</a></td>
                    <td class="align-center date">2023.04.19</td>
                </tr>
                <tr class="_view" data-id="2635">
                    <td class="align-center counter">173</td>
                    <!-- 새글일 경우 new 클래스 추가 -->
                    <td class="article">
                        <a href="javascript:void(0);">해피마켓 개인정보처리방침 변경 공지</a></td>
                    <td class="align-center date">2023.04.13</td>
                </tr>
                <tr class="_view" data-id="2615">
                    <td class="align-center counter">172</td>
                    <!-- 새글일 경우 new 클래스 추가 -->
                    <td class="article">
                        <a href="javascript:void(0);">해피오더 개인정보처리방침 변경 공지</a></td>
                    <td class="align-center date">2023.03.24</td>
                </tr>
                <tr class="_view" data-id="2595">
                    <td class="align-center counter">171</td>
                    <!-- 새글일 경우 new 클래스 추가 -->
                    <td class="article">
                        <a href="javascript:void(0);">시스템 정기점검에 따른 서비스 일시 중단안내(3/23)</a></td>
                    <td class="align-center date">2023.03.22</td>
                </tr>
                <tr class="_view" data-id="2575">
                    <td class="align-center counter">170</td>
                    <!-- 새글일 경우 new 클래스 추가 -->
                    <td class="article">
                        <a href="javascript:void(0);">시스템 정기점검에 따른 서비스 일시 중단안내 (3/7)</a></td>
                    <td class="align-center date">2023.03.06</td>
                </tr>
                <tr class="_view" data-id="2555">
                    <td class="align-center counter">169</td>
                    <!-- 새글일 경우 new 클래스 추가 -->
                    <td class="article">
                        <a href="javascript:void(0);">해피포인트, 해피오더, 해피마켓 개인정보처리방침 변경 공지</a></td>
                    <td class="align-center date">2023.03.03</td>
                </tr>
                <tr class="_view" data-id="2535">
                    <td class="align-center counter">168</td>
                    <!-- 새글일 경우 new 클래스 추가 -->
                    <td class="article">
                        <a href="javascript:void(0);">해피포인트 위치기반서비스 이용약관 변경 공지</a></td>
                    <td class="align-center date">2023.02.24</td>
                </tr>
                </tbody>
            </table>
        </div>
        

















<div id="noticeForm_pagination" class="pager" role="navigation" aria-label="페이지 선택 영역">
    <div class="pagination">
        <div class="finish"><a href="notice-list5e9b.html?&amp;currentPage=1&amp;dataPerPage=10" title="처음"><span>처음</span></a></div>
        <div class="edge"><a href="notice-list5e9b.html?&amp;currentPage=1&amp;dataPerPage=10" title="이전"><span>이전</span></a></div>
        <div class="list">
            
                
                
                    <a href="javascript:;" title="현재위치" class="on"><span>1</span></a>
                
            
                
                    <a href="notice-list7436.html?&amp;currentPage=2&amp;dataPerPage=10"><span>2</span></a>
                
                
            
                
                    <a href="notice-list374f.html?&amp;currentPage=3&amp;dataPerPage=10"><span>3</span></a>
                
                
            
                
                    <a href="notice-list37e0.html?&amp;currentPage=4&amp;dataPerPage=10"><span>4</span></a>
                
                
            
                
                    <a href="notice-listfffc.html?&amp;currentPage=5&amp;dataPerPage=10"><span>5</span></a>
                
                
            
                
                    <a href="notice-lista173.html?&amp;currentPage=6&amp;dataPerPage=10"><span>6</span></a>
                
                
            
                
                    <a href="notice-list5a17.html?&amp;currentPage=7&amp;dataPerPage=10"><span>7</span></a>
                
                
            
                
                    <a href="notice-list0ca0.html?&amp;currentPage=8&amp;dataPerPage=10"><span>8</span></a>
                
                
            
                
                    <a href="notice-list1aab.html?&amp;currentPage=9&amp;dataPerPage=10"><span>9</span></a>
                
                
            
                
                    <a href="notice-listed99.html?&amp;currentPage=10&amp;dataPerPage=10"><span>10</span></a>
                
                
            
        </div>
        <div class="edge end"><a href="notice-list984f.html?&amp;currentPage=11&amp;dataPerPage=10" title="다음"><span>다음</span></a></div>
        <div class="finish end"><a href="notice-listf5b2.html?&amp;currentPage=18&amp;dataPerPage=10" title="마지막"><span>마지막</span></a></div>
    </div>
</div>


</form>
    </div>
</div>


    <footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
    </footer>
    
    
</body>
</html>
