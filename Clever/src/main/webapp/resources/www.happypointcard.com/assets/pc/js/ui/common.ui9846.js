/*! IE-Checker v1.0.0 | (c) 2007-2015 The GrotesQ | https://github.com/Unk/IE-Checker */
!function(){var e=navigator.userAgent.toLowerCase();if(-1!=e.indexOf("msie")||-1!=e.indexOf("trident")){var a=11;e=/msie ([0-9]{1,}[\.0-9]{0,})/.exec(e),e&&(a=parseInt(e[1]));var i="";i+=" is-ie",i+=" ie"+a;for(var t=a+1;11>=t;t++)i+=" lt-ie"+t;document.getElementsByTagName("html")[0].className+=i}}();

/**
 * ui Script
 * --------------------------------
 */


(function(exports, $){
	var exports = exports;
	var $win = $(window);
	var $docu = $(document);
	var $html = $('html');
	var $body = $('body');
	var $header = $('#header');
	var sliderArr = [];

	$docu.ready(function() {
		$html = $('html');
		$body = $('body');
		$header = $('#header');

		// 디자인 input요소
		uniformInit();

		// 셀렉트
		selectricInit();

		// input value 삭제 기능
		inputValueDelete();

		// tab 자동 width조정
		tabSquareWidth();

		// 아코디언
		accordionClick();

		// 슬라이드
		sliderMaker();

		// gnb 토글
		headerController.gnbToggle();

		// 고객센터 토글
		headerController.csMenuToggle();

		// 전체메뉴 토글
		headerController.allMenuToggle();

		// datepicker
		datepickerContainer();

		//이미지 센터 정렬
		_thumbCenter.fuInit('.image-controller');
	});

	var _thumbCenter = {
		target: '',
		fuInit: function(factor) {
			'use strict'
			var _ = this;
			_.fuSize(factor);
		},
		fuSize: function(factor) {
			'use strict'
			var _ = this;
			_.target = $(factor);
			if(!_.target.length) return;
			$.each(_.target, function(i) {
				var tg = _.target.eq(i);
				var tgI = tg.find('img.center-mode');
				var tgW = tg.outerWidth();
				if (tgI.outerWidth()) {
					_.fuCalc(tgI);
				} else {
					tgI.on('load resize', function (){
						_.fuCalc(tgI);
					})
				}
			});
		},
		fuCalc: function (img) {
			var tgI = img.jquery ? img : $(img);
			var tg = tgI.parents('.image-controller');
			if(!tg.length) return;
			var tgW = tg.outerWidth();
			var tgH = tg.outerHeight();
			var divAspect = tgW / tgH;
			var imgAspect = tgI[0].naturalWidth / tgI[0].naturalHeight;
			if(imgAspect <= divAspect) {
				tgI.css('width', '100%');
			} else {
				tgI.css({'height':'100%','max-width':'none'});
			}
			tg.addClass('loaded');
		}
	}

	function datepickerContainer(){
		var $wrap = $('.date-picker-wrap');
		var $datePicker = $wrap.find(".calculate-group");

		$datePicker.each(function(i){
			var $calc = $datePicker.eq(i);
			var _input = $calc.find('input');
			var _icon = $calc.find('.icon');
			_input.on('show.datepicker', function (e,r){
				var a = $('.datepicker-panel');
				$.each(a, function (i){
					var c = a.eq(i);
					var x = c.find('.date-close');
					// console.log(x.length);
					if (!x.length) {
						x = $('<button type="button">캘린더 닫기</div>');
						x.addClass('date-close');
						c.append(x);
						x.on('click', function (e){
							_input.datepicker('hide');
						})
					}
				})
			})
			_input.datepicker({
				language: 'ko-KR',
				format: 'yyyy.mm.dd',
				autoPick: true,
				weekStart: 0,
				yearFirst: true,
				yearSuffix: false,
				trigger: _icon,
				inline: true,
				months: ['. 01','. 02','. 03','. 04','. 05','. 06','. 07','. 08','. 09','. 10','. 11','. 12'],
				offset: 8,
				filter: function(date, view, e) {
					// console.log(date.getMonth(), _input.datepicker(container));
					// if (date.getDay() === 0 && view === 'day') {
					// 	return false;
					// }
				}
			});

			// console.log(_input.datepicker)
		})
	}
	var headerController = {
		csMenuToggle : function(){
			var $csMenu = $('.header-aside-menu .csmenu');

			$csMenu.on({
				mouseover: function (){
					var $this = $(this);
					$this.addClass('on').find('.menu-open').show();
				},
				mouseout: function (){
					var $this = $(this);
					$this.removeClass('on').find('.menu-open').hide();
				}
			})
		},
		// gnb 메뉴
		gnbToggle : function(){
			var $gnbMenu = $('.gnb .gnb-menu');

			$gnbMenu.on({
				mouseover: function (){
					var $this = $(this);
					$this.find('.sub-gnb').show();
				},
				mouseout: function (){
					var $this = $(this);
					$this.find('.sub-gnb').hide();
				}
			})
		},
		// 전체메뉴
		allMenuToggle : function(){
			var $allMenu = $('.header-all-menu');
			var $menuBtn = $('#header .btn-allmenu');
			var $closeBtn = $allMenu.find('.btn-close');

			$menuBtn.on('click', function (){
				$allMenu.show();
				bodyScrollBlock(true);
			});
			$closeBtn.on('click', function (){
				$allMenu.hide();
				bodyScrollBlock(false);
			});
		}
	}

	function accordionClick() {
		var accodionList = '.accordion-list'; // li
		var accodionBtn = '.accordion-btn';
		var accodionBody = '.accordion-body';
		var $accordion = $(accodionList);
		$('body').on('click',accodionBtn,function (){
			var $this = $(this);
			var $accodionList = $this.closest(accodionList);
			var $accodionBody = $accodionList.find(accodionBody);
			if( !$accodionBody.length ) return;

			if( $accodionList.hasClass('single-toggle') ){
				$accodionList.toggleClass('on');
			} else {
				$accodionList.toggleClass('on').siblings('.accordion-list').removeClass('on');
			}
		})
	}

	function tabSquareWidth(){
		var $tabs = $('.width-auto .tab');

		$tabs.each(function (i){
			var $tab = $tabs.eq(i);
			var $tabList = $tab.find('li');
			var length = $tabList.length;
			var _width = 100 / length;

			$tabList.css('width',_width + '%');
		})
	}

	function inputValueDelete() {
		// input 에 .no-delete가 있으면 작동 안함
		var $input = $('input[type="text"], input[type="password"], input[type="number"], input[type="tel"],input[type="email"], input[type="search"]').not('.no-delete');
		if(!$input.length) return;
		$.each($input, function(i) {
			var $inputs = $input.eq(i);
			var $btnDelete = $inputs.siblings('.input-element').find('.btn-value-delete');
			var $doubleCheck = $inputs.siblings('.double-chk'); // 중복확인버튼
			if( $inputs.val() != "" && !$inputs.attr('disabled') && !$inputs.attr('readonly')){
				$btnDelete.addClass('on');
				$doubleCheck.addClass('on').parent('.input-cover').addClass('input-btn');
			}
			inputEventFn($inputs,$btnDelete,$doubleCheck)
		})
	}

	function inputEventFn(target,btn){
		target.on('keyup',function (){
			if( target.val() == "" ){
				btn.removeClass('on');
			} else {
				btn.addClass('on');
			}
		})
		btn.on('click',function (e){
			e.preventDefault();

			target.val("");
			target.removeClass('space');
			target.trigger('keyup');
			btn.removeClass('on');
		})
	}

	function sliderMaker() {
		// 슬라이드 초기 페이징 셋팅
		function sliderInitPaging(el){
			if(el) {
				el.on('init',function (){
					var current = el.realIndex + 1;
					var total = el.$el.find('.swiper-slide:not(.swiper-slide-duplicate)').length;
					var $currentEl = el.$el.find('.current');
					var $totalEl = el.$el.find('.total');

					$currentEl.text(current);
					$totalEl.text(total);
				})
			}
		}

		// 슬라이드시 페이징 셋팅
		function sliderChangePaging(el){
			if(el) {
				el.on('slideChange',function (){
					var current = el.realIndex + 1;
					var $currentEl = el.$el.find('.current');

					$currentEl.text(current);
				})
			}
		}

		// 자동슬라이드 컨트롤
		function autoController(swiper){
			var $btn = $('.swiper-container .btn-controller');

			$btn.on('click',function(){
				var $this = $(this);
				if($this.hasClass('pause')) {
					swiper.autoplay.stop();
					$this.removeClass('pause').addClass('play');
				} else if($this.hasClass('play')) {
					swiper.autoplay.start();
					$this.removeClass('play').addClass('pause');
				}
			})
		}

		/* 메인 키비주얼 슬라이드 */
		var $mainKeyVisualEl = $('.main-keyvisual-slider .swiper-container');
		var mainKeyVisualSlider;

		$mainKeyVisualEl.each(function (i){
			var $sliderEl = $mainKeyVisualEl.eq(i);
			mainKeyVisualSlider = sliderInit($sliderEl,{
				init: false,
				loop: true,
				slidesPerView :1,
				autoplay: {
					delay : 4000,
					disableOnInteraction: false,
				},
				navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
				},
			});

			if($mainKeyVisualEl.length){
				// 페이징 셋팅
				sliderInitPaging(mainKeyVisualSlider);
				mainKeyVisualSlider.init();
				sliderChangePaging(mainKeyVisualSlider);

				// 자동슬라이드 컨트롤
				autoController(mainKeyVisualSlider);
			}
		})

		/* 유니세프 활동 슬라이드 */
		var $unicefActivityEl = $('.unicef-activity-slider .swiper-container');
		var unicefActivitySlider;

		$unicefActivityEl.each(function (i){
			var $sliderEl = $unicefActivityEl.eq(i);
			unicefActivitySlider = sliderInit($sliderEl,{
				init: true,
				loop: false,
				spaceBetween: 70,
				slidesPerView : 'auto',
				// autoplay: {
				// 	delay : 4000,
				// 	disableOnInteraction: false,
				// },
				navigation: {
					nextEl: '.unicef-activity-slider .swiper-button-next',
					prevEl: '.unicef-activity-slider .swiper-button-prev',
				},
			});
		})
	}

	function sliderInit(target, opt){
		if (!target.length) return;
		var slider = new Swiper (target,opt);

		sliderArr.push(slider);
		return slider;
	}

	function sliderUpdate(){
		$.each(sliderArr,function (i){
			sliderArr[i].update();
			sliderArr[i].scrollbar.updateSize();
		})
	}

	// 스크롤 막는 함수
	var scrollHeight = 0;
	function bodyScrollBlock(chk) {
		if (chk) {
			scrollHeight = ($docu.scrollTop() );
			$('body').addClass('hidden');
			$('body').css({
				'position': 'fixed',
				'top': -(scrollHeight)+'px',
				'width': '100%',
				'height' : '100%'
			})
		} else {
			$('body').removeAttr('style');
			$('body').removeClass('hidden');
			$('html, body').scrollTop(scrollHeight);
		}
	}


	function selectricInit(){
		var $selectricEl = $('.select-tric')
		if( !$selectricEl.length ) return;
		$.each($selectricEl,function (i){
			var $this = $(this);

			if( $this.hasClass('option-icon') ){
				var labelFix;

				$this.selectric({
					nativeOnMobile : false,
					preventWindowScroll: false,
					onInit: function(itemData,index) {
						var $this = $(this);
						var $selected = $this.find('option:selected');

						if( $this.hasClass('label-fix') ){ // 라벨 고정 셀렉트 init
							labelFix = $this.find('option').eq(0).text();
							$this.parent().siblings('.selectric').find('.label').text(labelFix);
						} else {
							optionSet($selected);
						}

						// 입고알림 이벤트 생성
						var $btns = $this.parent().siblings('.selectric-items').find('.btn-notification');
						$btns.on('click', function (e){
							var $btn = $(this);
							var obj = {};
							obj.btn = $btn;
							$win.trigger('sold-out-notification-click', obj);
						})
					},
					optionsItemBuilder: function(itemData, element, index){
						var soldoutTag,
								notiTag,
								valueText;
						if( itemData.value.length ){ // value 값 있을 경우
							valueText = itemData.value;

							// 옵션태그 init 함수
							function tagCreate(dataName,fn){
								var data = $(itemData.element[0]).attr(dataName);
								var itemTag;
								// data 있거나 값이 있을경우
								if( data != undefined && data != "" ){
									itemTag = fn(data);
								} else {
									itemTag = '';
								}
								return itemTag;
							}

							// 가격변동 태그 함수
							function priceFn(value){
								return '<span class="price-change">('+value+')</span>';
							}

							// 사은품 이름 태그 함수
							function giftNameFn(value){
								return '<span class="gift">사은품 : '+value+'</span>';
							}

							// 사은품 이미지 태그 함수
							function giftImgFn(value){
								return '<span class="gift-img"><img src='+value+'></span>';
							}

							// 컬러 태그 함수
							function colorFn(value){
								return '<span class="color-icon" style="background-image: url(' + value + ')"></span>';
							}

							// soldout 클래스 있을경우
							if( itemData.className.indexOf('sold-out') != -1){
								itemData.disabled = true;
								soldoutTag = '<span class="soldout-text">(일시품절)</span>';
								if (itemData.className.indexOf('notification') != -1 ){
									notiTag = '<button type="button" class="btn-notification">입고알림</button>'
								} else {
									notiTag = '';
								}
							} else { // soldout 클래스 없을 경우
								soldoutTag = '';
								notiTag = '';
							}

							return '<div class="cell">' +
							tagCreate('data-color',colorFn) +
							tagCreate('data-gift-src',giftImgFn) +
							'<div class="option-area">' + valueText +
							tagCreate('data-price-change',priceFn) +
							tagCreate('data-gift-name',giftNameFn) +
							'</div>' + soldoutTag + notiTag + '</div>';
						} else { // value 값 없을경우
							return '<div class="cell">' + itemData.text + '</div>';
						}
					},
					onChange: function(element,idx) {
						var $this = $(this);
						var $selected = $this.find('option:selected');
						var $options = $this.find('option');
						if( $this.hasClass('label-fix') ){ // 라벨 고정 셀렉트 라벨 셋팅
							labelFix = $options.eq(0).text();
							$this.parent().siblings('.selectric').find('.label').text(labelFix);
						} else { // 라벨 고정 아닐경우
							optionSet($selected);
						}
					},
				});

				// 컬러,사은품 셋팅
				function optionSet(el){
					var attrData;
					if(dataFilter(el,'data-color')){
						attrData = 'data-color';
					} else if(dataFilter(el,'data-gift-src')){
						attrData = 'data-gift-src';
					} else {
						attrData = '';
						if( dataFilter(el,'data-price-change')){
							attrData = 'data-price-change';
						}
					}

					changeOptionInit($this,attrData);
				}

				// data 조건 함수
				function dataFilter(el,data){
					return el.attr(data) != "" && el.attr(data) != undefined;
				}

				// 컬러,사은품 init 함수
				function changeOptionInit(element,attr){
					var iconClass,
							valueText,
							changePrice,
							colorTag,
							$selected = element.find('option:selected');

					// value 값 있을경우
					if( $selected.val() == '' ){
						valueText = $selected.text();
					} else {
						valueText = $selected.val();
					}

					if( attr == 'data-color' ){
						iconClass = "color-icon";
					} else if( attr == 'data-gift-src' ){
						iconClass = "gift-img";
					} else if( attr == 'data-price-change' ){
						var price = $selected.attr(attr);
						changePrice = '<span class="price-change">('+price+')</span>';
					} else {
						iconClass = '';
					}
					// 컬러 데이터 여부 체크
					if (dataFilter($selected,attr)){
						// 컬러 데이터 값 체크
						var bgColor = $selected.attr(attr);
						colorTag = ' <span class=' + iconClass +' style="background-image: url(' + bgColor + ')"></span> '+valueText+'';
						if( $selected.attr('data-price-change') && !$selected.attr('data-color') ){
							colorTag = valueText + changePrice;
						}
					} else {
						// 컬러 데이터 없을경우
						colorTag = valueText;
					}
					element.parent().siblings('.selectric').find('.label').text('').prepend(colorTag);
				}
			} else {
				$this.selectric({
					nativeOnMobile : false,
				});
			}
		})
	}


	function skipLink() {
		var $skips = $('.skip-link');
		$.each($skips, function(i) {
			var $skip = $skips.eq(i);
			var $btns = $skip.find('a');
			var actNum = 0;
			$.each($btns, function(i) {
				var $btn = $btns.eq(i);
				$btn.on({
					'click': function(e) {
						e.preventDefault();
						tabActive($btn);
					}
				});
				if ($btn.parent('li').hasClass('on')) {
					actNum = i;
				}
			})
			tabActive($btns.eq(actNum));
		})
	}

	function tabActive(btn) {
		var tg = btn.attr('href');
		var $tg = (tg.indexOf("#") == 0) ? $(tg) : {};
		btn.parent('li').addClass('on').siblings('li').removeClass('on');
		if ($tg.length) $tg.addClass('on').siblings('.skip-article').removeClass('on');
	}

	function scrollAnimate(value,time){
		$('html,body').animate({scrollTop:value},time || 300);
	}

	var $uniformObj;
	function uniformInit () {
		$uniformObj = $('input[type="checkbox"]:not(.no-uniform), input[type="radio"]:not(.no-uniform)');
		$uniformObj.uniform();

	}
	function uniformUpdate() {
		$.uniform.update();
	}

	// 레이어팝업
	var popupBase = {
		targetLayer : '',
		guideZindex : 1020,
		targetArr : [],
		freezeTop : 0,
		popupObj : {},
		popupSetTimer : null,
		oldHeight : 0,
		layerPopup : function(obj) {
			'use strict'
			var $obj = (typeof obj === 'string') ? $(obj) : obj ;

			popupBase.layerPopupInit($obj);
		},
		layerPopupInit: function($obj) {
			'use strict'
			var $obj = $obj,
				$closeBtn = $obj.find('.close, .fn-close, .btn-close');

			popupBase.targetLayer = $obj;
			$.each(popupBase.targetArr, function(i) {
				if (popupBase.targetArr[i].attr('id') == $obj.attr('id')) popupBase.targetArr.splice(i,1);
			})
			popupBase.targetArr.push($obj);

			$obj.css({
				'display': 'block',
				'z-index': popupBase.guideZindex + (popupBase.targetArr.length + 1)
			});

			// 이중팝업 닫기 버튼 눌렀을때 스크롤 막기
			if (popupBase.targetArr.length == 1) {
				if( !$body.hasClass('layer-open') ) {
					bodyScrollBlock(true);
				}
			}
			$body.append($obj);

			$closeBtn.click(function (e) {
				e.preventDefault();
				popupBase.closePopup('#'+$obj.attr('id'));
			});
		},
		popupCloseAllFn : function() {
			'use strict'

			$.each(popupBase.targetArr, function(i) {
				popupBase.closePopup();
			});
		},
		closePopup : function(id) {
			var $tg = id ? $(id) : popupBase.targetArr[popupBase.targetArr.length - 1] ;
			$tg.css({ 'display': 'none', 'z-index': 0 });
			$.each(popupBase.targetArr, function(i) {
				if (popupBase.targetArr[i].attr('id') == $tg.attr('id')) {
					popupBase.targetArr.splice(i,1);
					return false;
				}
			})
			popupBase.targetLayer = '';

			// $win.off('resize',popupBase.resizePopup);

			// 이중팝업 닫기 버튼 눌렀을때 스크롤 막기
			if (popupBase.targetArr.length == 0) {
				if( !$body.hasClass('layer-open') ) {
					bodyScrollBlock(false);
				}
			}
		},
		// 모바일에서는 resizePopup 함수 사용안함
		resizePopup : function (){
			var $obj = popupBase.targetLayer;
			var objH = $obj.height();
			var $popWrap = $obj.find('.popup-wrapper');
			var $popInner = $obj.find('.popup-inner');
			var $popContent = $obj.find('.popup-content');
			var popHeaderH = $obj.find('.popup-head').outerHeight(true) || 0;
			var popFooterH = $obj.find('.popup-footer').outerHeight(true) || 0;
			var borderWidth = 2;

			var popH = $popContent.outerHeight(true) + popHeaderH + popFooterH + borderWidth;
			$popWrap.css('height',Math.min(objH,popH));
		}
	};

	exports.popupBase = popupBase;
	exports.uniformInit = uniformInit;
	exports.uniformUpdate = uniformUpdate;
	exports.selectricInit = selectricInit;
	exports._thumbCenter = _thumbCenter;

})(this, this.jQuery);

