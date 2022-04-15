<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/15/2022
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- fontawesome  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <!-- style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" type="text/css">

    <!--  -->
    <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
</head>

<body>

<div id="page" class="d-flex">
    <nav id="sidebar" class="nav flex-column">
        <li class="nav-item logo">
            <div><i class="fa-brands fa-product-hunt fa-lg"></i>Nhóm 5</div>
        </li>
        <li class="sidebar-item nav-item">
            <a class="nav-link d-flex">
                <div class="icon-item">
                    <i class="fa-solid fa-box-archive fa-lg"></i>
                </div>
                <div>
                    Quản lý mặt hàng
                </div>
            </a>
        </li>
        <li class="sidebar-item nav-item">
            <a class="nav-link d-flex">
                <div class="icon-item">
                    <i class="fa-solid fa-cart-plus fa-lg"></i>
                </div>
                <div>
                    Nhập hàng
                </div>
            </a>
        </li>
    </nav>
    <div class="flex-grow-1">
        <menu class="d-flex justify-content-end">
            <div id="logout-btn" class="d-flex align-items-center">
                <i class="fa-solid fa-arrow-right-from-bracket fa-lg"></i>
                Đăng xuất
            </div>
        </menu>
        <!--  phần nhét code -->
        <form action="" class="form__add-product">
            <div class="app__add-product">
                <div class="content__header">
                    <div class="content__name">Thêm mặt hàng</div>
                    <!-- <div class="btn-accept"> -->
                    <!-- <a href="" class="btn-accept-link">Xác nhận</a> -->
                    <button type="submit"  class="btn-accept btn-accept-button">Xác nhận</button>
                    <!-- </div> -->
                </div>
                <div class="content__attributes">
                    <div class="content__attributes-items">
                        <div class="item-name">Thông tin chung</div>
                        <div class="item-content container">
                            <div class="item-content__main-row row">
                                <div class="col-9 general-info">
                                    <div class="container">
                                        <div class="row general-info__basic">
                                            <div class="col-4">
                                                <div class="atb">
                                                    <span class="atb-name">Mã mặt hàng</span>
                                                    <input type="text" id="productid" name="productid" class="atb-input input-group" placeholder="Nhập Mã mặt hàng">
                                                </div>
                                                <div class="atb">
                                                    <span class="atb-name">Tên mặt hàng</span>
                                                    <input type="text" id="productname" name="productname" class="atb-input input-group" placeholder="Nhập Tên mặt hàng">
                                                </div>
                                                <div class="atb">
                                                    <span class="atb-name">Giá bán lẻ</span>
                                                    <input type="text" id="productretailprice" name="productretailprice" class="atb-input input-group" placeholder="Nhập Giá bán lẻ">
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="atb">
                                                    <span class="atb-name">Giá bán sỉ</span>
                                                    <input type="text" id="productwholesaleprice" name="productwholesaleprice" class="atb-input input-group" placeholder="Nhập Giá bán sỉ">
                                                </div>
                                                <div class="atb">
                                                    <span class="atb-name">Đơn vị tính</span>
                                                    <input type="text" id="productunit" name="productunit" class="atb-input input-group" placeholder="Nhập Đơn vị tính">
                                                </div>
                                                <div class="atb">
                                                    <span class="atb-name">Tồn kho ban đầu</span>
                                                    <input type="text" id="stock" name="stock" class="atb-input input-group" placeholder="Nhập Tồn kho ban đầu">
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="atb">
                                                    <span class="atb-name">Khối lượng</span>
                                                    <div class="weight">
                                                        <input type="text" id="productweight" name="productweight" class="atb-input input-group" placeholder="Nhập Khối lượng">
                                                        <select name="weightunit" id="weightunit" class="weight-unit">
                                                            <option value="g" class="weight-unit-item">g</option>
                                                            <option value="kg" class="weight-unit-item">kg</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="atb">
                                                    <span class="atb-name">Phân loại</span>
                                                    <select name="productcategory" id="productcategory" class="atb-input input-group category-select">
                                                        <option value="quanao" class="category-item">Quần áo</option>
                                                        <option value="dodientu" class="category-item">Đồ điện tử</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="general-info__description">
                                        <span class="atb-name">Mô tả</span>
                                        <textarea onclick="focusDes()" class="info-des" id="ifodesscription" name="ifodesscription" rows="4" cols="50" placeholder="Nhập Mô tả"></textarea>
                                    </div>
                                </div>
                                <div class="col-3 product-image">
                                    <span>Ảnh (.png hoặc .jpg)</span>
                                    <input type="file" id="img" name="img" class="img" onchange="readURL(this)">
                                    <img src="https://endlessicons.com/wp-content/uploads/2012/11/image-holder-icon.png" alt="Your image" id="img-chose" class="img-chose">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="content__attributes-items">
                        <div class="item-name">Thuộc tính bổ sung</div>
                        <div class="item-content">
                            <table id="table-atb">
                                <tr>
                                    <th style="width: 306px;">Tên thuộc tính</th>
                                    <th style="width: 305px;">Giá trị</th>
                                    <th>Hành động</th>
                                </tr>
                                <!-- <tr>
                                    <td><input type="text" placeholder="Nhập tên thuộc tính" class="attribute-name"></td>
                                    <td><input type="text" placeholder="Nhập giá trị" class="attribute-value"></td>
                                    <td><span id="delete-attribute" onclick="deleteAtb()" class="delete-row">Xóa</span></td>
                                </tr> -->
                            </table>
                            <div class="table-add-row" onclick="addAtb()">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-plus" viewBox="0 0 16 16">
                                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="content__attributes-items">
                        <div class="item-name">Đơn vị quy đổi</div>
                        <div class="item-content">
                            <table id="table-unit">
                                <tr>
                                    <th style="width: 306px;">Tên đơn vị</th>
                                    <th style="width: 305px;">Giá trị</th>
                                    <th>Hành động</th>
                                </tr>
                                <!-- <tr>
                                    <td><input type="text" placeholder="Nhập tên đơn vị" class="unit-name"></td>
                                    <td><input type="text" placeholder="Nhập giá trị" class="unit-value"></td>
                                    <td><span id="delete-unit" onclick="deleteUnit()" class="delete-row">Xóa</span></td>
                                </tr> -->
                            </table>
                            <div class="table-add-row" onclick="addUnit()">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-plus" viewBox="0 0 16 16">
                                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>


<!-- bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/js/themmathang.js"></script>
</body>

</html>