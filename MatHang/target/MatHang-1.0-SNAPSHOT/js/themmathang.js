import Common from "./common.js";
import Resource from "./resource.js";

initEvent();

function initEvent() {
    validateInput();

    addUnit();
    addAtb();
    focusDes();
    readURL();
    deleteAtb();
    deleteUnit();
}

function validateInput() {
    validateProductID();
    validateProductName();
    validateProductRetailPrice();
    validateProductWholesaleprice();
    validateProductUnit();
    validateStock();
    validateProductweight();
    validateImageFile();
    validateDescription();
}

function  validateDescription(){
    $("#ifodesscription").on('keyup', function (e) {
        var result = "";
        result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialCharTextArea);
        if (result == "") {
            result = Common.ValidateLength($(this), 0, 255);
        }
        if (result == "") {
            $("#warningInfoDes").attr("hidden", true);
        } else {
            $("#warningInfoDes").text(result);
            $("#warningInfoDes").attr("hidden", false);
        }
    });
}

function  validateTableAtb(){
    var numberRow = (document).getElementById("numatb");
    var numRowInt = parseInt(numberRow.getAttribute("value"), 10);
    for(let i = 1; i <= numRowInt; i++) {
        $("#atbName"+i).on('keyup', function (e) {
            var result = "";
            result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
            if (result == "") {
                result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
            }
            if (result == "") {
                $("#warningAtbName"+i).attr("hidden", true);
            } else {
                $("#warningAtbName"+i).text(result);
                $("#warningAtbName"+i).attr("hidden", false);
            }
        });
        $("#atbValue"+i).on('keyup', function (e) {
            var result = "";
            result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
            if (result == "") {
                result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
            }
            if (result == "") {
                $("#warningAtbValue"+i).attr("hidden", true);
            } else {
                $("#warningAtbValue"+i).text(result);
                $("#warningAtbValue"+i).attr("hidden", false);
            }
        });
    }
}

function  validateTableUnit(){
    var numberRow = (document).getElementById("numunit");
    var numRowInt = parseInt(numberRow.getAttribute("value"), 10);
    for(let i = 1; i <= numRowInt; i++) {
        $("#unitName"+i).on('keyup', function (e) {
            var result = "";
            result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
            if (result == "") {
                result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
            }
            if (result == "") {
                $("#warningUnitName"+i).attr("hidden", true);
            } else {
                $("#warningUnitName"+i).text(result);
                $("#warningUnitName"+i).attr("hidden", false);
            }
        });
        $("#unitValue"+i).on('keyup', function (e) {
            var result = "";
            result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
            if (result == "") {
                result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
            }
            if (result == "") {
                $("#warningUnitValue"+i).attr("hidden", true);
            } else {
                $("#warningUnitValue"+i).text(result);
                $("#warningUnitValue"+i).attr("hidden", false);
            }
        });
    }
}

function  validateImageFile(){
    $("#img").on('change', function (e) {
        var input = this;
        var url = $(this).val();
        var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
        if (input.files && input.files[0]&& (ext == "png" || ext == "jpg"))
        {
            $("#warningImg").attr("hidden", true);
        } else if(input.files && input.files[0]) {
            $("#warningImg").text("Kh??ng h???p l???");
            $("#warningImg").attr("hidden", false);
        }
    });
}
function  validateProductweight(){
    $("#productweight").on('keyup', function (e) {
        var result = "";
        result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
        if (result == "") {
            result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
        }
        if (result == "") {
            $("#warningProductweight").attr("hidden", true);
        } else {
            $("#warningProductweight").text(result);
            $("#warningProductweight").attr("hidden", false);
        }
    });
}

function  validateStock(){
    $("#stock").on('keyup', function (e) {
        var result = "";
        result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
        if (result == "") {
            result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
        }
        if (result == "") {
            $("#warningStock").attr("hidden", true);
        } else {
            $("#warningStock").text(result);
            $("#warningStock").attr("hidden", false);
        }
    });
}

function  validateProductUnit(){
    $("#productunit").on('keyup', function (e) {
        var result = "";
        result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
        if (result == "") {
            result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
        }
        if (result == "") {
            $("#warningProductunit").attr("hidden", true);
        } else {
            $("#warningProductunit").text(result);
            $("#warningProductunit").attr("hidden", false);
        }
    });
}

function  validateProductWholesaleprice(){
    $("#productwholesaleprice").on('keyup', function (e) {
        var result = "";
        result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
        if (result == "") {
            result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
        }
        if (result == "") {
            $("#warningProductwholesaleprice").attr("hidden", true);
        } else {
            $("#warningProductwholesaleprice").text(result);
            $("#warningProductwholesaleprice").attr("hidden", false);
        }
    });
}

function  validateProductRetailPrice(){
    $("#productretailprice").on('keyup', function (e) {
        var result = "";
        result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
        if (result == "") {
            result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
        }
        if (result == "") {
            $("#warningProductRetailprice").attr("hidden", true);
        } else {
            $("#warningProductRetailprice").text(result);
            $("#warningProductRetailprice").attr("hidden", false);
        }
    });
}

function  validateProductName(){
    $("#productname").on('keyup', function (e) {
        var result = "";
        result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
        if (result == "") {
            result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
        }
        if (result == "") {
            $("#warningProductname").attr("hidden", true);
        } else {
            $("#warningProductname").text(result);
            $("#warningProductname").attr("hidden", false);
        }
    });
}

function  validateProductID(){
    $("#productid").on('keyup', function (e) {
        var result = "";
        result = Common.ValidateInputBase($(this), Resource.ValidateType.Required);
        if (result == "") {
            result = Common.ValidateInputBase($(this), Resource.ValidateType.SpecialChar)
        }
        if (result == "") {
            $("#warningProductID").attr("hidden", true);
        } else {
            $("#warningProductID").text(result);
            $("#warningProductID").attr("hidden", false);
        }
    });
}


function focusDes() {
    $("#ifodesscription").click(function () {
        const textarea = document.getElementById('ifodesscription');
        const end = textarea.value.length;
        textarea.setSelectionRange(end, end);
        textarea.focus();
    })

}


// Attribute
function addAtb() {
    $("#addAtb").click(function () {

        var table = document.getElementById("table-atb");
        var totalRowCount = table.rows.length;

        var row = table.insertRow(-1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);

        cell1.innerHTML = '<tr>' +
            '<td style="display: inline-block; white-space: nowrap;"><span style="color: red"> *</span>' +
            '<div style="position: relative;"><input type="text" placeholder="Nh???p t??n thu???c t??nh" class="attribute-name"' +
            ' name="atbName' + totalRowCount + '" id="atbName' + totalRowCount + '" required>' +
            '<span id="warningAtbName'+totalRowCount+ '" class="warningTextTable" hidden="true"></span></div></td>';
        cell2.innerHTML = '<td style="display: inline-block; white-space: nowrap;"><span style="color: red"> *</span>' +
            '<div style="position: relative;"><input type="text" placeholder="Nh???p gi?? tr???" class="attribute-value"' +
            ' name="atbValue' + totalRowCount + '" id="atbValue' + totalRowCount + '" required>' +
            '<span id="warningAtbValue'+totalRowCount+ '" class="warningTextTable" hidden="true"></span></div></td>';
        cell3.innerHTML = '<td><span class="delete-row delete-row-attb">X??a</span></td>' +
            '</tr>';
        var numberAtb = document.getElementById("numatb");
        numberAtb.setAttribute('value', '' + totalRowCount);
        validateTableAtb();
    });
}

function deleteAtb() {
    $(document).on('click', '.delete-row-attb', function () {
        var i = $(this).parent().parent().index();
        document.getElementById("table-atb").deleteRow(i);
        var table = document.getElementById("table-atb");
        var totalRowCount = table.rows.length - 1;
        var numberAtb = document.getElementById("numatb");
        numberAtb.setAttribute('value', '' + totalRowCount);
        for(let j = i+1; j < totalRowCount+2; j++){
            let k = j -1;
            var newIndex = document.getElementById("atbName" + j);
            newIndex.setAttribute('name','atbName' + k);
            newIndex.setAttribute('id','atbName' + k);
            var newIndex1 = document.getElementById("atbValue" + j);
            newIndex1.setAttribute('name','atbValue' + k);
            newIndex1.setAttribute('id','atbValue' + k);
            var newIndex2 = document.getElementById("warningAtbName" + j);
            newIndex2.setAttribute('id','warningAtbName' + k);
            var newIndex2 = document.getElementById("warningAtbValue" + j);
            newIndex2.setAttribute('id','warningAtbValue' + k);
        }
        validateTableAtb();
    });
}

// Unit
function addUnit() {
    $("#addUnit").click(function () {
        var table = document.getElementById("table-unit");
        var totalRowCount = table.rows.length;

        var row = table.insertRow(-1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        cell1.innerHTML = '<tr>' +
            '<td style="display: inline-block; white-space: nowrap;"><span style="color: red"> *</span>' +
            '<div style="position: relative;"><input type="text" placeholder="Nh???p t??n ????n v???" class="unit-name"' +
            ' name="unitName' + totalRowCount + '" id="unitName' + totalRowCount + '" required>' +
            '<span id="warningUnitName'+totalRowCount+ '" class="warningTextTable" hidden="true"></span></div></td>';
        cell2.innerHTML = '<td style="display: inline-block; white-space: nowrap;"><span style="color: red"> *</span>' +
            '<div style="position: relative;"><input type="text" placeholder="Nh???p gi?? tr???" class="unit-value"' +
            ' name="unitValue' + totalRowCount + '" id="unitValue' + totalRowCount + '" required>' +
            '<span id="warningUnitValue'+totalRowCount+ '" class="warningTextTable" hidden="true"></span></div></td>';
        cell3.innerHTML = '<td><span class="delete-row delete-row-unit" >X??a</span></td>' +
            '</tr>';
        var numberUnit = document.getElementById("numunit");
        numberUnit.setAttribute('value', '' + totalRowCount);
        validateTableUnit();
    });
}

function deleteUnit() {
    $(document).on('click', '.delete-row-unit', function () {

        var i = $(this).parent().parent().index();
        document.getElementById("table-unit").deleteRow(i);
        var table = document.getElementById("table-unit");
        var totalRowCount = table.rows.length - 1;
        var numberUnit = document.getElementById("numunit");
        numberUnit.setAttribute('value', '' + totalRowCount);
        for(let j = i+1; j < totalRowCount+2; j++){
            let k = j -1;
            var newIndex = document.getElementById("unitName" + j);
            newIndex.setAttribute('name','unitName' + k);
            newIndex.setAttribute('id','unitName' + k);
            var newIndex1 = document.getElementById("unitValue" + j);
            newIndex1.setAttribute('name','unitValue' + k);
            newIndex1.setAttribute('id','unitValue' + k);
            var newIndex2 = document.getElementById("warningUnitName" + j);
            newIndex2.setAttribute('id','warningUnitName' + k);
            var newIndex2 = document.getElementById("warningUnitValue" + j);
            newIndex2.setAttribute('id','warningUnitValue' + k);
        }
        validateTableUnit();
    });

}

// Show image
function readURL() {
    $("#img").change(function () {
        var input = this;
        var url = $(this).val();
        var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
        if (input.files && input.files[0]&& (ext == "png" || ext == "jpg"))
        {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img-chose').attr('src', e.target.result).width(240);
            };

            reader.readAsDataURL(input.files[0]);
        } else {
            $('#img-chose').attr('src', 'https://endlessicons.com/wp-content/uploads/2012/11/image-holder-icon.png').width(240);
        }
    });
}
