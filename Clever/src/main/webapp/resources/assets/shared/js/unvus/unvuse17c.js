
var unvus = unvus || {};

/**
 * javascript 에 클래스 개념 도입 (생성자, 상속)
 *
 * @group unvus
 * @namespace unvus
 * @param o
 * @param oParent
 * @returns {*}
 * @constructor
 */
unvus.Class = function (o, oParent) {
    var $init = null;
    var checkDirectCall = function () { return true; };
    var F;

    if ("$init" in o) {
        $init = o.$init;
        delete o.$init;
    }

    if (typeof oParent === "undefined") {
        F = function () {
            var args = arguments;

            if (!(this instanceof F)) {
                return new F(checkDirectCall, args);
            }

            if (args.length && args[0] === checkDirectCall) {
                args = args[1];
            }

            if ($init !== null) {
                $init.apply(this, args);
            }
        };
    } else {
        F = function () {
            var args = arguments;

            if (!(this instanceof F)) {
                return new F(checkDirectCall, args);
            }

            if (args.length && args[0] === checkDirectCall) {
                args = args[1];
            }

            // 부모의 생성자 실행
            oParent.apply(this, args);

            // 자식의 생성자 실행
            if ($init !== null) {
                $init.apply(this, args);
            }
        };

        var Parent = function () {};
        Parent.prototype = oParent.prototype;
        F.$super = oParent.prototype;
        F.prototype = new Parent();
        F.prototype.constructor = F;
    }

    for (var i in o) {
        if (o.hasOwnProperty(i) && i !== "prototype") {
            F.prototype[i] = o[i];
        }
    }

    return F;
};



