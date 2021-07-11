<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<head>

<style>
select {
	width: 100px;
}

label {
	display: inline-block;
	width: 100px;
	padding: 5px;
	font-size: 14px;
}

input#gdsName {
	margin-top: 30px;
}

.select_img img {
	margin: 20px 0;
}

.btn-register {
	border-radius: 25px;
	padding: 12px 10px;
	width: 7%;
	margin-right: 5px;
}

.single-checkout-box {
	margin: 10px 0;
	display: inline-block;
	align-content:space-around;
	width: 120%;
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
	<!--    상단부분 회색 배경 삽입 -->
	<div class="ht__bradcaump__area"
		style="background: rgba(0, 0, 0, 0) url(/myweb/images/bg/2.jpg) no-repeat scroll center center/cover;">
		<div class="ht__bradcaump__wrap">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">Product Details</h2>
							<nav class="bradcaump-inner">
								<span class="breadcrumb-item">Product register</span> <span
									class="brd-separetor">/</span> <span
									class="breadcrumb-item active">Update</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="our-checkout-area ptb--120 bg__white"
		style="justify-content: center;">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="checkout-form" style="margin-left:125px;">
						<h2 class="section-title-3">Details</h2>
						<div class="checkout-form-inner"></div>
						<div class="single-checkout-box select-option mt--40">
							<c:forEach items="${category}" var="item">
								<option value="${item.CATECODE}">${item.CATENAME}</option>
							</c:forEach>
						</div>
					</div>
					
					
						<div class="single-checkout-box">
							<input type="hidden" name="n" value="${goods.gdsNum}"> <span
								class="category1"></span> <label>상품코드*</label> <span
								class="category2"> <input type="text" name=상품명
								value="${goods.middlecateCode}" style="width:75%;" readonly></span>
						</div>
						<div class="single-checkout-box">
							<label for="gdsName">상품명*</label> <input type="text" name=상품명
								value="${goods.gdsName}" style="width:75%;" readonly>
						</div>

						<div class="single-checkout-box">
							<label for="gdsPrice">상품가격*</label> <input type="text" name=상품가격
								value="${goods.gdsPrice}" style="width:75%;" readonly>
						</div>

						<div class="single-checkout-box">
							<label for="gdsStock">상품수량*</label> <input type="text" name=상품수량
								value="${goods.gdsStock}" style="width:75%;" readonly>
						</div>
						<div class="single-checkout-box" style="text-align: center;">
							<label for="gdsDes">상품소개</label>
							<textarea name="상품소개" placeholder="${goods.gdsDes}" style="width:105%;" readonly></textarea>
						</div>
						<div class="single-checkout-box">
							<label for="gdsImg">이미지</label>
							<p>원본 이미지</p>
							<img src="${goods.gdsImg}" class="oriImg" />
							<p>썸네일</p>
							<img src="${goods.gdsThumbImg}" class="thumbImg" />
						</div>
					<!-- </div> -->
				</div>
			</div><br>
			
			<div class="btnArea" style="margin-left:125px;">
				<button form="updateForm" type="submit" class="btn-register">수정</button>
				<button form="deleteForm" type="submit" class="btn-register">삭제</button>
			</div>


			<form action="${pageContext.request.contextPath}/admin/goods/productUpdate" id="updateForm" method="get">
				<input type="hidden" name="n" value="${goods.gdsNum}">
			</form>

			<form action="${pageContext.request.contextPath}/admin/goods/deleteview" id="deleteForm" method="get">
				<input type="hidden" name="n" value="${goods.gdsNum}">
			</form>
		</div>
	</div>

	<script>
		//1. 위에 대분류 카테고리 선택
		$(document)
				.ready(
						function() {
							$("#category")
									.change(
											function() {
												//var category1={}  //이부분 필요 없음
												category1 = $("#category")
														.val(); //2. 여기로 카테고리 코드 들고와짐
												$("#category2").empty();
												$
														.ajax({
															type : "get",
															url : "registerAjax?categoryCode="
																	+ category1, //
															dataType : "json",
															success : function(
																	data) {
																//alert(data.length);
																for (let i = 0; i < data.length; i++) {
																	let tag = "<option value="+data[i].MIDDLECATECODE+">"
																			+ data[i].MIDDLECATENAME
																			+ "</option>";
																	$(
																			"#category2")
																			.append(
																					tag);
																}

															}
														});//ajax
											});//change     
						});//ready
	</script>
</sec:authorize>