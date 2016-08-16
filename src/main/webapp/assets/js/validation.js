$.validator.setDefaults({
    debug: false,
    ignore: "input:hidden",
    onkeyup: false,
    onclick: false,
    onfocusout: false,
    showErrors: function(messages, elements) {
        $(":input", this.currentForm).removeClass("validation-req");
        if (elements.length > 0) {
            var messageMap = new Map();
            var index = 0;

            $.each(messages, function (name, message) {
                // 동일한 에러 메시지 filtering
              $(elements[index++].element).addClass("validation-req");
                var errorKey = (name.indexOf(".") > -1) ? name.split(".")[1] : name;
                if (!messageMap.containsKey(errorKey)) {
                    messageMap.put(errorKey, message);
                }
            });

            var alertMessages = "";
            $.each(messageMap.values(), function(index, message) {
                alertMessages += message + "\n";
            });
            alert(alertMessages);
        }
    }
});

$.fn.addRules = function (options) {
    this.each(function () {
        $(this).rules("add", options);
    });
};

/**
 * 주민등록번호
 */
$.validator.addMethod("rrn", function(value, element, params) {
    if ($.isArray(params)) {
        for (var i = 0; i < params.length; i++) {
            value += $(params[i]).val();
        }
    }
    value = value.replace(/-/g,"");

    if (value.length != 13) {
        return false;
    }
    var tempGbCd = value.substr(7, 1);
    if (tempGbCd == "A" || tempGbCd == "B") {
        return true;
    }
    var sum = 0;

    if (this.optional(element) || value.match(/\d{2}[0-1]\d{1}[0-3]\d{1}\d{7}/)) {
        if (value.substr(6, 1) >= 5 && value.substr(6, 1) <= 8) { //외국인
            if (Number(value.substr(7, 2)) % 2 != 0) return false;
            for (var i = 0; i < 12; i++) {
                sum += Number(value.substr(i, 1)) * ((i % 8) + 2);
            }
            if ((((11 - (sum % 11)) % 10 + 2) % 10) == Number(value.substr(12, 1))) {
                return true;
            }
            return false;

        } else { //내국인
            for (var i = 0; i < 12; i++) {
                sum += Number(value.substr(i, 1)) * ((i % 8) + 2);
            }
            if (((11 - (sum % 11)) % 10) == Number(value.substr(12, 1))) {
                return true;
            }
            return false;
        }
    } else {
        return false;
    }
});

/**
 * 핸드폰번호
 */
$.validator.addMethod("phoneNumber", function(value) {
    value = value.replace(/-/g,"");

    // 입력 값이 000-0000-0000 형식인지 확인한다.
    var phoneNumberRegex = /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/;
    if(!phoneNumberRegex.test(value)) {
      return false;
    } else {
      return true;
    }
});

/**
 * 사업자등록번호
 */
$.validator.addMethod("bizNo", function(strng) {
    if (!strng) {
        return true;
    }
    var regex = /^[0-9]{3}-[0-9]{2}-[0-9]{5}$/;

    if (!regex.test(strng)) {
        return false;
    }
/*
    strng_new = strng.replace(/^([0-9]{3})-([0-9]{2})-([0-9]{5})$/,"$1$2$3");
    strng_add = "137137135";
    var tmp = 0;
    for (var n=0; n<9; n++) {
        tmp += strng_new.charAt(n)*strng_add.charAt(n);
    }
    tmp += strng_new.charAt(8)*5/10;
    tmp = (10 - (tmp % 10))%10;

    if (tmp!=strng_new.charAt(9)) {
        return false;
    }
*/
    return true;
});
