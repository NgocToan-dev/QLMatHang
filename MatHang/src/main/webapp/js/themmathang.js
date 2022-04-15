function focusDes() {
    const textarea = document.getElementById('ifodesscription');
    const end = textarea.value.length;
    textarea.setSelectionRange(end, end);
    textarea.focus();
}

// Attribute
function addAtb() {
    var table = document.getElementById("table-atb");
    var row = table.insertRow(-1);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    cell1.innerHTML = '<tr>' +
        '<td><input type="text" placeholder="Nhập tên thuộc tính" class="attribute-name"></td>';
    cell2.innerHTML = '<td><input type="text" placeholder="Nhập giá trị" class="attribute-value"></td>';
    cell3.innerHTML = '<td><span id="delete-attribute" onclick="deleteAtb(this)" class="delete-row">Xóa</span></td>' +
        '</tr>';
}

function deleteAtb(r) {
    var i = r.parentNode.parentNode.rowIndex;
    document.getElementById("table-atb").deleteRow(i);
}

// Unit
function addUnit() {
    var table = document.getElementById("table-unit");
    var row = table.insertRow(-1);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    cell1.innerHTML = '<tr>' +
        '<td><input type="text" placeholder="Nhập tên đơn vị" class="unit-name"></td>';
    cell2.innerHTML = '<td><input type="text" placeholder="Nhập giá trị" class="unit-value"></td>';
    cell3.innerHTML = '<td><span id="delete-unit" onclick="deleteUnit(this)" class="delete-row">Xóa</span></td>' +
        '</tr>';
}

function deleteUnit(r) {
    var i = r.parentNode.parentNode.rowIndex;
    document.getElementById("table-unit").deleteRow(i);
}

// Show image
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#img-chose')
                .attr('src', e.target.result)
                .width(240);
        };

        reader.readAsDataURL(input.files[0]);
    }
    else {
        var image = document.getElementById("img-chose");
        image.src = "https://endlessicons.com/wp-content/uploads/2012/11/image-holder-icon.png";
    }
}
