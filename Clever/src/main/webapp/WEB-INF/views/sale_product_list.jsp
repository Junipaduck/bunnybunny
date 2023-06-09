<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해피포인트 - 공지사항</title>
</head>
<body>

	<!-- 중간 작업공간 시작 ============================================================== -->
	
	
<style>
    .circleThumb {width:100%; font-family: 'Pretendard-Regular';}
    .circleThumb ul {width:1200px; margin:0 auto; display:flex; justify-content: space-between;}
    .circleThumb ul li {width:100px; height:100px; display:inline-block; transition:.3s;}
    .circleThumb ul li:hover {margin-top:-10px;}
    .circleThumb ul li p {text-align:center; margin-top:10px; font-size:16px; margin-right: 50px;}
    .circleThumb img {width:50px; height: 50px;}
</style>
<div class="circleThumb">
    <ul>
   		<li>
            <a href="매핑주소를입력하시오">
               <img src="${pageContext.request.contextPath }/resources/images/free-icon-clothes-6043858.png">
               <p>의류/잡화</p>
            </a>
        </li>
        <li>
            <a href="매핑주소를입력하시오">
                <img src="${pageContext.request.contextPath }/resources/images/free-icon-desktop-computer-1792525.png">
                <p>디지털/가전</p>
            </a>
        </li>
        <li>
            <a href="매핑주소를입력하시오">
                <img src="${pageContext.request.contextPath }/resources/images/free-icon-book-3145765.png">
                <p>도서/티켓/문구</p>
            </a>
        </li>
        <li>
            <a href="매핑주소를입력하시오">
                <img src="${pageContext.request.contextPath }/resources/images/free-icon-cosmetics-3163203.png">
                <p>뷰티/미용</p>
            </a>
        </li>
        <li>
            <a href="매핑주소를입력하시오">
                <img src="${pageContext.request.contextPath }/resources/images/free-icon-organic-food-2713569.png">
                <p>식품</p>
            </a>
        </li>
        <li>
            <a href="매핑주소를입력하시오">
                <img src="${pageContext.request.contextPath }/resources/images/free-icon-pets-3460335.png">
                <p>반려동물용품</p>
            </a>
        </li>
        <li>
            <a href="매핑주소를입력하시오">
                <img src="${pageContext.request.contextPath }/resources/images/free-icon-shopping-5508988.png">
                <p>기타</p>
            </a>
        </li>
    </ul>
</div>

<!-- 베스트 -->
<style>
    .best {width:1600px; margin:120px auto; position:relative; font-family: 'Pretendard-Regular'; }
    .best h3 {font-size:32px; color:#464646; text-align: center; font-weight: bold;}
    .best span a {position:absolute; top:16px; right:0; font-size:14px;}
    .best span a b {display:none; float:right; padding-left:5px;}
    .best span:hover a {font-weight:bold;}
    .best span:hover a b {display:block;}
    .swiper-horizontal>.swiper-pagination-progressbar, .swiper-pagination-progressbar.swiper-pagination-horizontal, .swiper-pagination-progressbar.swiper-pagination-vertical.swiper-pagination-progressbar-opposite, .swiper-vertical>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite
    {width:300px; left:50%; margin-left:-150px; height:1px;}
    .swiper-pagination-progressbar .swiper-pagination-progressbar-fill {height:5px; margin-top:-2px; background-color:#464646;}
    .item-list .prd-colornum {margin-top:5px;}
</style>

<!-- Best 레이아웃 -->
<div class="best">
	    <h3>중고거래 베스트<p style="font-size:large; margin-top: 20px;"><a href="매핑주소를입력하시오">중고거래 전체보기</a></p></h3>
    <style>
        .bestSwiper .swiper {
          width: 100%;
          height: 563px;
        }
    
        .bestSwiper .swiper-slide {
          text-align: center;
          font-size: 18px;
          /*background: #dfdfdf;*/
          display: flex;
          justify-content: center;
          /* align-items: center; */
          height:400px;
        }
    
        .bestSwiper .swiper-slide img {
          display: block;
          width: 100%;
          height: 100%;
          object-fit: cover;
        }
    
        .bestSwiper .swiper-pagination-bullet {
          width: 20px;
          height: 20px;
          text-align: center;
          line-height: 20px;
          font-size: 12px;
          color: #000;
          opacity: 1;
          background: rgba(0, 0, 0, 0.2);
        }
    
        .bestSwiper .swiper-pagination-bullet-active {
          color: #fff;
          background: #007aff;
        }

        .bestSwiper {margin-top:70px; height:583px;}

        .bestSwiper .swiper-pagination {margin-top:560px;}
      </style>

      <!-- Swiper-->
      <div class="swiper bestSwiper">
        <div class="swiper-wrapper">
        	<!-- 상품카드 1개시작 -->
            <div class="swiper-slide">
                <dl class="item-list">
                    <dt class="thumb">
                        <a href="매핑주소를입력하시오">
                        <img class="MS_prod_img_s" src="//cdn3-aka.makeshop.co.kr/shopimages/jo112/0230000004953.jpg?1680760782"/></a>
                    </dt>
                    <dd class="prd-info">
                        <ul>
                            <li class="prd-info-top">
                                 <p class="listcate">팬츠</p>
                            </li>
                            <li class="prd-name">
                                <a href="매핑주소를입력하시오">하이퍼 쿨 조거팬츠</a>
                            </li>
                            <li class="prd-btwrap">
                                <ul>
                                    <li class="prd-price">59,000<em>원</em>
                                </ul>
                            </li>
                          </ul>
                    </dd>
                </dl>
            </div>
            <!-- 상품카드 1개끝 -->
            <!-- 상품카드 1개시작 -->
            <div class="swiper-slide">
                <dl class="item-list">
                    <dt class="thumb">
                        <a href="매핑주소를입력하시오">
                        <img class="MS_prod_img_s" src="//cdn3-aka.makeshop.co.kr/shopimages/jo112/0230000005973.jpg?1683773112"/></a>
                    </dt>
                    <dd class="prd-info">
                        <ul>
                            <li class="prd-info-top">
                                 <p class="listcate">팬츠</p>
                            </li>
                            <li class="prd-name">
                                <a href="매핑주소를입력하시오">하이퍼 쿨 조거팬츠</a>
                            </li>
                            <li class="prd-btwrap">
                                <ul>
                                    <li class="prd-price">59,000<em>원</em>
                                </ul>
                            </li>
                          </ul>
                    </dd>
                </dl>
            </div>
            <!-- 상품카드 1개끝 -->
            <!-- 상품카드 1개시작 -->
            <div class="swiper-slide">
                <dl class="item-list">
                    <dt class="thumb">
                        <a href="매핑주소를입력하시오">
                        <img class="MS_prod_img_s" src="//cdn3-aka.makeshop.co.kr/shopimages/jo112/0230000004953.jpg?1680760782"/></a>
                    </dt>
                    <dd class="prd-info">
                        <ul>
                            <li class="prd-info-top">
                                 <p class="listcate">팬츠</p>
                            </li>
                            <li class="prd-name">
                                <a href="매핑주소를입력하시오">하이퍼 쿨 조거팬츠</a>
                            </li>
                            <li class="prd-btwrap">
                                <ul>
                                    <li class="prd-price">59,000<em>원</em>
                                </ul>
                            </li>
                          </ul>
                    </dd>
                </dl>
            </div>
            <!-- 상품카드 1개끝 -->
            <!-- 상품카드 1개시작 -->
            <div class="swiper-slide">
                <dl class="item-list">
                    <dt class="thumb">
                        <a href="매핑주소를입력하시오">
                        <img class="MS_prod_img_s" src="//cdn3-aka.makeshop.co.kr/shopimages/jo112/0280000007633.jpg?1682582282"/></a>
                    </dt>
                    <dd class="prd-info">
                        <ul>
                            <li class="prd-info-top">
                                 <p class="listcate">팬츠</p>
                            </li>
                            <li class="prd-name">
                                <a href="매핑주소를입력하시오">하이퍼 쿨 조거팬츠</a>
                            </li>
                            <li class="prd-btwrap">
                                <ul>
                                    <li class="prd-price">59,000<em>원</em>
                                </ul>
                            </li>
                          </ul>
                    </dd>
                </dl>
            </div>
            <!-- 상품카드 1개끝 -->
            <!-- 상품카드 1개시작 -->
            <div class="swiper-slide">
                <dl class="item-list">
                    <dt class="thumb">
                        <a href="매핑주소를입력하시오">
                        <img class="MS_prod_img_s" src="//cdn3-aka.makeshop.co.kr/shopimages/jo112/0280000006363.jpg?1680761684"/></a>
                    </dt>
                    <dd class="prd-info">
                        <ul>
                            <li class="prd-info-top">
                                 <p class="listcate">팬츠</p>
                            </li>
                            <li class="prd-name">
                                <a href="매핑주소를입력하시오">하이퍼 쿨 조거팬츠</a>
                            </li>
                            <li class="prd-btwrap">
                                <ul>
                                    <li class="prd-price">59,000<em>원</em>
                                </ul>
                            </li>
                          </ul>
                    </dd>
                </dl>
            </div>
            <!-- 상품카드 1개끝 -->
            <!-- 상품카드 1개시작 -->
            <div class="swiper-slide">
                <dl class="item-list">
                    <dt class="thumb">
                        <a href="매핑주소를입력하시오">
                        <img class="MS_prod_img_s" src="//cdn3-aka.makeshop.co.kr/shopimages/jo112/0230000004953.jpg?1680760782"/></a>
                    </dt>
                    <dd class="prd-info">
                        <ul>
                            <li class="prd-info-top">
                                 <p class="listcate">팬츠</p>
                            </li>
                            <li class="prd-name">
                                <a href="매핑주소를입력하시오">하이퍼 쿨 조거팬츠</a>
                            </li>
                            <li class="prd-btwrap">
                                <ul>
                                    <li class="prd-price">59,000<em>원</em>
                                </ul>
                            </li>
                          </ul>
                    </dd>
                </dl>
            </div>
            <!-- 상품카드 1개끝 -->
            <!-- 상품카드 1개시작 -->
            <div class="swiper-slide">
                <dl class="item-list">
                    <dt class="thumb">
                        <a href="매핑주소를입력하시오">
                        <img class="MS_prod_img_s" src="//cdn3-aka.makeshop.co.kr/shopimages/jo112/0280000006493.jpg?1682313751"/></a>
                    </dt>
                    <dd class="prd-info">
                        <ul>
                            <li class="prd-info-top">
                                 <p class="listcate">팬츠</p>
                            </li>
                            <li class="prd-name">
                                <a href="매핑주소를입력하시오">하이퍼 쿨 조거팬츠</a>
                            </li>
                            <li class="prd-btwrap">
                                <ul>
                                    <li class="prd-price">59,000<em>원</em>
                                </ul>
                            </li>
                          </ul>
                    </dd>
                </dl>
            </div>
            <!-- 상품카드 1개끝 -->
            <!-- 상품카드 1개시작 -->
            <div class="swiper-slide">
                <dl class="item-list">
                    <dt class="thumb">
                        <a href="매핑주소를입력하시오">
                        <img class="MS_prod_img_s" src="//cdn3-aka.makeshop.co.kr/shopimages/jo112/0230000004953.jpg?1680760782"/></a>
                    </dt>
                    <dd class="prd-info">
                        <ul>
                            <li class="prd-info-top">
                                 <p class="listcate">팬츠</p>
                            </li>
                            <li class="prd-name">
                                <a href="매핑주소를입력하시오">하이퍼 쿨 조거팬츠</a>
                            </li>
                            <li class="prd-btwrap">
                                <ul>
                                    <li class="prd-price">59,000<em>원</em>
                                </ul>
                            </li>
                          </ul>
                    </dd>
                </dl>
            </div>
            <!-- 상품카드 1개끝 -->
       </div>
     </div>
            
            <!-- Swiper 상품카드 1개 시작-->
      <!-- Swiper JS -->
      <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    
      <!-- Initialize Swiper -->
      <script>
        var swiper = new Swiper(".bestSwiper", {
            pagination: {
                        el: ".swiper-pagination",
                        type: "progressbar",
                    },
            autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
            delay : 3000,   // 시간 설정
            disableOnInteraction : true,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
            },
          slidesPerView: 5,
          spaceBetween: 30,
        });
      </script>
</div>

	
	<!-- 중간 작업공간 끝 ============================================================== -->


 	
</body>
</html>
    