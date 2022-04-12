<%--
  Created by IntelliJ IDEA.
  User: donam
  Date: 12/04/2022
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>


    <!-- library -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nhaphang.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" type="text/css">
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
        <div class="body">

            <div class="top container-fluid p-3 d-flex justify-content-between" style="width: 99%">
                <h4>Đơn nhập hàng</h4>
                <div>
                    <button type="button" title="Tạo đơn nhập hàng" class="btn btn-primary btn-save"><a
                            href="${pageContext.request.contextPath}/nhaphang/taodonnhaphang.jsp"><i class="fa-solid fa-plus"></i></a>
                    </button>
                </div>
            </div>

            <div class="list-order container-fluid">
                <ul class="nav">
                    <li class="nav-item">
                        <a id="tab1" class="nav-link tab1" aria-current="page" href="#" style="color: #2C80FE;">Tất
                            cả đơn hàng</a>
                    </li>
                    <li class="nav-item">
                        <a id="tab2" class="nav-link" href="#">Đang giao dịch</a>
                    </li>
                </ul>

                <hr style="margin-top: 0;">

                <div>
                    <form method="post">
                        <div class="input ">
                            <input class="form-control mb-3" type="text" name="keyword"
                                   placeholder="Tìm kiếm đơn hàng..." required>
                        </div>
                    </form>
                </div>

                <div class="table-responsive">
                    <table class="table table-hover table-bordered">
                        <thead class="table">
                        <tr style='text-align: center;'>
                            <th>Mã đơn</th>
                            <th>Tên nhà cung cấp</th>
                            <th>Trạng thái</th>
                            <th>Thanh toán</th>
                            <th>Nhập kho</th>
                            <th>Tổng tiền</th>
                            <th>Nhân viên tạo</th>
                            <th>Ngày hẹn giao</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>BigC</td>
                            <td>Đã thanh toán</td>
                            <td>50.000.000</td>
                            <td>Đã nhập</td>
                            <td>50.000.000</td>
                            <td>A</td>
                            <td>04/04/2022</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    const tab1 = document.getElementById('tab1');
    const tab2 = document.getElementById('tab2');
    tab1.addEventListener('click', function onClick() {
        tab1.style.borderBottom = '1px solid #000';
        tab2.style.borderBottom = 'none';
        tab1.style.color = '#2C80FE';
        tab2.style.color = '#5C2C39';
    });
    tab2.addEventListener('click', function onClick() {
        tab2.style.borderBottom = '1px solid #000';
        tab1.style.borderBottom = 'none';
        tab2.style.color = '#2C80FE';
        tab1.style.color = '#5C2C39';

    });

</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>

</html>
