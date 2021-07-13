<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<style>
.orderInfo {
	border: 5px solid #eee;
	padding: 20px;
}

.orderInfo .inputArea {
	margin: 10px 0;
}

.orderInfo .inputArea label {
	display: inline-block;
	width: 120px;
	margin-right: 10px;
}

.orderInfo .inputArea input {
	font-size: 14px;
	padding: 5px;
}

#userAddr2, #userAddr3 {
	width: 250px;
}

.orderInfo .inputArea:last-child {
	margin-top: 30px;
}

.orderInfo .inputArea button {
	font-size: 20px;
	border: 2px solid #ccc;
	padding: 5px 10px;
	background: #fff;
	margin-right: 20px;
}
</style>

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
				<p>Lorem ipsum dolor sit amet consectetu adipisicing elit sed do
					eiusmod tempor incididunt ut labore.</p>
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
<!-- Start Bradcaump area -->
<div class="ht__bradcaump__area"
	style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/myweb/images/bg/2.jpg) no-repeat scroll center center / cover ;">
	<div class="ht__bradcaump__wrap">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="bradcaump__inner text-center">
						<h2 class="bradcaump-title">Order Product</h2>
						<nav class="bradcaump-inner">
							<span class="breadcrumb-item">Order</span> <span
								class="brd-separetor">/</span> <span class="breadcrumb-item">Delivery</span>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Bradcaump area -->
<div class="cart-main-area ptb--120 bg__white">
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12 col-xs-12">

				<form action="#">

					<div class="table-content table-responsive">

						<table>

							<thead>
								<tr>
									<th class="product-thumbnail">Image</th>
									<th class="product-name">Product</th>
									<th class="product-price">Price</th>
									<th class="product-quantity">Quantity</th>
									<th class="product-subtotal">Total</th>
									<th class="product-remove">Remove</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${cartList}" var="list">
									<tr>
										<td class="product-thumbnail"><a href="#"><img
												src="${list.gdsThumImg}" /></a></td>
										<td class="product-name"><a href="#">${list.gdsName}</a></td>
										<td class="product-price"><span class="amount"> <%-- ${list.gdsPrice} --%>
												<fmt:formatNumber pattern="###,###,###"
													value="${list.gdsPrice*1}" />
										</span></td>
										<td class="product-quantity">${list.cartStock}</td>
										<td class="product-subtotal"><fmt:formatNumber
												pattern="###,###,###"
												value="${list.gdsPrice * list.cartStock}" /></td>
										<td class="product-remove"><a
											href="${pageContext.request.contextPath}/views/shop/deleteCart?cartNum=${list.cartNum}">X</a>
											<input type="hidden" name="gdsName" value="${list.gdsNum}">
										</td>
									</tr>

								</c:forEach>
							</tbody>

						</table>
					</div>
					<div class="row">
						<div class="col-md-8 col-sm-7 col-xs-12">
							<div class="buttons-cart">
								<a href="/home">Main</a> <a href="/views/shop/list?c=100">Continue
									Shopping</a>
							</div>

						</div>
						<div class="col-md-4 col-sm-5 col-xs-12">
							<div class="cart_totals">
								<h2>Cart Totals</h2>
								<table>
									<tbody>
										<tr class="cart-subtotal">
											<th>Subtotal</th>
											<td><span class="amount"><fmt:formatNumber
														pattern="###,###,###" value="${totalPrice}" /> </span></td>
										</tr>
										<tr class="shipping">
											<th>Shipping</th>
											<td>
												<ul id="shipping_method">
													<li><input type="radio" /> <label> Flat Rate:
															<span class="amount">3000won</span>
													</label></li>
													<!-- <li><input type="radio" /> <label> Free
															Shipping </label></li> -->
												</ul>
												<p>
													<a class="shipping-calculator-button">Calculate
														Shipping</a>
												</p>
											</td>
										</tr>
										<tr class="order-total">
											<th>Total</th>
											<td><strong><span class="amount"><fmt:formatNumber
															pattern="###,###,###" value="${totalPrice+3000}" /> won
												</span></strong></td>
										</tr>
									</tbody>
								</table>
								<div class="wc-proceed-to-checkout">
									<a href="#">Proceed to Checkout</a>

								</div>


							</div>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>
<section class="our-checkout-area ptb--120 bg__white">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-lg-8">
				<div class="ckeckout-left-sidebar">
					<!-- Start Checkbox Area -->
					<div class="checkout-form">
						<h2 class="section-title-3">Delivery</h2>
						<div class="checkout-form-inner">
							<%-- <sec:authorize access="hasRole('ROLE_MEMBER')"> --%>
							<form class="login"
								action="${pageContext.request.contextPath}/views/shop/order">
								<sec:csrfInput />
								<%-- csrf 토큰 --%>
								<div class="single-checkout-box">
									<input type="hidden" name="amount" value="${totalPrice}" />
								</div>
								<div class="single-checkout-box">
									<input type="text" name="orderRec" placeholder="수령인" value=""
										required="required"> <input type="text"
										name="orderPhon" placeholder="전화번호* (010-XXXX-XXXX)"
										required="required" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"
										maxlength="13">
								</div>

								<div class="single-checkout-box">
									<input type="text" placeholder="우편번호*" name="addr1" value=""
										required="required"> <input type="text"
										placeholder="주소 1차*" name="addr2" value="" required="required">
								</div>

								<div class="single-checkout-box">
									<input type="text" placeholder="주소 2차*" name="addr3" value=""
										required="required" style="width: 100%;">
								</div>
						</div>
					</div>
					<!-- End Checkbox Area -->
					<div class="buttons-cart" style="margin-left: 350px;">
						<input type="submit" value="order"
							onClick="${pageContext.request.contextPath}/views/shop/register-ok">
					</div>
					</form>
					<%-- 	</sec:authorize> --%>
					<br> <br>

				</div>
			</div>
			<div class="col-md-4 col-lg-4">
				<div class="checkout-right-sidebar">
					<div class="our-important-note">
						<div class="single-portfolio-img">
							<img src="/myweb/images/delivery/1.png" alt="배송지연 안내">
						</div>
					</div>
				</div>
				<div class="puick-contact-area mt--60">
					<h2 class="section-title-3">Customer Service</h2>
					<a href="tel:010-1111-22220">010-1111-22220 </a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- cart-main-area end -->
<!-- Start Footer Area -->

<!-- Start Footer Area -->