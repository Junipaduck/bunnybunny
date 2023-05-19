<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <div class="quixnav">
            <div class="quixnav-scroll">
                <ul class="metismenu" id="menu">
                    <li class="nav-label first">Main Menu</li>
                    <!-- <li><a href="index.html"><i class="icon icon-single-04"></i><span class="nav-text">Dashboard</span></a>
                    </li> -->
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-single-04"></i><span class="nav-text">관리자 메인 페이지</span></a>
                        <ul aria-expanded="false">
                            <li><a href="./index.html">Dashboard 1</a></li>
                            <li><a href="./index2.html">Dashboard 2</a></li>
                        </ul>
                    </li>

                    <li class="nav-label">회원관리</li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-app-store"></i><span class="nav-text">회원관리</span></a>
                        <ul aria-expanded="false">
                            <li><a href="AdminMember.ad">회원목록</a></li>
                            <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">회원차트</a>
                                <ul aria-expanded="false">
                                    <li><a href="./email-compose.html">Compose</a></li>
                                    <li><a href="./email-inbox.html">Inbox</a></li>
                                    <li><a href="./email-read.html">Read</a></li>
                                </ul>
                            </li>
                            <li><a href="./app-calender.html">뭐하지</a></li>
                        </ul>
                    </li>
					<!-- 차트 목록 있던 자리 -->
                    <li class="nav-label">신고관리</li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-world-2"></i><span class="nav-text">전체 신고 목록</span></a>
                        <ul aria-expanded="false">
                            <li><a href="">신고뭐하지</a></li>
                        </ul>
                    </li>

                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-plug"></i><span class="nav-text">신고 처리 결과</span></a>
                        <ul aria-expanded="false">
                            <li><a href="./uc-select2.html">신고뭐하지</a></li>
                        </ul>
                    </li>

                    <li class="nav-label">스토어</li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-form"></i><span class="nav-text">상품목록</span></a>
                        <ul aria-expanded="false">
                            <li><a href="storeList.ad">판매중인 상품</a></li>
                            <li><a href="storeModify.ad">품절된 상품</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-form"></i><span class="nav-text">상품등록</span></a>
                        <ul aria-expanded="false">
                            <li><a href="storeRegister.ad">상품등록</a></li>
                            <li><a href="storeModify.ad">상품수정</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-form"></i><span class="nav-text">상품삭제</span></a>
                        <ul aria-expanded="false">
                            <li><a href="./form-element.html">상품뭐하지</a></li>
                        </ul>
                    </li>
                    <li class="nav-label">게시판</li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-layout-25"></i><span class="nav-text">게시판관리</span></a>
                        <ul aria-expanded="false">
                            <li><a href="table-bootstrap-basic.html">게시판뭐하지</a></li>
                            <li><a href="table-datatable-basic.html">게시판뭐하지</a></li>
                        </ul>
                    </li>

                    <li class="nav-label">고객센터</li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-single-copy-06"></i><span class="nav-text">자주묻는질문</span></a>
                        <ul aria-expanded="false">
                            <li><a href="./page-register.html">질문뭐하지</a></li>
                        </ul>
                    </li>
                    <li class="nav-label">페이관리</li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-single-copy-06"></i><span class="nav-text">계좌</span></a>
                        <ul aria-expanded="false">
                            <li><a href="./page-register.html">질문뭐하지</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-single-copy-06"></i><span class="nav-text">입출금내역</span></a>
                        <ul aria-expanded="false">
                            <li><a href="./page-register.html">질문뭐하지</a></li>
                        </ul>
                    </li>
                    <li class="nav-label">경매관리</li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-single-copy-06"></i><span class="nav-text">경매상품목록</span></a>
                        <ul aria-expanded="false">
                            <li><a href="adminAuction.ad">경매 목록 조회</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="icon icon-single-copy-06"></i><span class="nav-text">경매현황</span></a>
                        <ul aria-expanded="false">
                            <li><a href="./page-register.html">질문뭐하지</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
</body>
</html>