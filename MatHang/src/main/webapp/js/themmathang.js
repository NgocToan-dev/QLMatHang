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
            '<td style="display: inline-block; white-space: nowrap;"><span style="color: red"> *</span><input type="text" placeholder="Nhập tên thuộc tính" class="attribute-name"' +
            ' name="atbName' + totalRowCount + '" id="atbName' + totalRowCount + '" required></td>';
        cell2.innerHTML = '<td style="display: inline-block; white-space: nowrap;"><span style="color: red"> *</span><input type="text" placeholder="Nhập giá trị" class="attribute-value"' +
            ' name="atbValue' + totalRowCount + '" id="atbValue' + totalRowCount + '" required></td>';
        cell3.innerHTML = '<td><span class="delete-row delete-row-attb">Xóa</span></td>' +
            '</tr>';
        var numberAtb = document.getElementById("numatb");
        numberAtb.setAttribute('value', '' + totalRowCount);
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
            '<td style="display: inline-block; white-space: nowrap;"><span style="color: red"> *</span><input type="text" placeholder="Nhập tên đơn vị" class="unit-name"' +
            ' name="unitName' + totalRowCount + '" id="unitName' + totalRowCount + '" required></td>';
        cell2.innerHTML = '<td style="display: inline-block; white-space: nowrap;"><span style="color: red"> *</span><input type="text" placeholder="Nhập giá trị" class="unit-value"' +
            ' name="unitValue' + totalRowCount + '" id="unitValue' + totalRowCount + '" required></td>';
        cell3.innerHTML = '<td><span class="delete-row delete-row-unit" >Xóa</span></td>' +
            '</tr>';
        var numberUnit = document.getElementById("numunit");
        numberUnit.setAttribute('value', '' + totalRowCount);
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
    });

}

// Show image
function readURL(input) {
    $("#img").change(function () {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img-chose')
                    .attr('src', e.target.result)
                    .width(240);
            };

            reader.readAsDataURL(input.files[0]);
        } else {
            var image = document.getElementById("img-chose");
            image.src = "https://endlessicons.com/wp-content/uploads/2012/11/image-holder-icon.png";
        }
    })
}
