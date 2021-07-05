<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<head>
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
</style>
<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<style>
.inputArea {
	margin: 10px 0;
}

select {
	width: 100px;
}

label {
	display: inline-block;
	width: 70px;
	padding: 5px;
}

input#gdsName {
	margin-top: 30px;
}

.select_img img {
	margin: 20px 0;
}
</style>


</head>
<sec:authorize access="hasRole('ROLE_ADMIN')">
	<sec:authentication var="mvo" property="principal" />

	<div class="body__overlay"></div>
	<!-- Start Offset Wrapper -->
	<div class="offset__wrapper">
		<!-- Start Search Popap -->
		<div class="search__area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="search__inner">
							<form action="#" method="get">
								<input placeholder="Search here... " type="text">
								<button type="submit"></button>
							</form>
							<div class="search__close__btn">
								<span class="search__close__btn_icon"><i
									class="zmdi zmdi-close"></i></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Search Popap -->
		<!-- Start Offset MEnu -->
		<div class="offsetmenu">
			<div class="offsetmenu__inner">
				<div class="offsetmenu__close__btn">
					<a href="#"><i class="zmdi zmdi-close"></i></a>
				</div>
				<div class="off__contact">
					<div class="logo">
						<a href="index.html"> <img
							src="${pageContext.request.contextPath}/myweb/images/logo/logo.png"
							alt="logo">
						</a>
					</div>
					<p>Lorem ipsum dolor sit amet consectetu adipisicing elit sed
						do eiusmod tempor incididunt ut labore.</p>
				</div>
				<ul class="sidebar__thumd">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/myweb/images/sidebar-img/1.jpg"
							alt="sidebar images"></a></li>
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/myweb/images/sidebar-img/2.jpg"
							alt="sidebar images"></a></li>
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/myweb/images/sidebar-img/3.jpg"
							alt="sidebar images"></a></li>
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/myweb/images/sidebar-img/4.jpg"
							alt="sidebar images"></a></li>
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/myweb/images/sidebar-img/5.jpg"
							alt="sidebar images"></a></li>
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/myweb/images/sidebar-img/6.jpg"
							alt="sidebar images"></a></li>
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/myweb/images/sidebar-img/7.jpg"
							alt="sidebar images"></a></li>
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/myweb/images/sidebar-img/8.jpg"
							alt="sidebar images"></a></li>
				</ul>
				<div class="offset__widget">
					<div class="offset__single">
						<h4 class="offset__title">Language</h4>
						<ul>
							<li><a href="#"> Engish </a></li>
							<li><a href="#"> French </a></li>
							<li><a href="#"> German </a></li>
						</ul>
					</div>
					<div class="offset__single">
						<h4 class="offset__title">Currencies</h4>
						<ul>
							<li><a href="#"> USD : Dollar </a></li>
							<li><a href="#"> EUR : Euro </a></li>
							<li><a href="#"> POU : Pound </a></li>
						</ul>
					</div>
				</div>
				<div class="offset__sosial__share">
					<h4 class="offset__title">Follow Us On Social</h4>
					<ul class="off__soaial__link">
						<li><a class="bg--twitter" href="#" title="Twitter"><i
								class="zmdi zmdi-twitter"></i></a></li>

						<li><a class="bg--instagram" href="#" title="Instagram"><i
								class="zmdi zmdi-instagram"></i></a></li>

						<li><a class="bg--facebook" href="#" title="Facebook"><i
								class="zmdi zmdi-facebook"></i></a></li>

						<li><a class="bg--googleplus" href="#" title="Google Plus"><i
								class="zmdi zmdi-google-plus"></i></a></li>

						<li><a class="bg--google" href="#" title="Google"><i
								class="zmdi zmdi-google"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Offset MEnu -->
		<!-- Start Cart Panel -->
		<div class="shopping__cart">
			<div class="shopping__cart__inner">
				<div class="offsetmenu__close__btn">
					<a href="#"><i class="zmdi zmdi-close"></i></a>
				</div>
				<div class="shp__cart__wrap">
					<div class="shp__single__product">
						<div class="shp__pro__thumb">
							<a href="#"> <img
								src="${pageContext.request.contextPath}/myweb/images/product/sm-img/1.jpg"
								alt="product images">
							</a>
						</div>
						<div class="shp__pro__details">
							<h2>
								<a href="product-details.html">BO&Play Wireless Speaker</a>
							</h2>
							<span class="quantity">QTY: 1</span> <span class="shp__price">$105.00</span>
						</div>
						<div class="remove__btn">
							<a href="#" title="Remove this item"><i
								class="zmdi zmdi-close"></i></a>
						</div>
					</div>
					<div class="shp__single__product">
						<div class="shp__pro__thumb">
							<a href="#"> <img
								src="${pageContext.request.contextPath}/myweb/images/product/sm-img/2.jpg"
								alt="product images">
							</a>
						</div>
						<div class="shp__pro__details">
							<h2>
								<a href="product-details.html">Brone Candle</a>
							</h2>
							<span class="quantity">QTY: 1</span> <span class="shp__price">$25.00</span>
						</div>
						<div class="remove__btn">
							<a href="#" title="Remove this item"><i
								class="zmdi zmdi-close"></i></a>
						</div>
					</div>
				</div>
				<ul class="shoping__total">
					<li class="subtotal">Subtotal:</li>
					<li class="total__price">$130.00</li>
				</ul>
				<ul class="shopping__btn">
					<li><a href="cart.html">View Cart</a></li>
					<li class="shp__checkout"><a href="checkout.html">Checkout</a></li>
				</ul>
			</div>
		</div>
		<!-- End Cart Panel -->
	</div>
	<!-- End Offset Wrapper -->
	<!-- Start Login Register Area -->
	<div class="htc__login__register bg__white ptb--130"
		style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/myweb/images/bg/5.jpg) no-repeat scroll center center / cover ;">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<ul class="login__register__menu" role="tablist">
						<li role="presentation" class="login active"><a
							href="register" role="tab" data-toggle="tab">Register</a></li>

					</ul>
				</div>
			</div>
			<div class="table-responsive">
			<sec:csrfInput/>
				<table id="myTable" class="display table" width="100%" >
					<thead>
						<tr>
							<th>ENO</th>
							<th>EMPName</th>
							<th>Country</th>
							<th>Salary</th>
						</tr>
					</thead>
					<tbody>
					
						<c:forEach items="${productList}" var="list">
							<tr>
								<td><a href="${pageContext.request.contextPath}/admin/goods/view?n=${list.gdsNum}">${list.gdsName}></a></td>
								<td>${list.gdsName}</td>
								<td>${list.middlecateCode}</td>
								<td>${list.gdsPrice}</td>
								<td>${list.gdsStock}</td>
								<td>${list.gdsDate}</td>
							</tr>
						</c:forEach>						
					</tbody>
				</table>
			</div>
</sec:authorize>