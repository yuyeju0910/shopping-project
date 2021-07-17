<%-- register 원본 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- Start Checkout Area -->
<section class="our-checkout-area ptb--120 bg__white">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-lg-8">
				<div class="ckeckout-left-sidebar">
					<!-- Start Checkbox Area -->
					<div class="checkout-form">
						<h2 class="section-title-3">Member details</h2>
						<div class="checkout-form-inner">
							<sec:authorize access="hasRole('ROLE_MEMBER')">
								<form class="login" method="post"
									action="${pageContext.request.contextPath}/updateMemberAction">
									<sec:csrfInput />
									<%-- csrf 토큰 --%>
									<div class="single-checkout-box">

										<input type="text" name=id placeholder="id*"
											value="<sec:authentication property="principal.id"/>"
											readonly> <input type="text" name=password
											placeholder="password*">
									</div>
									<div class="single-checkout-box">
										<input type="text" placeholder="name*" name=name
											value="<sec:authentication property="principal.name"/>"
											required="required"> <input type="text"
											placeholder="Phone*" name=phone
											value="<sec:authentication property="principal.phone"/>"
											required="required">
									</div>

									<div class="single-checkout-box">
										<textarea name="message" placeholder="Message*"></textarea>
									</div>
						</div>
					</div>
					<!-- End Checkbox Area -->
					<!-- Start Payment Box -->
					<div class="payment-form">

						<div class="payment-form-inner">
							<div class="single-checkout-box"></div>
							<div class="single-checkout-box select-option"></div>
						</div>
					</div>
					<input type="submit" class="btn-register" value="수정"
						style="border-radius: 25px; padding: 12px 10px; width: 12%">
					</form>
					</sec:authorize>
					<br> <br>

				</div>
			</div>
			<div class="col-md-4 col-lg-4">
				<div class="checkout-right-sidebar">
					<div class="our-important-note">
						<div class="single-portfolio-img">
							<img src="/myweb/images/mypage/4.png" alt="정보수정페이지 사진">
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
<!-- End Checkout Area -->
<!-- Start Footer Area -->