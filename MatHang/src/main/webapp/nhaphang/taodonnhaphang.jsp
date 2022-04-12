<%--
  Created by IntelliJ IDEA.
  User: donam
  Date: 12/04/2022
  Time: 21:42
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


        <div class="body">

            <div class="top container-fluid pl-3 pr-3 pt-2 pb-2" style="width: 99%">
                <div class="d-flex justify-content-between">
                    <div class="d-flex">
                        <a class="pt-1" href="${pageContext.request.contextPath}/nhaphang/quanlynhaphang.jsp" style="margin-right:10px;"><i
                                class="fa-solid fa-arrow-left"></i></a>
                        <h4>Đơn nhập hàng</h4>
                    </div>

                    <button class="button btn-create" id="btn-confirm" style="width: 80px">Duyệt</button>
                </div>
                <div class="d-flex">
                    <h3>PN000001</h3>
                    <p class="pt-2" style="margin-left: 5px;">31/03/2022 22:05</p>
                </div>
            </div>

            <div class="ncc pt-2 pb-2 container-fluid mb-3">
                <div class="d-flex justify-content-between pb-2 pt-2">
                    <h4>Thông tin nhà cung cấp</h4>
                    <div>
                        <button type="button" title="Thêm nhà cung cấp" class="btn btn-primary btn-save"
                                data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i
                                class="fa-solid fa-plus"></i></button>
                    </div>
                </div>

                <form method="post">
                    <div class="input ">
                        <input class="form-control mb-3" type="text" name="keyword"
                               placeholder="Tìm kiếm nhà cung cấp..." required>
                    </div>
                </form>
            </div>

            <div class="ncc pt-2 pb-2 container-fluid">
                <h4>Thông tin sản phẩm</h4>
                <form method="post">
                    <div class="input ">
                        <input class="form-control mb-3" type="text" name="keyword"
                               placeholder="Tìm kiếm sản phẩm..." required>
                    </div>
                </form>

                <div class="table-responsive">
                    <table class="table table-hover table-bordered">
                        <thead class="table-primary">
                        <tr style='text-align: center;'>
                            <th>Mã SKU</th>
                            <th>Tên sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>

                <hr>

                <div class="d-flex justify-content-end" style="margin-right: 50px;">
                    <p></p>
                    <div class="bill">
                        <div class="amount d-flex">
                            <p>Số lượng</p>
                            <p style="margin-left: 100px;">4</p>
                        </div>
                        <div class="amount d-flex">
                            <p>Tổng tiền</p>
                            <p style="margin-left: 95px;">52.000.000</p>
                        </div>
                        <div class="amount d-flex">
                            <p>Chiết khấu</p>
                            <p style="margin-left: 90px;">0</p>
                        </div>
                        <div class="amount d-flex">
                            <p>Chi phí</p>
                            <p style="margin-left: 112px;">0</p>
                        </div>
                        <div class="amount d-flex">
                            <p>tiền cần trả</p>
                            <p style="margin-left: 85px;">52.000.000</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="ncc pt-2 pb-2 mt-3 container-fluid mb-3">
                <h4>Thanh toán</h4>
                    <div class="d-flex justify-content-between">
                        <p id="paid" style="display:none">Đã thanh toán: 0đ</p>
                        <p id="rest" style="display:none">Còn phải trả: 52.000.000đ</p>
                        <p></p>
                        <button class="button btn-create p-2" id="btn-confirm-payment" style="display:none">Xác nhận
                            thanh toán</button>
                        <form id="pay">
                            <input type="checkbox" value="pay">
                            <label for="pay">
                                <h5>Thanh toán với nhà cung cấp</h5>
                            </label>
                        </form>
                    </div>
            </div>

            <div class="ncc pt-2 pb-2 container-fluid ">
                <h4>Nhập kho</h4>
                <div class="d-flex justify-content-between">
                    <p id="code" style="display:none">Mã nhập kho: PN000001</p>
                    <p id="date" style="display:none">Ngày nhập kho: 05/04/2022</p>
                    <p id="product" style="display:none">Sản phẩm: Abc</p>
                    <p id="total" style="display:none">Tổng tiền: 52.000.000</p>
                    <p></p>
                    <form id="storage">
                        <input type="checkbox" value="storage">
                        <label for="storage">
                            <h5>Nhập hàng vào kho</h5>
                        </label>
                    </form>
                </div>
            </div>

            <div class="ncc pt-2 pb-2 mt-3 container-fluid mb-3" style="display:none" id="rollBack">
                <h4>Hoàn trả</h4>
                <div class="d-flex justify-content-between">
                    <p></p>
                    <button class="btn-secondary p-1">Hoàn trả</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Thêm nhà cung cấp</h5>
                <button style="margin-right: 12px;" type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>

            <div class="modal-body">
                <div class="row align-items-start">
                    <div class="col">
                        <div>
                            <label class="form-label">Mã nhà cung cấp</label>
                            <input type="text" class="form-control" name="lorem" placeholder="">
                        </div>
                        <div>
                            <label class="form-label">Email</label>
                            <input type="text" class="form-control" name="lorem" placeholder="">
                        </div>
                        <div>
                            <label class="form-label">Địa chỉ</label>
                            <input type="text" class="form-control" name="lorem" placeholder="">
                        </div>
                    </div>
                    <div class="col">
                        <div>
                            <label class="form-label">Tên nhà cung cấp</label>
                            <input type="text" class="form-control" name="lorem" placeholder="">
                        </div>
                        <div>
                            <label class="form-label">Số điện thoại</label>
                            <input type="text" class="form-control" name="lorem" placeholder="">
                        </div>
                        <div>
                            <label style="padding-bottom: 8px;" class="form-label">Khu vực</label><br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                       id="inlineRadio" value="option1" checked>
                                <label class="form-check-label" for="inlineRadio1">Miền bắc</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                       id="inlineRadio1" value="option2">
                                <label class="form-check-label" for="inlineRadio2">Miền nam</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                       id="inlineRadio2" value="option2">
                                <label class="form-check-label" for="inlineRadio2">Miền trung</label>
                            </div>
                        </div>
                    </div>
                </div>
                <aside class="col-lg-2 col-sm-4">

                </aside>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Thêm</button>
            </div>
        </div>
    </div>
</div>

<script>
    const btConfirm = document.getElementById('btn-confirm');
    const paid = document.getElementById('paid');
    const rest = document.getElementById('rest');
    const btnPayment = document.getElementById('btn-confirm-payment');
    const pay = document.getElementById('pay');
    const code = document.getElementById('code');
    const date = document.getElementById('date');
    const product = document.getElementById('product');
    const total = document.getElementById('total');
    const storage = document.getElementById('storage');
    const rollBack = document.getElementById('rollBack');

    btConfirm.addEventListener('click', function onClick() {
        btConfirm.style.display = 'none';
        pay.style.display = 'none';
        storage.style.display = 'none';
        paid.style.display = 'block';
        rest.style.display = 'block';
        btnPayment.style.display = 'block';
        code.style.display = 'block';
        date.style.display = 'block';
        product.style.display = 'block';
        total.style.display = 'block';
        rollBack.style.display = 'block';
    })

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>

</html>