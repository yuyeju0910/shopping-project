<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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
                  src="${pageContext.request.contextPath}/myweb/images/logo/logo4.png"
                  alt="logo">
               </a>
            </div>
            <br>
            <p>미뇽플레이스에 오신 것을 환영합니다</p><br>
                    </div>
                    <div style="font-size:18px;">
                    	<ul>
                        	<li><a href="/views/shop/list?c=100"><img src="${pageContext.request.contextPath}/myweb/images/sidebar-img/flags.png" alt="Best"><br>Best</a><br><br></li>
                        	<li><a href="/views/shop/list?c=200"><img src="${pageContext.request.contextPath}/myweb/images/sidebar-img/ring (1).png" alt="Ring/Earrings"><br>Ring/Earrings</a><br><br></li>
                        	<li><a href="/views/shop/list?c=300"><img src="${pageContext.request.contextPath}/myweb/images/sidebar-img/pendant (2).png" alt="Necklaces"><br>Necklaces</a></li>
                        	<li><a href="/views/shop/list?c=400"><img src="${pageContext.request.contextPath}/myweb/images/sidebar-img/sunglasses (2).png" alt="ETC"><br>ETC</a></li>
                    	 
                    	</ul>
                   </div><br><br>
        
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
            <br> <br>
         </div>
      </div>
   </div>
   <!-- End Offset MEnu -->
	
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
			
				<form action="#">

					<div class="table-content table-responsive">

						<table>

							<thead>
								<tr>
								
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
										
										<td class="product-name"><a href="#">${list.gdsName}</a></td>
										<td class="product-price"><span class="amount"><%-- ${list.gdsPrice} --%><fmt:formatNumber
													pattern="###,###,###" value="${list.gdsPrice*1}" /></span></td>
										<td class="product-quantity">${list.cartStock}</td>
										<td class="product-subtotal"><fmt:formatNumber
												pattern="###,###,###"
												value="${list.gdsPrice * list.cartStock}" /></td>
										<td class="product-remove"><a href="${pageContext.request.contextPath}/views/shop/deleteCart?cartNum=${list.cartNum}">X</a>
											<input type="hidden" name="gdsName" value="${list.gdsNum}">
										</td>
									</tr>
									<script>
									//삭제 버튼 클릭 이벤트

								/* 	$(document).on('click', '.product-remove', function(){
								    var url = "${pageContext.request.contextPath}/board/deleteBoard";
								    url = url + "?bid=" + ${boardContent.bid};
										location.href = url;
									}); */
									
									</script>

								</c:forEach>
							</tbody>

						</table>
					</div>
					<div class="row">
						<div class="col-md-8 col-sm-7 col-xs-12">
							<div class="buttons-cart">
								<a href="/home">Main</a>
								<a href="/views/shop/list?c=100">Continue Shopping</a>
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
															pattern="###,###,###"
															value="${totalPrice}" /> 
															</span></td>
										</tr>
										<tr class="shipping">
											<th>Shipping</th>
											<td>
												<ul id="shipping_method">
													<li><input type="radio" /> <label> Flat Rate:
															<span class="amount">$3</span>
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
															pattern="###,###,###"
															value="${totalPrice+3}" /> dollar
															</span></strong></td>
										</tr>
									</tbody>
								</table>
								<div class="wc-proceed-to-checkout">
									<a href="${pageContext.request.contextPath}/views/shop/orderpage">Proceed to Checkout</a>
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

