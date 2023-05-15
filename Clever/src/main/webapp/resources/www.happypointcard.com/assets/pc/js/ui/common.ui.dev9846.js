/**
 * 개발자용 UI 컨트롤
 */

if (!window.UIUtils) window.UIUtils = {};

/**
 * 전체 체크 설정
 * 전체체크가 on 되면 자식 모두 ON
 * 자식 하나라도 해제하면 전체체크  버튼도 해제
 * @param allCheckSelector - 전체선택 체크박스 선택자 jquery selector
 * @param checkSelector - 자식 체크박스 선택자 jquery selector
 * @param click boolean - true일 경우 props 대신 클릭으로 상태를 변경한다. 체크박스에 외부 UI 컴포넌트 등을 사용하여 props로 화면이 안바뀔 경우 사용
 */
UIUtils.setToggleAllCheck = function (allCheckSelector, checkSelector, click) {
    var $allCheck = $(allCheckSelector);
    var $checkList = $(checkSelector);

    // 전체 체크하기
    $allCheck.on('change', function () {
        var checked = $(this).prop('checked');
        if (checked) {
            // 전체 체크 on: 전체 체크
            $checkList.each(function () {
                if (click) {
                    if ($(this).prop('checked') === false) {
                        $(this).click().trigger('change');
                    }
                } else {
                    $(this).prop('checked', true).trigger('change');
                }
            });
        } else {
            // 전체체크 off: 모두 체크되어 있으면 모두 해제함
            var $checked = $checkList.filter(':checked');
            if ($checked.length === $checkList.length) {
                if (click) {
                    $checkList.click().trigger('change');
                } else {
                    $(this).prop('checked', false).trigger('change');
                }
            }
        }
    });

    // 하나라도 체크 풀면 전체체크를 풀기
    $checkList.on('change', function () {
        var checked = $(this).prop('checked');
        if (checked === false) {
            if ($allCheck.prop('checked') === true) {
                if (click) {
                    $allCheck.click();
                } else {
                    $allCheck.prop('checked', false);
                }
            }
        } else {
            var $checked = $checkList.filter(':checked');
            if ($checked.length === $checkList.length) {
                if ($allCheck.prop('checked') === false) {
                    if (click) {
                        $allCheck.click();
                    } else {
                        $allCheck.prop('checked', true);
                    }
                }
            }
        }
    });
}

/**
 * input 하단 입력 가이드 메시지 세팅
 * ex)
 * markup: <input id="currPw" type="number" pattern="^\d{4}$" data-invalid-message="숫자 4자리로 입력해주세요." data-valid-message="올바르게 입력되었어요."/>
 * js: UIUtils.inputDescByPattern($('#currPw'));
 * @param $inputs
 */
UIUtils.inputGuideByPattern = function ($inputs) {
    $inputs.on('input', function () {
        var $el = $(this);
        var value = $el.val();
        var $desc = $el.parents('div.insert').find('p.etc.em').not('.normal');
        $desc.removeClass('success').removeClass('warning').text('');

        var pattern = $el.attr('pattern');
        if (!pattern) return;

        var tester = new RegExp(pattern);
        var message = '', className = '';
        if (tester.test(value)) {
            message = $el.data('validMessage');
            className = 'success';
        } else {
            message = $el.data('invalidMessage');
            className = 'warning';
        }

        $desc.addClass(className).text(message);
    });
};
