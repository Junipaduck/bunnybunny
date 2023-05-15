<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- #footer -->
    <!-- 푸터 -->
<footer id="footer">
    <div class="section-inner">
        <div class="footer-top-area">
            <div class="chatboot_ico">
                <div class="close_btn"></div>
                <img src="${pageContext.request.contextPath }/resources/front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/common/layout/chat-boot.png" alt="chatboot">
            </div>
            <div class="footer-customer">
                <i class="icon chatboot">고객센터아이콘</i>
                <div class="number"><a href="https://answerny.ai/chatbot/projects/stn/chatbot_stn.html;" target='_blank'>챗봇 상담하기</a></div>
            </div>
        </div>
        <div class="footer-bottom-area">
            <ul class="footer-menu-list">
                <li><a href="https://www.happypointcard.com/page/customer/term.spc">회원이용약관</a></li>
                <li class="point"><a href="https://www.happypointcard.com/page/customer/term.spc?no=2">개인정보처리방침</a></li>
                <li><a href="https://www.happypointcard.com/page/customer/term.spc?no=7">전자금융거래 이용약관</a></li>
                <li><a href="https://www.happypointcard.com/page/customer/term.spc?no=3">위치기반 서비스 이용약관</a></li>
                <li><a href="https://www.happypointcard.com/page/customer/term.spc?no=5">위치정보사업 이용약관</a></li>
            </ul>
            <div class="company-info">
                <span>아이티윌2팀</span>
                <span>사업자 등록번호: 123-12-12345</span>
                <span>강지훈 박윤 배하나 양선정 위찬영 최보아</span>
                <span class="copy">Copyright ⓒ by SPC ALL RIGHTS RESERVED.</span>
            </div>
            <div class="footer-sns">
                <div class="item insta"><a href="https://www.instagram.com/happypoint_official" target="_blank" title="인스타그램 새창이동">insta</a></div>
                <div class="item facebook"><a href="https://www.facebook.com/happypointcard" target="_blank" title="페이스북 새창이동">facebook</a></div>
                <div class="item blog"><a href="https://blog.naver.com/happypoints" target="_blank" title="네이버 공식 블로그 새창이동">blog</a></div>
                <div class="item youtube"><a href="https://www.youtube.com/channel/UCjlghdluB8Ke5B7hUjENdUA" target="_blank" title="유튜브 새창이동">youtube</a></div>
            </div>
        </div>
    </div>
</footer>

</div>
    </div>

    <script>
	var $global_kakaotalk_key = "6bf8f689f98cba453ea9052ff57dad14";
</script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/plugins/jquery-3.2.0/jquery-3.2.0.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/plugins/jquery.selectric-1.11.1/jquery.selectric.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/plugins/jquery.uniform-2.2.0/jquery.uniform.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/plugins/swiper/swiper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/plugins/slick-1.8.0/slick.js"></script>

<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/js/plugins/datepicker-1.0.9/datepicker.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/js/plugins/datepicker-1.0.9/datepicker.ko-KR.js"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/js/plugins/bluebird/bluebird.js"></script>

<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/js/ui/common.ui9846.js?v=2023051200"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/pc/js/ui/common.ui.dev9846.js?v=2023051200"></script>

<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/unvus/unvus9846.js?v=2023051200"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/unvus/unvus.jq9846.js?v=2023051200"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/unvus/unvus.util9846.js?v=2023051200"></script>
<script src="${pageContext.request.contextPath }/resources/www.happypointcard.com/assets/shared/js/unvus/unvus.upload9846.js?v=2023051200"></script>
<script>
    var rootContext = '';
    var sessionUserId = null;
    $(function () {
        var token = $("meta[name='_csrf']").attr('content');
        var header = $("meta[name='_csrf_header']").attr('content');
        if(token && header) {
            $(document).ajaxSend(function(event, xhr, options) {
                xhr.setRequestHeader(header, token);
            });
        }
        $.ajaxSetup({
            contentType: "application/json",
            dataType: "json"
        });

    });
    
    // 연속된 비밀번호 체크 (true=연속됨)
	// 3개 연속 말고는 체크 할 수 없는 함수.
	function checkPwRepeat($text, $length) {
    	if ($length == undefined || $length == null || $length == "") {
    		$length = 3;
    	}
    	
    	if ($text == undefined || $text == null || $text.length < 3) {
    		return false;
    	}
    	var $textA, $textB, $textC;
    	for (var ii = 0; ii < $text.length - 2; ii++) {
			$textA = $text.substr(ii + 0, 1);
			$textB = $text.substr(ii + 1, 1);
			$textC = $text.substr(ii + 2, 1);
			if ($textA == $textB && $textB == $textC) {
				return true;
			}
			// abc, 123, ABC
			if ($textA.charCodeAt()+1 == $textB.charCodeAt() && $textB.charCodeAt()+1 == $textC.charCodeAt()) {
				return true;
			}
			// cba, 321, CBA 거꾸로 연속된 경우
			if ($textA.charCodeAt()-1 == $textB.charCodeAt() && $textB.charCodeAt()-1 == $textC.charCodeAt()) {
				return true;
			}
		}
    	
    	return false;
    	
    	// 이하 주석은 동일+연속문자까지 체크함
// 		if (!$length)
// 			$length = 4; // 글자수를 지정하지 않으면 4로 지정
// 		var i, j, k, x, y;
// 		var buff = [ "0123456789", "abcdefghijklmnopqrstuvwxyz",
// 				"ABCDEFGHIJKLMNOPQRSTUVWXYZ" ];
// 		//~!@#$%*={}[],.
// 		var src, src2, ptn = "";
// 		for (i = 0; i < buff.length; i++) {
// 			src = buff[i]; // 0123456789
// 			src2 = buff[i] + buff[i]; // 01234567890123456789
// 			for (j = 0; j < src.length; j++) {
// 				x = src.substr(j, 1); // 0
// 				y = src2.substr(j, $length); // 0123
// 				ptn += "[" + x + "]{" + $length + ",}|"; // [0]{4,}|0123|[1]{4,}|1234|...
// 				ptn += y + "|";
// 			}
// 		}
// 		console.log(ptn);
// 		console.log(ptn.replace(/.$/, ""));
// 		ptn = new RegExp(ptn.replace(/.$/, "")); // 맨마지막의 글자를 하나 없애고 정규식으로 만든다.
// 		if (ptn.test($length))
// 			return true;
// 		return false;
	}
</script>
<script type="text/javascript">
        //<![CDATA[
        var page = {};

        (function () {
            // init
            $(function () {
                // 초기화 코드
                $('.sns-tab li.all').addClass('on');

                /* event bind: 오늘 그만 보기 */
                $('._nomore-today').on('click', page.noMoreToday);
                $('.banner-hit').on('click', page.bannerHitLog);  // 배너클릭
                page.getSocialList('all');
                page.openEmergencyPopup();
                
                //SDAPP-7623 에스피씨 네트웍스 사명 변경에 대한 공지 요청
                var strDate = new Date();
                var yyyy = strDate.getFullYear();
                var mm = (strDate.getMonth() + 1 >= 10 ? '' : '0') + (strDate.getMonth() + 1);
                var dd = (strDate.getDate() >= 10 ? '' : '0') + strDate.getDate();
                var today = yyyy + '' + mm + '' + dd;
                if(today=='20210118'){
                    if(unvus.util.getCookie('nomoretoday') !== 'Y'){
                        popupBase.layerPopup('#temporaryNoticePopup');
                    }
                }

                page.tabIndex();
                
            });

            // functions
            page = {
                changeTab: function(type) {
                    //TODO 권한 생성시 alert 삭제
                    if (type === 'instagram' || type === 'facebook') {
                        alert('준비 중입니다.');
                        return;
                    }

                    $('.sns-tab li').removeClass('on');
                    $('.sns-tab li.' + type).addClass('on');
                    page.getSocialList(type);
                },
                getSocialList: function(type) {
                    $.ajax({
                        url: '/api/socialList',
                        data: {type: type},
                        type: 'get',
                        success: function (res) {
                            if(res.code !== '00') {
                                alert(res.message);
                            } else {
                                var data = res.result;
                                // 여기 로직
                                var html = '';
                                if(data.length > 0) {
                                    $.each(data, function (key, value) {
                                        var link = '';
                                        if(value.snstype == 'youtube') {
                                            link = 'https://www.youtube.com/watch?v=' + value.link;
                                        } else {
                                            link = value.link;
                                        }

                                        html += '<li class="item">';
                                        html += '    <a href="'+ link +'" target="_blank">';
                                        html += '        <div class="image image-controller"><img src="' + value.picture + '" alt="' + value.caption + '" class="center-mode"></div>';
                                        html += '        <div class="text-wrap">';
                                        html += '            <div class="cell">';
                                        html += '                <div class="sns-text">'+ (value.caption == null ? '' : value.caption) +'</div>';
                                        html += '            </div>';
                                        html += '        </div>';
										if (value.snstype == 'instagram') {
											//html += '<div class="sns-icon"><img src="https://front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/main/icon/icon-instagram.png" alt="인스타그램"></div>';
										} else if (value.snstype == 'facebook') {
											//html += '<div class="sns-icon"><img src="https://front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/main/icon/icon-facebook.png" alt="facebook"></div>';
										} else if (value.snstype == 'youtube') {
											//html += '<div class="sns-icon"><img src="https://front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/main/icon/icon-youtube.png" alt="youtube"></div>';
										} else if (value.snstype == 'blog') {
											//html += '<div class="sns-icon"><img src="https://front.happypointcard.com/upfiles/appMain/resources/ha-web/images/pc/main/icon/icon-blog.png" alt="블로그"></div>';
										}
										html += '    </a>';
										html += '</li>';
									});

                                    $('#socialList').html(html);

                                    //이미지 센터 정렬
                                    _thumbCenter.fuInit('.image-controller');
                                }
                            }
                        }
                    });
                },
                openEmergencyPopup: function () {
                    $.ajax({
                        type: 'get',
                        url: '/api/emergency/notice',
                        success: function (res) {
                            if(res.code === '00'){
                                var data = res.result;
                                $('#emergency-img').prop('src', 'https://front.happypointcard.com' + data['imgpath']);
                                $('#emergency-img').prop('alt', data['imgname']);
                                if(unvus.util.getCookie('nomoretoday') !== 'Y'){
                                    popupBase.layerPopup('#emergencyNoticePopup');
                                }
                            }
                        },
                        error: function (rq, status, err) {
//                             alert('오류가 발생했습니다.');
                            console.log(err);
                        }
                    });
                },
                noMoreToday: function () {
                    unvus.util.setCookie('nomoretoday', 'Y');
                    popupBase.closePopup('#emergencyNoticePopup');
                    popupBase.closePopup('#temporaryNoticePopup');
                },
                bannerHitLog: function () {
                    var bannerId = $(this).data('bannerid');
                    var areaCode = "PW_00001";
                    $.ajax({
                        contentType: 'application/json',
                        url: '/api/common/banner-hit-log',
                        type: 'post',
                        data: JSON.stringify({
                            bannerId : bannerId,
                            areaCode : areaCode
                        }),
                        success: function (res) {
                            if(res.code !== '00') {
                                console.log(res.message);
                            }else {
                                console.log("log success");
                            }

                        }
                    });
                },
                tabIndex: function () {
                    $(".paging, .benefit, .partner-company-area, .partner-name").attr("tabindex",0);
                }
            };
        })();
        //]]>
    </script><script type="text/javascript">
        //<![CDATA[
        var headerPage = {};

        (function () {
            // init
            $(function () {
                // 나의 포인트 조회
                headerPage.tabIndex();
            });

            // functions
            headerPage = {
                goLogin: function (url) {
                    if (confirm("로그인 후 이용 가능해요. 로그인 하시겠어요?")) {
                        document.location.href = url;
                    } else {
                        return false;
                    }
                },
                layer_popup_1: function (url, code, storeCd, agree_title, agree_item, pageCd) {
                    console.log("layerpopup1 함수");

                    $('#W_RURL').val(url);
                    $('#storeCd').val(storeCd);
                    $("#pageCd").val(pageCd);
                    $("#code").val(code);
                    $("#guide").css("display", "block");		// 제휴 쇼핑몰 안내 레이어 팝업

                    headerPage.layer_popup_2(url, code, storeCd, agree_title, agree_item);		//실질적인 레이어 팝업 실행
                    popupBase.layerPopup('#popupPartnerShopping');
                },
                layer_popup_2: function (url, code, storeCd, agree_title, agree_item) {
                    console.log("layerpopup2 함수");

                    $('#code').val(code);
                    $.ajax({
                        type:"post",
                        url:"/page/alliance/agree",
                        data: JSON.stringify({"storeCd":storeCd, "code":code, "agree_item":agree_item, "url":url, "agree_title":agree_title}),
                        dataType: 'html',
                        success:function(data){
                            if (data !== '' && data != null) {
                                $('#popupPersnalInfo').remove();
                                var $agreement = $('#agreement');
                                $agreement.empty();
                                $agreement.append(data);		// 정보 제공 동의 팝업에 띄울 값들 세팅하여 DOM 객체 가져옴
                            }
                        },
                        error: function(trequest,status,error) {
                            console.log("trequest:" + trequest);
                            console.log("status:" + status);
                            console.log("error:" + error);

                        }
                    });
                },
                layer_popup_3: function () {
                    console.log("layerpopup3 함수");

                    popupBase.closePopup('#popupPartnerShopping');		//제휴 쇼핑묠 안내 레이어 팝업은 가려주고

                    if("Y" === $('#code').val()) {
                        console.log('code==Y');
                        // 일전에 동의 했다면
                        headerPage.onSubmit();
                    }else{
                        console.log('code==N || code==null');
                        // 일전에 동의 하지않았다면 동의 팝업을 보여준다.
                        popupBase.layerPopup('#popupPersnalInfo');
                    }

                },
                onSubmit: function (obj) {
                    if(obj !== undefined && obj.url !== undefined) {
                        $('#W_RURL').val(obj.url);
                    }
                    if(obj !== undefined && obj.storeCd !== undefined) {
                        $('#storeCd').val(obj.storeCd);
                    }
                    $('#headerForm').submit();	// 제출

                },
                agree: function () {
                    console.log('agree click');
                    $('#agreeForm').submit();
                },
                goVoc: function () {
                    if (false) {
                        var popOption = 'width=920, height=700, resizable=no, scrollbars=no, status=no;';
                        window.open('https://www.happypointcard.com/page/customer/voc.spc', '', popOption);
                    } else {
                        headerPage.goLogin('https://www.happypointcard.com/sso/business.jsp');
                    }
                },
                goWithEncodeUrl: function(url){
                    location.href=encodeURI(url);
                },
                showSubGnb: function(e){
                    var $this = $(e);
                    $this.parent().find('.sub-gnb').show();
                },
                tabIndex: function (){
                    // PC 공통 tabindex
                    $("h1, h2, h3, h4, h5, img, th, td, radio").attr("tabindex",0);
                    $(".header-logo").attr("tabindex",-1);
                    $(".img, .title, .sub-text, .sub-info, .text, .article, .date, .subtitle1, .subtitle2, .info, .type, .thumbnail-area, .label, .d-day, .title-area.row, .info-text, .description, .question").attr("tabindex",0);
                }
            };
        })();
        //]]>
    </script><script type="text/javascript" src="../../assets/pc/hyundai-oil-bank/js/jquery.cookie.js"></script>
    <script type="text/javascript">
        //<![CDATA[
        var footerPage = {};

        (function () {
            // init
            $(function () {
                $('#family').on('change', footerPage.move);
                $('.chatboot').on('click',footerPage.chatboot);
                $('.close_btn').click(function () {
                    document.cookie = "chatboot_flag=3ad365f6b38732b5531393594f8705f878034c01298459e7e049e75e94e616106fa141e506f6d0e8c0b20cb45342150f;path=/page;secure";
                    $('.chatboot_ico').hide();
                });
				$('.chatboot_ico').show();

                $('.chatboot_ico img').click(function () {
                    footerPage.chatboot();
                });
                footerPage.tabIndex();
            });

            // functions
            footerPage = {
                move: function () {
                    var url = $('#family option:selected').val()
                    window.open(url);
                },
                chatboot:function(){
                    window.location.href="https://answerny.ai/chatbot/projects/stn/chatbot_stn.html";
                },
                tabIndex: function (){
                    $(".number, .time>span, .company-info>span").attr("tabindex",0);
                }

            };
        })();
        //]]>
    </script><!-- 90일 비밀번호 변경 팝업 -->
    </body>

<!-- Mirrored from www.happypointcard.com/page/main/index.spc by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 May 2023 15:55:15 GMT -->
</html>
