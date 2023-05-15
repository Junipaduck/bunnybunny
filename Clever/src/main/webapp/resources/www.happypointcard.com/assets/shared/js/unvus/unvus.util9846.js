
/**
 * 유틸리티 스태틱 클래스.
 *
 * @group unvus
 * @namespace
 */
unvus.util = new (unvus.Class(/** @lends unvus.util */{
    /**
     * 폼 입력 내용을 json 형태로 담는다.
     * ajax 전송시 data 항목에 넣을 때 사용.
     *
     * @param {jqSelector} obj - form selector
     * @example
     * var searchParam = wonlab.util.serializeObject($('#myFormId'));
     */
    formToJson : function(obj) {
        var o = {};
        var a = obj.serializeArray();
        $.each(a, function() {
            if (o[this.name] !== undefined) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        if(typeof o['attachBag'] !== 'undefined') {
            o['attachBag'] = JSON.parse(o['attachBag']);
        }
        return o;
    },
    formToJsonStr : function(obj) {
        return JSON.stringify(this.formToJson(obj));
    },
    /**
     * function 을 호출. function 객체 혹은 function 의 이름(string)을 전달해서 호출함
     * @param {String | Function} 호출할 function(혹은 function 이름)
     * @param {Any} args function 에 전달할 파라미터
     * @returns {*} function 호출 결과.,
     */
    callFunctionByName : function(name, arg1, arg2, arg3, arg4, arg5) { // function(name, ...args) {   >> safari에서 오류
    	// var agm = (arguments.length === 1 ? [arguments[0]] : Array.apply(null, arguments));
        // var copy = Array.prototype.slice.call(agm, 1);
        if(jQuery.type(name) === "function") {
            return name(arg1, arg2, arg3, arg4, arg5);
        }else {
            return window[name](arg1, arg2, arg3, arg4, arg5);
        }
    },
    /**
     * 다운로드 링크시 URL 변동 없이 다운로드 가능하게 함.
     *
     * @param {String} uri download uri
     * @param {Object} param uri parameter
     */
    download : function(uri, param) {
        var ifr = $('<iframe />').attr('src', uri + '?' + $.param(param, true)).hide().appendTo('body');
        setTimeout(function () {ifr.remove();}, 5000);
    },
    /**
     * delegate of javascript confirm
     * @param {String} msg message
     */
    confirm : function(msg) {
        return confirm(msg);
    },
    /**
     * delegate of javascript alert
     * @param {String} msg message
     */
    alert : function(msg) {
        alert(msg);
    },
    /**
     *
     * @param fromUrl
     */
    auth : function(fromUrl) {
        var _window = window;
        if(parent && parent != this) {
            // 팝업에서 호출
            _window = window.parent;
        }
        if(typeof fromUrl === 'undefined') {
            fromUrl = _window.location.pathname+_window.location.search;
        }
        _window.location.href = rootContext + '/page/signin?_targetUrl='+encodeURIComponent(fromUrl);
    },
    // Arguments :
    //  verb : 'GET'|'POST'
    //  target : an optional opening target (a name, or "_blank"), defaults to "_self"
    openNewWindow : function(verb, url, data, target) {
        var form = document.createElement("form");
        form.action = url;
        form.method = verb;
        if (data) {
            for (var key in data) {
                var input = document.createElement("textarea");
                input.name = key;
                input.value = typeof data[key] === "object" ? JSON.stringify(data[key]) : data[key];
                form.appendChild(input);
            }
        }
        var token = $("meta[name='_csrf']").attr('content');
        var tokenInput = document.createElement("textarea");
        tokenInput.name = "_csrf";
        tokenInput.value = token;
        form.appendChild(tokenInput);
        form.style.display = 'none';
        document.body.appendChild(form);

        window.open('about:blank', target || "_self", 'width=1000,height=800,toolbar=0');
        form.target = target || "_self";
        form.submit();
    },
    hasProperty : function(obj, key) {
        return key.split(".").every(function(x) {
            if(typeof obj != "object" || obj === null || ! x in obj)
                return false;
            obj = obj[x];
            return true;
        });
    },
    jsonObjectFromPath: function(path, obj) {
        var res = path.split('.').reduce(function(o, k) {
            return o && o[k];
        }, obj);

        return res;
    },
    removeTrailingComma: function (val) {
        return val.replace(/,\s*$/, "");
    },
    //NaN을 0으로 변환
    nan2Zero: function(value, dflt)
    {
        return _.isNaN(value) ? (_.isNaN(dflt) ? 0 : dflt) : value;
    },
    ceil10: function(value)
    {
        return Math.ceil(value / 10) * 10;
    },
    isEmpty : function(data)
    {
    	if(typeof(data) == 'number' || typeof(data) == 'boolean')
        {
          return false;
        }
        if(typeof(data) == 'undefined' || data === null)
        {
          return true;
        }
        if(typeof(data.length) != 'undefined')
        {
          return data.length == 0;
        }
        var count = 0;
        for(var i in data)
        {
          if(data.hasOwnProperty(i))
          {
            count ++;
          }
        }
        return count == 0;
    },
    isNotEmpty : function(data)
    {
        return !this.isEmpty(data);
    },
    dayOfweek : function(day) {
        var week = ['일', '월', '화', '수', '목', '금', '토'];
        return typeof(day) == 'number' ? week[day] : '';
    },
    openLayerPopup : function(id) {
        $('body').append('<section class="layerpop-bg"></section>');
        $('#' + id).show();
        $('#' + id).find('button').click(function() {
            $('#'+id).hide();
            $('body section.layerpop-bg').remove();
        });
    },
    hpCheck: function(hp) {
        var re = /^(?:(010\d{4})|(01[1|6|7|8|9]\d{3,4}))(\d{4})$/;
        return re.test(hp);
    },
    errorImage: function(selector, src) {
        $(selector).on('error', document, function() {
            console.log('errerrerr')
            var $img = $(this);
            $img.off('error');
            $img.attr('src', src);
        });
    },
    // 팝업 쿠키생성
    setCookie: function(cname, cvalue, cpath) {
        if(typeof cpath == 'undefined' || cpath == '') cpath = '/';
        var d = new Date();
        var d2 = new Date(d.getFullYear(), d.getMonth(), d.getDate(), 23, 59, 59); // 오늘
        document.cookie = cname + "=" + cvalue + ";expires=" + d2.toUTCString() + ";path="+cpath;
    },
    getCookie: function(cname) {
        var name = cname + '=';
        var ca = document.cookie.split(';');
        for(var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return '';
    },
    getGeoLocation: function (mapOption) {
        var self = this;


        var geoSuccess = function (position) {

            /* Get the location data */
            var latitude = position.coords.latitude;
            var longitude = position.coords.longitude;
            var accuracy = position.coords.accuracy;

            Cookies.set('posLat', latitude);
            Cookies.set('posLon', longitude);
            Cookies.set('posAccuracy', accuracy);
        };
        var geoError = function (error) {
            switch (error.code) {
                case error.TIMEOUT:
                    console.log('TIMEOUT');
                    break;
                case error.PERMISSION_DENIED:
                    console.log('PERMISSION_DENIED');
                    Cookies.remove('posLat');
                    Cookies.remove('posLon');
                    Cookies.remove('posAccuracy');
                    break;
            }
        };

        navigator.geolocation.getCurrentPosition(geoSuccess, geoError);
    },
	/**
     * 공유하기
     * @param snsType
     * @param link
     * @param title
     * @param image
     */
    shareSns: function(snsType, link, title, image) {
        if (snsType === 'K') {
            unvus.util.shareKakao(link, title, image);
        } else if (snsType === 'F') {
            unvus.util.shareFace(link, title);
        } else if (snsType === 'B') {
            unvus.util.shareBand(link, title);
        } else if (snsType === 'S') {
            unvus.util.shareStory(link, title);
        }
    },
    /**
     * 카카오톡 공유
     * @param link
     * @param title
     * @param image
     */
    shareKakao: function(link, title, image) {
        Kakao.cleanup();
        Kakao.init($global_kakaotalk_key);

        Kakao.Link.sendDefault({
            objectType: 'feed',
            content: {
                title: title,
                description: '',
                imageUrl: image,
                link: {
                    mobileWebUrl: link,
                    webUrl: link
                }
            },
            buttons: [{
                title: '앱 실행하기',
                link: {
                    mobileWebUrl: link,
                    webUrl: link
                }
            }]
        });
    },
    /**
     * 페이스북 공유
     * @param link
     */
    shareFace: function(link, title) {
		unvus.util.sharePopup("http://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(link) + "&t=" + encodeURIComponent(title), 'face', 550, 550);
    },
    /**
     * 네이버 밴드 공유
     * @param link
     */
    shareBand: function(link, title) {
		unvus.util.sharePopup("https://band.us/plugin/share?body=" + link + "&route=www.happypointcard.com", title, 684, 682);
    },
    /**
     * 카카오스토리 공유
     * @param link
     * @param title
     */
    shareStory: function(link, title) {
        Kakao.cleanup();
        Kakao.init($global_kakaotalk_key);
        Kakao.Story.share({
            url: link,
            text: title
        });
    },
    /**
     * SNS 공유하기 이벤트 로그찍기
     * @param idx
     * @param snsType
     */
    shareEventLog: function(idx, snsType) {
        $.ajax({
            url: rootContext + '/api/event/event-share-log',
            data: JSON.stringify({
                eventseq: idx,
                snstype: snsType
            }),
            type: 'POST',
            dataType: 'text',
            success: function (res) {
                // 로그 작성은 실패하더라도 알림 없음
                // if(res.code !== '00') {
                //     alert(res.message);
                // }
            },
            error: function () {}
        });
    },
	sharePopup: function(myURL, title, myWidth, myHeight) {
		var left = (screen.width - myWidth) / 2;
		var top = (screen.height - myHeight) / 4;
		var myWindow = window.open(myURL, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=' + myWidth + ', height=' + myHeight + ', top=' + top + ', left=' + left);
	},
    /**
     * 팝업 날짜
     */
    today: function() {
        var today = new Date();
        return today.getFullYear() + '년 ' + ('0' + (today.getMonth()+1)).slice(-2) + '월 ' + ('0' + today.getDate()).slice(-2) + '일';
    }
}));


