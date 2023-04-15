<!-- import thư viện spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Sale Order</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
<link rel="stylesheet" href="${Base}/css/admin-list-product.css" />
<link rel="stylesheet" href="${Base}/css/simplePagination.css" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous" />
	
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-12 top">
				<div class="col-2 logo">
					<a>techshop</a>
					<div class="logo-icons">
						<i class="fa-brands fa-opencart" style="padding-left: 10px"></i>
					</div>
				</div>
				<div class="col-8 name-catalog">
					<h2>Order</h2>
				</div>
				<div class="col-2 user">
					<div class="avatar">
						<span class="material-symbols-sharp">account_circle</span>
					</div>
					<div class="info">
						<a id="name" style="font-size: 15px; line-height: 15px;">Dac
							Duy</a> <a id="Position" style="font-size: 12px; line-height: 12px;">Admin</a>
					</div>
					<div class="more">
						<a href="#" style="color: black;"><span
							class="material-symbols-sharp">expand_more</span></a>
						<div class="sub_menu">
							<ul>
								<li style="display: flex; align-items: center;"><a>Password</a>
									<span class="material-symbols-sharp">chevron_right</span></li>
								<li style="display: flex; align-items: center;"><a>Switch</a>
									<span class="material-symbols-sharp">chevron_right</span></li>
								<li style="display: flex; align-items: center;"><a>Log
										out</a> <span class="material-symbols-sharp"
									style="font-size: 15px;">logout</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 down">
				<div class="col-2 sidebar">
					<ul>
						<li><a href="#"> <span class="material-symbols-sharp">dashboard</span>
								<h3>
									<a href="${base }/admin/home">Dashboard</a>
								</h3>
						</a></li>
						<li><a href="#"> <span class="material-symbols-sharp">person_outline</span>
								<h3>Customer</h3>
						</a></li>
						<li id="default"><a href="${Base }/admin/order"> <span class="material-symbols-sharp">receipt_long</span>
								<h3>Order</h3>
						</a></li>
						<li><a href="#"> <span class="material-symbols-sharp">insights</span>
								<h3>Analytics</h3>
						</a></li>
						<li><a href="${Base }/admin/message"> <span class="material-symbols-sharp">mail_outline</span>
								<h3>Message</h3>
						</a></li>
						<li><a href="${base }/admin/product/list"> <span
								class="material-symbols-sharp">inventory</span>
								<h3>Products</h3>
						</a></li>
						<li><a href="#"> <span class="material-symbols-sharp">report_gmailerrorred</span>
								<h3>Reports</h3>
						</a></li>
						<li><a href="#"> <span class="material-symbols-sharp">settings</span>
								<h3>Setting</h3>
						</a></li>
						<li><a href="${Base}/admin/product/management"> <span class="material-symbols-sharp">add</span>
								<h3>Add Product</h3>
						</a></li>
						<li><a href="${base }/login" style=""> <span
								class="material-symbols-sharp">logout</span>
								<h3>
									Log out
								</h3>
						</a></li>
					</ul>
				</div>
				<!-- List Product -->

				<div class="col-10 list-products" id="listProduct">
					<%-- <form action="${base }/admin/order" method="get">
						<div class="col-7 search">
							<!-- số trang sản phẩm -->
							<input id="page" name="page" class="form-control"
								value="${productSearch.page }" style="margin-right: 5px;">
							<!-- Tim kiem theo ten -->
							<input type="search" id="keyword" name="keyword"
								class="form-control" placeholder="Search"
								value="${productSearch.keyword }" autocomplete="off">
							<!-- Tim kiem theo category -->
							<select class="form-control" name="categoryId" id="categoryId"
								style="margin: 0px 5px;">
								<option value="0">All</option>
								<c:forEach items="${categories}" var="category">
									<option value="${category.id }">${category.name }</option>
								</c:forEach>
							</select>
							<button type="submit" id="btnSearch" name="btnSearch">Search</button>
						</div>
					</form> --%>
					<div class="title">
						<h2>List Order</h2>
					</div>
					<!-- danh sách sản phẩm -->
					<table class="table table-striped info-product">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Code</th>
								<!-- <th scope="col">Customer Name</th>
								<th scope="col">Phone number</th> -->
								<th scope="col">Product</th>
								<th scope="col">Quantity</th>
								<th scope="col">Created Date</th>
							</tr>
						</thead>
						<tbody>
							
							<c:forEach items="${saleOrders.data}" var="order"
								varStatus="loop">
								<tr>
									<th scope="row" width="5%">${loop.index + 1}</th>
									<%-- <td>${order.id }</td>	 --%>
									<td><a href="${base }/admin/order/${order.id}" style="text-decoration: none; color: black">${order.code }</a></td>
									<%-- <td>${order.customerPhone }</td> --%>
									<td>
										<c:forEach items="${order.saleOrderProducts}" var="saleOrderProduct">
											${saleOrderProduct.product.nameProduct }
											<br>
										</c:forEach>
									</td>
									<td>
										<c:forEach items="${order.saleOrderProducts }" var="saleOrderProduct">
											${saleOrderProduct.quality}
											<br>
										</c:forEach>
									</td>
									<td>${order.createdDate }</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
					<!-- phân trang -->
					<div class="row">
						<div class="col-12 d-flex justify-content-center">
							<div id="paging"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- Paging -->
	<script src="${base}/js/jquery.simplePagination.js"></script>
	<script src="${base}/js/deleteProduct.js"></script>
	<script type="text/javascript">
			$( document ).ready(function() {
				$("#paging").pagination({
					currentPage: ${saleOrders.currentPage}, 	//trang hiện tại
			        items: ${saleOrders.totalItems},			//tổng số sản phẩm
			        itemsOnPage: ${saleOrders.sizeOfPage}, 	//số sản phẩm trên 1 trang
			        cssStyle: 'light-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
					},
			    });
			});
		</script>
</body>

</html>