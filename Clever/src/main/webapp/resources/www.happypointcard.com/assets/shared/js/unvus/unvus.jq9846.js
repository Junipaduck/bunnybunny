/**
 * @name jQuery.fn
 * @class
 * @group JQuery
 * Extension
 */
unvus.jq = function($) {
    /**
     * jquery selector 엘리먼트 존재 여부 확인
     *
     * @name jQuery.fn#exists
     * @method
     * @returns {boolean}
     * @example
     * if($('td.even').exists()) {
     *    // do something
     * }
     */
    $.fn.exists = function () {
        return $(this).length !== 0;
    };

    /**
     * selector 로 스크롤 이동
     * @name jQuery.fn#scrollToMe
     * @method
     * @example
     * $('div.top').scrollTmMe();
     */
    $.fn.scrollToMe = function (additionalOffset) {
        $('html, body').animate({ scrollTop: $(this).offset().top - (!isNaN(additionalOffset) ? Number(additionalOffset) : 0) }, 'slow');
    };
    $.fn.errorImage = function (src) {
        this.each(function(){
            var $img = $(this);
            $img.on('error', function() {
                $img.off('error').attr('src', src);
            });
            $img.attr('src', $img.attr('src'));
        });
    };

    /**
     * 해당 엘리먼트를 숫자만 입력 가능하게 함
     *
     * @name jQuery.fn#numOnly
     * @method
     * @param {Boolean} [includeDot=false] 소수점 허용 여부
     */
    $.fn.numOnly = function(includeDot) {
        this.each(function(){
            $(this).css(
                {'imeMode':'disabled'}
            ).on('keyup', function(){
                var _this = $(this);
                var value = _this.val().match(/[^0-9]/g);
                if(value!=null) {
                    _this.val(_this.val().replace(/[^0-9]/g,''));
                }
            }).on('keydown', function (e) {
                var key = e.which || e.charCode || e.keyCode || 0;
                // allow backspace, tab, delete, arrows, numbers and keypad numbers ONLY
                return (
                    key == 8 ||
                    key == 9 ||
                    key == 86 ||
                    key == 109 ||
                    key == 189 ||
                    key == 46 ||
                    (includeDot && key == 110) || (includeDot && key == 190) ||
                    (key >= 37 && key <= 40) ||
                    (key >= 48 && key <= 57) ||
                    (key >= 96 && key <= 105));
            });
        });
    };

    $.fn.phoneMask = function () {
        this.each(function () {
            var $this = this;

            $(this).on('keyup', function () {
                var _this = $(this);
                var trimVal = _this.val().replace(new RegExp('-', 'g'), '');

                if (trimVal.length <= 9) {
                    if (trimVal.startsWith('02')) {
                        maskPhone('99[-9{3}][-9{4,5}]', trimVal);
                    } else {
                        maskPhone('999[-9{3}][-9{4,5}]', trimVal);
                    }
                } else if (trimVal.length === 10) {
                    if (trimVal.startsWith('02')) {
                        maskPhone('99[-9{4}][-9{4,5}]', trimVal);
                    } else {
                        maskPhone('999[-9{3}][-9{4,5}]', trimVal);
                    }
                } else if (trimVal.length >= 11) {
                    maskPhone('999[-9{4}][-9{4}]', trimVal);
                }

                function maskPhone(mask, trimVal) {
                    if (_this.data('currMask') !== mask || typeof $this.inputmask === 'undefined') {
                        if ($this.inputmask) {
                            $this.inputmask.remove();
                        }
                        _this.val(trimVal);
                        Inputmask({ mask: [mask], 'placeholder': '', greedy: false }).mask($this);
                        _this.data('currMask', mask);
                        $this.dispatchEvent(new Event('input', { bubbles: true }));
                    }
                }
            });
        });
    };

    /**
     * 해당 엘리먼트 앞뒤 공백 제거
     * @name jQuery.fn#trims
     * @method
     * @example
     * $('input').trims();
     */
    $.fn.trims = function() {
        this.each(function(){
            var $this = $(this);
            $this.val($.trim($this.val()));
        });
    };

    /**
     * 동적 rowspan
     * 지정된 column 의 row 중 cell 내용이 동일하면 자동으로 rowspan 처리를 한다
     *
     * @name jQuery.fn#rowspan
     * @method
     * @param {Number} colIdx rowspan 할 column 인덱스 - 1부터 시작
     * @param {Object} option 옵션 객체
     * @param {Boolean} [option.unVisible=false] visible 하지 않은 td 또한 같이 처리 할 것인지 여부
     * @param {String} thTd td 가 아닌 th 에 대해 처리 하고 싶다면 'th' 값을 넣어준다.
     * @example
     * $('#mytable').rowspan(5, {unVisible:true});
     */
    $.fn.rowspan = function(colIdx, option, thTd) {
        var td = 'td';
        if(typeof thTd != 'undefined') {
            td = thTd;
        }

        return this.each(function() {
            var that;
            $('tr', this).each(function(row) {
                var temp = td + ':eq(' + colIdx + '):visible';
                if(option.unVisible){
                    temp = td + ':eq(' + colIdx + ')';
                }
                $(temp, this).each(function(col) {
                    $(this).show();
                    $(this).removeAttr('rowSpan');

                    if ($.trim($(this).html()) == $.trim($(that).html())) {
                        rowspan = $(that).attr("rowSpan");
                        if (rowspan == undefined) {
                            $(that).attr("rowSpan", 1);
                            rowspan = $(that).attr("rowSpan");
                        }
                        rowspan = Number(rowspan) + 1;
                        $(that).attr("rowSpan", rowspan); // do your action
                        // for the colspan
                        // cell here
                        $(this).hide(); // .remove(); // do your action for the
                        // old cell here
                    } else {
                        that = this;
                    }
                    that = (that == null) ? this : that; // set the that if
                    // not already set
                });
            });
        });
    };

    /**
     * 체크박스 전체 선택 기능
     * 전체 선택 체크박스를 selector 로 가져가고, 대상이 되는 체크박스들을 파라미터로 전달.
     *
     * @name jQuery.fn#toggleChecker
     * @method
     * @param {String} itemsSelector 전체 선택의 대상이 되는 체크박스 selector
     * @returns {{getItems: getItems}}
     * @example
     * var itemCheckbox = $('#all_select').toggleChecker('input.item_checkbox:enabled');
     * ...
     * ...
     * itemCheckbox.getItems(); // 선택된 체크박스 오브젝트 객체 리스트 반환
     */
    $.fn.toggleChecker = function(itemsSelector) {
        var toggler = $(this);
        toggler.on('click', function() {
            $(itemsSelector).prop('checked', toggler.is(':checked'));
        });

        $(document).on('click', itemsSelector, function() {
            var $item = $(this);
            if ($item.is(':checked') === true) {
                if ($(itemsSelector).length == $(itemsSelector + ':checked').length) {
                    toggler.prop('checked', true);
                }
            } else {
                if (toggler.is(':checked') === true) {
                    toggler.prop('checked', false);
                }
            }
        });

        return {
            getItems : getItems
        };

        function getItems() {
            return $(itemsSelector + ':checked');
        }
    };

    // https://gist.github.com/migimunz/61557b7fab233604ba46

    var r20 = /%20/g,
        rbracket = /\[\]$/,
        rCRLF = /\r?\n/g,
        rsubmitterTypes = /^(?:submit|button|image|reset|file)$/i,
        rsubmittable = /^(?:input|select|textarea|keygen)/i,
        rIdentifier = /^[$A-Z_][0-9A-Z_$]*$/i;
    var  manipulation_rcheckableType = /^(?:checkbox|radio)$/i;

    jQuery.fn.extend({
        serialize: function() {
            return jQuery.param( this.serializeArray() );
        },
        serializeArray: function() {
            return this.map(function(){
                // Can add propHook for "elements" to filter or add form elements
                var elements = jQuery.prop( this, "elements" );
                return elements ? jQuery.makeArray( elements ) : this;
            })
                .filter(function(){
                    var type = this.type;
                    // Use .is(":disabled") so that fieldset[disabled] works
                    return this.name && !jQuery( this ).is( ":disabled" ) &&
                        rsubmittable.test( this.nodeName ) && !rsubmitterTypes.test( type ) &&
                        ( this.checked || !manipulation_rcheckableType.test( type ) );
                })
                .map(function( i, elem ){
                    var val = jQuery( this ).val();

                    return val == null ?
                        null :
                        jQuery.isArray( val ) ?
                            jQuery.map( val, function( val ){
                                return { name: elem.name, value: val.replace( rCRLF, "\r\n" ) };
                            }) :
                            { name: elem.name, value: val.replace( rCRLF, "\r\n" ) };
                }).get();
        }
    });

    jQuery.trimFields = function(container) {
        var fields = [
            'input[type=text]',
            'input[type=password]',
            'input[type=textarea]',
        ];

        var fieldsStr = fields.join(',');

        if(!container) {
            container = 'body';
        }
        $(fieldsStr, container).each(function () {
            var $this = $(this);
            $this.val($this.val().trim());
        });
    };

    //Serialize an array of form elements or a set of
    //key/values into a query string
    jQuery.param = function( a, traditional, dotNotation ) {
        var prefix,
            s = [],
            add = function( key, value ) {
                // If value is a function, invoke it and return its value
                value = jQuery.isFunction( value ) ? value() : ( value == null ? "" : value );
                s[ s.length ] = encodeURIComponent( key ) + "=" + encodeURIComponent( value );
            };

        // Set traditional to true for jQuery <= 1.3.2 behavior.
        if ( traditional === undefined ) {
            traditional = jQuery.ajaxSettings && jQuery.ajaxSettings.traditional;
        }
        if ( dotNotation === undefined ) {
            dotNotation = jQuery.ajaxSettings && jQuery.ajaxSettings.dotNotation;
        }

        // If an array was passed in, assume that it is an array of form elements.
        if ( jQuery.isArray( a ) || ( a.jquery && !jQuery.isPlainObject( a ) ) ) {
            // Serialize the form elements
            jQuery.each( a, function() {
                add( this.name, this.value );
            });

        } else {
            // If traditional, encode the "old" way (the way 1.3.2 or older
            // did it), otherwise encode params recursively.
            for ( prefix in a ) {
                buildParams( prefix, a[ prefix ], traditional, dotNotation, add );
            }
        }

        // Return the resulting serialization
        return s.join( "&" ).replace( r20, "+" );
    };

    function buildParams( prefix, obj, traditional, dotNotation, add ) {
        var name;

        if ( jQuery.isArray( obj ) ) {
            // Serialize array item.
            jQuery.each( obj, function( i, v ) {
                if ( traditional || rbracket.test( prefix ) ) {
                    // Treat each array item as a scalar.
                    add( prefix, v );

                } else {
                    // Item is non-scalar (array or object), encode its numeric index.
                    buildParams( prefix + "[" + ( typeof v === "object" ? i : "" ) + "]", v, traditional, dotNotation, add );
                }
            });

        } else if ( !traditional && jQuery.type( obj ) === "object" ) {
            // Serialize object item.
            for ( name in obj ) {
                if( dotNotation && rIdentifier.test(name) ) {
                    buildParams( prefix + '.' + name, obj[name], traditional, dotNotation, add )
                } else {
                    buildParams( prefix + "[" + name + "]", obj[ name ], traditional, dotNotation, add );
                }
            }

        } else {
            // Serialize scalar item.
            add( prefix, obj );
        }
    }

    $.fn.uni_checkbox = function (val) {
        var $this = $(this);
        $this.prop('checked', val);

        if (val === true) {
            $this.parent().addClass('checked');
        } else {
            $this.parent().removeClass('checked');
        }
    };

};
unvus.jq($);
