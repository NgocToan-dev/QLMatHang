import resource from "./resource.js";

var Common = Common || {};

Common.ValidateInputBase = function (inputData, type) {

    var result = "";

    // lấy giá trị input
    var inputText = $(inputData).val();

    switch (type) {
        case resource.ValidateType.Required:
            if (inputText.length == 0) {
                result = "Không dược để trống";
            }
            break;
        case resource.ValidateType.Number:
            var reg = /^\d+$/;
            if (reg.test(inputText)) {
                result = "Chỉ được nhập số";
            }
            break;
        case resource.ValidateType.Email:
            var reg =
                /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
            if (!reg.test(inputText)) {
                result = "Email sai định dạng";
            }
            break;
        case resource.ValidateType.SpecialChar:
            var format = /[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
            if (format.test(inputText)) {
                result = "Không để ký tự đặc biệt";
            }
            break;
        default:
            result = "";
            break;
    }
    return result;
}
Common.ValidateLength = function (inputData, minLength, maxLength) {
    $(inputData).on('keyup', function (e) {
        // lấy giá trị input
        var inputText = $(inputData).val();
        switch (inputText) {
            case resource.ValidateType.MinLength:
                if (inputText.length < minLength) {
                    return `Tối thiểu ${minLength} ký tự`;
                }
                break;
            case resource.ValidateType.MaxLength:
                // kiểm tra dộ dài chu
                if (inputText.length < maxLength) {
                    return `Tối đa ${maxLength} ký tự`
                }
                break;
        }
        return "";
    });
}

export default Common;