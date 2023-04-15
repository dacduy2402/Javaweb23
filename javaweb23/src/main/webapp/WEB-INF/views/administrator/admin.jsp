<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Admin Account</title>
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
  <link rel="stylesheet" href="${base}/css/admin.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
</head>
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="col-xs-3 col-sm-3 col-md-3 col-lg-2 left">
        <div class="top">
          <div class="logo">
            <a>techshop</a>
            <div class="logo-icons">
              <i class="fa-brands fa-opencart" style="padding-left: 10px"></i>
            </div>
          </div>
        </div>
        <div class="sidebar">
          <ul>
            <li id="default">
              <a href="${base }/admin/home">
                <span class="material-symbols-sharp">dashboard</span>
                <h3>Dashboard</h3>
              </a>
            </li>
            <li>
              <a href="#">
                <span class="material-symbols-sharp">person_outline</span>
                <h3>Customer</h3>
              </a>
            </li>
            <li>
              <a href="${Base }/admin/order">
                <span class="material-symbols-sharp">receipt_long</span>
                <h3>Order</h3>
              </a>
            </li>
            <li>
              <a href="#">
                <span class="material-symbols-sharp">insights</span>
                <h3>Analytics</h3>
              </a>
            </li>
            <li>
              <a href="${Base }/admin/message">
                <span class="material-symbols-sharp">mail_outline</span>
                <h3>Message</h3>
              </a>
            </li>
            <li>
              <a href="${base }/admin/product/list">
                <span class="material-symbols-sharp">inventory</span>
                <h3>Products</h3>
              </a>
            </li>
            <li>
              <a href="#">
                <span class="material-symbols-sharp">report_gmailerrorred</span>
                <h3>Reports</h3>
              </a>
            </li>
            <li>
              <a href="#">
                <span class="material-symbols-sharp">settings</span>
                <h3>Setting</h3>
              </a>
            </li>
            <li>
              <a href="${base }/admin/product/management">
                <span class="material-symbols-sharp">add</span>
                <h3>Add Product</h3>
              </a>
            </li>
            <li>
              <a href="${base }/login" style="">
                <span class="material-symbols-sharp">logout</span>
                <h3>Log out</h3>
              </a>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 center">
        <div class="top">
          <div class="search">
            <ul>
              <li>
                <input type="text" placeholder="TÃ¬m kiáº¿m">
              </li>
              <li>
                <span class="material-symbols-sharp">search</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="date">
          <input type="date">
        </div>
        <div class="revenue">
          <div class="sales">
            <span class="material-symbols-sharp">analytics</span>
            <div class="midle">
              <div class="left">
                <b>Total Sales</b>
                <h4>$25,024</h4>
              </div>
              <div class="prog">
                <svg>
                  <circle cx="30" cy="30" r="28"></circle>
                </svg>
                <div class="number">
                  <p>81%</p>
                </div>
              </div>
            </div>
            <small class="text-muted">Last 24 hour</small>
          </div>
          <div class="expenses">
            <span class="material-symbols-sharp">bar_chart</span>
            <div class="midle">
              <div class="left">
                <b>Total Expenses</b>
                <h4>$14,160</h4>
              </div>
              <div class="prog">
                <svg>
                  <circle cx="30" cy="30" r="28"></circle>
                </svg>
                <div class="number">
                  <p>62%</p>
                </div>
              </div>
            </div>
            <small class="text-muted">Last 24 hour</small>
          </div>
          <div class="income">
            <span class="material-symbols-sharp">monitoring</span>
            <div class="midle">
              <div class="left">
                <b>Total Income</b>
                <h4>$10,864</h4>
              </div>
              <div class="prog">
                <svg>
                  <circle cx="30" cy="30" r="28"></circle>
                </svg>
                <div class="number">
                  <p>44%</p>
                </div>
              </div>
            </div>
            <small class="text-muted">Last 24 hour</small>
          </div>
        </div>
        <div class="orders">
          <div class="name-item">
            <h5>Recent Orders</h5>
          </div>
          <div class="table">
            <table>
              <div class="row1">
                <tr style="border-top: none;">
                  <td><a><b>Product Name</b></a></td>
                  <td><a><b>Product Numbe<r /b></a></td>
                  <td><a><b>Payment</b></a></td>
                  <td><a><b>Status</b></a></td>
                  <td></td>
                </tr>
              </div>

              <tr>
                <td><a>IPhone 14 Pro</a></td>
                <td><a>2436</a></td>
                <td><a>Due</a></td>
                <td><a>Pending</a></td>
                <td><a>Details</a></td>
              </tr>
              <tr>
                <td><a>Samsung Galaxy</a></td>
                <td><a>1728</a></td>
                <td><a>Refunded</a></td>
                <td><a>Declined</a></td>
                <td><a>Details</a></td>
              </tr>
              <tr>
                <td><a>G5 GE-51VN263SH</a></td>
                <td><a>724</a></td>
                <td><a>Paid</a></td>
                <td><a>Delivered</a></td>
                <td><a>Details</a></td>
              </tr>
              <tr>
                <td><a>Apple Watch</a></td>
                <td><a>947</a></td>
                <td><a>Due</a></td>
                <td><a>Pending</a></td>
                <td><a>Details</a></td>
              </tr>
              <tr style="border-bottom: none;">
                <td><a>MacBook Air</a></td>
                <td><a>528</a></td>
                <td><a>Paid</a></td>
                <td><a>Delivered</a></td>
                <td><a>Details</a></td>
              </tr>

            </table>
          </div>
        </div>
      </div>
      <div class="col-xs-2 col-sm-2 col-md-2 col-lg-3 right">
        <div class="top">
          <div class="user">
            <div class="avatar">
              <span class="material-symbols-sharp">account_circle</span>
            </div>
            <div class="info">
              <a id="name" style="font-size: 15px; line-height: 15px;">Dac Duy</a>
              <a id="Position" style="font-size: 12px; line-height: 12px;">Admin</a>
            </div>
            <div class="more">
              <a href="#" style="color: black;"><span class="material-symbols-sharp">expand_more</span></a>
              <div class="sub_menu">
                <ul>
                  <li style="display: flex; align-items: center;">
                    <a>Password</a>
                    <span class="material-symbols-sharp">chevron_right</span>
                  </li>
                  <li style="display: flex; align-items: center;">
                    <a>Switch</a>
                    <span class="material-symbols-sharp">chevron_right</span>
                  </li>
                  <li style="display: flex; align-items: center;">
                    <a>Log out</a>
                    <span class="material-symbols-sharp" style="font-size: 15px;">logout</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="notify">
          <div class="title">
            <h5>Recent Updates</h5>
          </div>
          <div class="box">
            <div class="box-sub">
              <div class="avt1">
                <img src="${base}/images/avt1.jpg" alt="">
              </div>
              <div class="notify-content">
                <div class="content"><a><b>Darkz</b> received his order of Iphone 14 Pro 256GB</a></div>
                <div class="time"><a>2 minutes ago</a></div>
              </div>
            </div>
            <div class="box-sub">
              <div class="avt1">
                <img src="${base}/images/avt1.jpg" alt="">
              </div>
              <div class="notify-content">
                <div class="content"><a><b>Neymar</b> declined his order of MacBook Pro M1</a></div>
                <div class="time"><a>5 minutes ago</a></div>
              </div>
            </div>
            <div class="box-sub">
              <div class="avt1">
                <img src="${base}/images/avt1.jpg" alt="">
              </div>
              <div class="notify-content">
                <div class="content"><a><b>Jack</b> received his order of Samsung Galaxy S22 Ultra</a></div>
                <div class="time"><a>6 minutes ago</a></div>
              </div>
            </div>
          </div>
        </div>
        <div class="sale-analytics">
          <div class="title"><h5>Sales Analytics</h5></div>
          <div class="box1">
            <div class="icon1">
              <span class="material-symbols-sharp">shopping_cart</span>
            </div>
            <div class="info">
              <div class="info1">
                <div class="line1">
                  <a><b>ONLINE ORDERS</b></a>
                  <a id="increase">+39%</a>
                  <a><b>3849</b></a>
                </div>
                <div class="time">Last 24 hours</div>
              </div>
            </div>
          </div>
          <div class="box1">
            <div class="icon2">
              <span class="material-symbols-sharp">local_mall</span>
            </div>
            <div class="info">
              <div class="info1">
                <div class="line1">
                  <a><b>OFFLINE ORDERS</b></a>
                  <a id="decrease">-17%</a>
                  <a><b>1100</b></a>
                </div>
                <div class="time">Last 24 hours</div>
              </div>
            </div>
          </div>
          <div class="box1">
            <div class="icon3">
              <span class="material-symbols-sharp">group</span>
            </div>
            <div class="info">
              <div class="info1">
                <div class="line1">
                  <a><b>NEW CUSTOMER</b></a>
                  <a id="increase">+25%</a>
                  <a><b>849</b></a>
                </div>
                <div class="time">Last 24 hours</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>