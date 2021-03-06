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
						<h2 class="bradcaump-title">Order Management</h2>
						<nav class="bradcaump-inner">
							<span class="breadcrumb-item">Order</span>
							<span class="brd-separetor">/</span> 
							<span class="breadcrumb-item">Delivery</span>
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
						<!-- ???????????? start -->
						<table>
							<thead>
								<tr>
									<th class="customer-name">Customer Name</th>
									<th class="customer-address1">Zip code</th>
									<th class="customer-address2&3">Address</th>
									<th class="product-price">Price</th>
									<th class="delivery-process">Process</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${orderView}" var="orderView" varStatus="status">
									<c:if test="${status.first}">
										<tr>
											<td>
												${orderView.orderRec}
											</td>
											<td class="customer-address1">
												${orderView.addr1}
											</td>
											<td class="customer-address2&3">
												${orderView.addr2} ${orderView.addr3}
											</td>
											<td>
												$ <fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" />
											</td>
											<td>
												${orderView.delivery}
											</td>
										</tr>
									</tbody>
											<%-- <td class="delivery-process">
										  		${list.delivery}
											</td> --%>
										<form role="form" class="deliveryForm" action="${pageContext.request.contextPath}/views/shop/orderViewdelivery">

  						<input type="hidden" name="orderId" value="${orderView.orderId}" />
 			 			<input type="hidden" name="delivery" class="delivery" value="" />

						<div class="buttons-cart" style="margin-left: 1000px;">		
							<button type="button" class="delivery1_btn">?????????</button>
							<button type="button" class="delivery2_btn">????????????</button>
						</div>		
						<script>
						
						$(".delivery1_btn").click(function() {
							$(".delivery").val("?????????");
							run();
						});
						
						$(".delivery2_btn").click(function() {
							$(".delivery").val("????????????");
							run();
						});
						
						function run (){
							$(".deliveryForm").submit();
						}
						
						</script>
						</form>	
									</c:if>
								</c:forEach>
							</tbody>
						</table>
						<!-- ???????????? end -->
						<!-- ???????????? ?????? start -->
						<table>
							<thead>
								<tr>
									<th class="thumb">Image</th>
									<th class="product-name">Product Name</th>
									<th class="product-price">Product Price</th>
									<th class="quantity">Quantity</th>
									<th class="final-price">Final Price</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${orderView}" var="orderView">  
										<tr>
											<td class="thumb">
    										<img src="${orderView.gdsThumbImg}" />
   											</td>
											<td clas="product-name">
												${orderView.gdsName}
											</td>

											<td class="product-price">
												$ <fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice}" /><br />
											</td>
											<td class="quantity">
												${orderView.cartStock} ???<br />
											</td>
											<td class="final-price">
												$ <fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice * orderView.cartStock}" />
											</td>
										</tr></c:forEach>
									</tbody></table>
								<!-- ???????????? ?????? end -->
					</div></div></div></div></div>