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

.deliveryChange { text-align:right; }
.delivery1_btn,
.delivery2_btn { font-size:16px; background:#fff; border:1px solid #999; margin-left:10px; }
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
						<h2 class="bradcaump-title">Member-Information</h2>
						<nav class="bradcaump-inner">
							<a class="breadcrumb-item" href="index.html">MemberInformation</a>
							<span class="brd-separetor">/</span> <span
								class="breadcrumb-item active">Update</span>
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
								<c:forEach items="${orderView}" var="orderView"
									varStatus="status">

									<c:if test="${status.first}">
										<p>
											<span>수령인</span>${orderView.orderRec}</p>
										<p>
											<span>주소</span>(${orderView.addr1})
											${orderView.addr2} ${orderView.addr3}
										</p>
										<p>
											<span>가격</span>
											<fmt:formatNumber pattern="###,###,###"
												value="${orderView.amount}" />
											원
										</p>
										<p><span>상태</span>${orderView.delivery}</p>
										<div class="deliveryChange">
										<form role="form" class="deliveryForm" action="${pageContext.request.contextPath}/views/shop/orderViewdelivery">
						
  						<input type="hidden" name="orderId" value="${orderView.orderId}" />
 			 			<input type="hidden" name="delivery" class="delivery" value="" />
			
										
							<button type="button" class="delivery1_btn">배송중</button>
						<button type="button" class="delivery2_btn">배송완료</button>
						
						<script>
						
						$(".delivery1_btn").click(function() {
							$(".delivery").val("배송중");
							run();
						});
						
						$(".delivery2_btn").click(function() {
							$(".delivery").val("배송완료");
							run();
						});
						
						function run (){
							$(".deliveryForm").submit();
						}
						
						</script>
						</form>
										</div>
									</c:if>

								</c:forEach>
							</tbody>

						</table>
					</div>
					 <ul class="orderView">
  <c:forEach items="${orderView}" var="orderView">     
  <li>
   <div class="thumb">
    <img src="${orderView.gdsThumbImg}" />
   </div>
   <div class="gdsInfo">
    <p>
     <span>상품명</span>${orderView.gdsName}<br />
     <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice}" /> 원<br />
     <span>구입 수량</span>${orderView.cartStock} 개<br />
     <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice * orderView.cartStock}" /> 원                  
    
    </p>
   </div>
  </li>     
  </c:forEach>
 </ul>
					<div class="row">
						<div class="col-md-8 col-sm-7 col-xs-12">
							<div class="buttons-cart">
								<input type="submit" value="Update Cart" /> <a href="#">Continue
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
											<td><span class="amount">£215.00</span></td>
										</tr>
										<tr class="shipping">
											<th>Shipping</th>
											<td>
												<ul id="shipping_method">
													<li><input type="radio" /> <label> Flat Rate:
															<span class="amount">£7.00</span>
													</label></li>
													<li><input type="radio" /> <label> Free
															Shipping </label></li>
													<li></li>
												</ul>
												<p>
													<a class="shipping-calculator-button" href="#">Calculate
														Shipping</a>
												</p>
											</td>
										</tr>
										<tr class="order-total">
											<th>Total</th>
											<td><strong><span class="amount"><fmt:formatNumber
															pattern="###,###,###" value="${totalPrice}" /> </span></strong></td>
										</tr>
									</tbody>
								</table>
								<div class="wc-proceed-to-checkout">
									<a
										href="${pageContext.request.contextPath}/views/shop/orderpage">Proceed
										to Checkout</a>

								</div>


							</div>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>
<!-- cart-main-area end -->
<!-- Start Footer Area -->
<footer class="htc__foooter__area gray-bg">
	<div class="container">
		<div class="row">
			<div class="footer__container clearfix">
				<!-- Start Single Footer Widget -->
				<div class="col-md-3 col-lg-3 col-sm-6">
					<div class="ft__widget">
						<div class="ft__logo">
							<a href="index.html"> <img
								src="${pageContext.request.contextPath}/myweb/images/logo/logo.png"
								alt="footer logo">
							</a>
						</div>
						<div class="footer-address">
							<ul>
								<li>
									<div class="address-icon">
										<i class="zmdi zmdi-pin"></i>
									</div>
									<div class="address-text">
										<p>
											194 Main Rd T, FS Rayed <br> VIC 3057, USA
										</p>
									</div>
								</li>
								<li>
									<div class="address-icon">
										<i class="zmdi zmdi-email"></i>
									</div>
									<div class="address-text">
										<a href="#"> info@example.com</a>
									</div>
								</li>
								<li>
									<div class="address-icon">
										<i class="zmdi zmdi-phone-in-talk"></i>
									</div>
									<div class="address-text">
										<p>+012 345 678 102</p>
									</div>
								</li>
							</ul>
						</div>
						<ul class="social__icon">
							<li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
							<li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
							<li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
							<li><a href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- End Single Footer Widget -->
				<!-- Start Single Footer Widget -->
				<div class="col-md-3 col-lg-2 col-sm-6 smt-30 xmt-30">
					<div class="ft__widget">
						<h2 class="ft__title">Categories</h2>
						<ul class="footer-categories">
							<li><a href="shop-sidebar.html">Men</a></li>
							<li><a href="shop-sidebar.html">Women</a></li>
							<li><a href="shop-sidebar.html">Accessories</a></li>
							<li><a href="shop-sidebar.html">Shoes</a></li>
							<li><a href="shop-sidebar.html">Dress</a></li>
							<li><a href="shop-sidebar.html">Denim</a></li>
						</ul>
					</div>
				</div>
				<!-- Start Footer Area -->