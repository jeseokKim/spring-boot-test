/**
 * EPS LNG 직도입 공통 javascript
 */
$.fn.addRow = function (templateId, params) {
    $(".empty", this).parent().remove();

    var formatter = $.validator.format($.trim($(templateId).val()));
    var numbering = $("td", formatter([])).hasClass("numbering");

    var _params;
    if (numbering) {
        var rowCount = $(".numbering", this).length;
        _params = [++rowCount, rowCount - 1];
    } else {
        _params = [$("tbody > tr", this).length];
    }
    var row = $(formatter((params == undefined) ? _params : _params.concat(params)));
    $(row).appendTo(this);

    return row;
};