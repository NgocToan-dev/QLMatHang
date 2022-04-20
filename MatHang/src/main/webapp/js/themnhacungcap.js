import Common from "./common.js";
import Resource from "./resource.js";

initEvent();

function initEvent() {
    validateInput();

    validateWhenSubmit();
}

function validateInput() {
    $("#codeNCC").on('keyup focusout', function (e) {
        validateProductID();
    });
    $("#emailNCC").on('keyup focusout', function (e) {
        validateProductName($(this));
    });
    $("#addressNCC").on('keyup focusout', function (e) {
        validateProductRetailPrice($(this));
    });
    $("#nameNCC").on('keyup focusout', function (e) {
        validateProductWholesaleprice($(this));
    });
    $("#phoneNCC").on('keyup focusout', function (e) {
        validateProductUnit($(this));
    });
}

function validateWhenSubmit(){
    $("#formThemNcc").submit(function (e){
        var result = "";
        result = validateProductID($("#codeNCC"));
        if(result == ""){
            result = validateProductName($("#emailNCC"));
        }
        if(result == ""){
            result = validateProductRetailPrice($("#addressNCC"));
        }
        if(result == ""){
            result = validateProductWholesaleprice($("#nameNCC"));
        }
        if(result == ""){
            result = validateProductUnit($("#phoneNCC"));
        }
    })
}
