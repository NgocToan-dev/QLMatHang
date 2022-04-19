<%--
  Created by IntelliJ IDEA.
  User: T-Q-H
  Date: 4/19/2022
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>

<%--
  Created by IntelliJ IDEA.
  User: T-Q-H
  Date: 4/18/2022
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý mặt hàng</title>
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- fontawesome  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <!-- style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" type="text/css">

</head>

<body>

<div id="page" class="d-flex">
    <nav id="sidebar" class="nav flex-column">
        <li class="nav-item logo">
            <div><i class="fa-brands fa-product-hunt fa-lg"></i>${sessionScope.account.name}</div>
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
        <main>
            <div class="header-main">
                <h4>Danh sách mặt hàng</h4>
            </div>
            <div class="background-main">
                <div class="toolbar d-flex justify-content-between">
                    <div id="search" class="input-group mb-3">
                        <input type="text" class="form-control shadow-none" placeholder="Tìm kiếm">
                        <span class="input-group-text" title="Tìm kiếm"><i class="fa-solid fa-magnifying-glass"></i></span>
                    </div>
                    <div>
                        <button type="button" title="Thêm" class="btn btn-primary btn-save"><i
                                class="fa-solid fa-plus"></i></button>
                    </div>
                </div>
                <div id="product-data">
                    <table class="table table-borderless">
                        <thead class="sticky-top">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Mã mặt hàng</th>
                            <th scope="col">Tên mặt hàng</th>
                            <th scope="col">Gía bán lẻ</th>
                            <th scope="col">Gía bán sỉ</th>
                            <th scope="col">Ngày</th>
                            <th class="table-function" ></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${data}" var="m">
                            <tr>
                                <td>${m.getId()}</td>
                                <td>${m.getCode()}</td>
                                <td >${m.getName()}</td>
                                <td>${m.getRetailPrice()}</td>
                                <td>${m.getWholesalePrice()}</td>
                                <td>${m.getCreatedDate()}</td>
                                <td class="table-function text-center">
                                    <button type="button" title="Sửa" class="btn btn-save"><a href="edit?id='${m.code}'/>"></a><i class="fa-solid fa-pencil"></i></button>
                                    <button type="button" title="Xóa" class="btn btn-delete" onclick="doDelete(${m.getId()})"><i class="fa-solid fa-trash"></i></button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
</div>


<!-- bootstrap -->
<script>
    function doDelete(id){

    if(confirm("Bạn có muốn xóa mặt hàng có ID ="+ id +"?")){
            window.location = "delete?id"+id;
        }

    }
</script>
</body>

</html>
