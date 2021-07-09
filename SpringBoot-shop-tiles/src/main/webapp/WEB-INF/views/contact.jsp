<%-- contact에 카카오맵 api 넣기 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

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
					<a href="index.html"> <img src="images/logo/logo.png"
						alt="logo">
					</a>
				</div>
				<p>Lorem ipsum dolor sit amet consectetu adipisicing elit sed do
					eiusmod tempor incididunt ut labore.</p>
			</div>
			<ul class="sidebar__thumd">
				<li><a href="#"><img src="images/sidebar-img/1.jpg"
						alt="sidebar images"></a></li>
				<li><a href="#"><img src="images/sidebar-img/2.jpg"
						alt="sidebar images"></a></li>
				<li><a href="#"><img src="images/sidebar-img/3.jpg"
						alt="sidebar images"></a></li>
				<li><a href="#"><img src="images/sidebar-img/4.jpg"
						alt="sidebar images"></a></li>
				<li><a href="#"><img src="images/sidebar-img/5.jpg"
						alt="sidebar images"></a></li>
				<li><a href="#"><img src="images/sidebar-img/6.jpg"
						alt="sidebar images"></a></li>
				<li><a href="#"><img src="images/sidebar-img/7.jpg"
						alt="sidebar images"></a></li>
				<li><a href="#"><img src="images/sidebar-img/8.jpg"
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
						<a href="#"> <img src="images/product/sm-img/1.jpg"
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
						<a href="#"> <img src="images/product/sm-img/2.jpg"
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
	style="background: rgba(0, 0, 0, 0) url(/myweb/images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="bradcaump__inner text-center">
						<h2 class="bradcaump-title">Contact US</h2>
						<nav class="bradcaump-inner">
							<a class="breadcrumb-item" href="index.html">Home</a> <span
								class="brd-separetor">/</span> <span
								class="breadcrumb-item active">Contact US</span>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Bradcaump area -->
<!-- Start Contact Area -->
<section class="htc__contact__area ptb--120 bg__white">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
				<div class="htc__contact__container">
					<div class="htc__contact__address">
						<h2 class="contact__title">contact info</h2>
						<div class="contact__address__inner">
							<!-- Start Single Adress -->
							<div class="single__contact__address">
								<div class="contact__icon">
									<span class="ti-location-pin"></span>
								</div>
								<div class="contact__details">
									<p>
										위치 : 13637 경기 성남시 분당구 성남대로 34
									</p>
								</div>
							</div>
							<!-- End Single Adress -->
						</div>
						<div class="contact__address__inner">
							<!-- Start Single Adress -->
							<div class="single__contact__address">
								<div class="contact__icon">
									<span class="ti-mobile"></span>
								</div>
								<div class="contact__details">
									<p>
										전화번호 : <br>
										<meta name="format-detection" content="telephone=no">
										<a href="tel:010-1111-22220">010-1111-22220 </a>
									</p>
								</div>
							</div>
							<!-- End Single Adress -->
							<!-- Start Single Adress -->
							<div class="single__contact__address">
								<div class="contact__icon">
									<span class="ti-email"></span>
								</div>
								<div class="contact__details">
									<p>
										메일 :<br>
										<a href="mailto:ekdud822@gmail.com">ekdud822@gmail.com</a>
									</p>
								</div>
							</div>
							<!-- End Single Adress -->
						</div>
					</div>
					<div class="contact-form-wrap">
						<div class="contact-title">
							<h2 class="contact__title">Get In Touch</h2>
						</div>
						<form id="contact-form" action="mail.php" method="post">
							<div class="single-contact-form">
								<div class="contact-box name">
									<input type="text" name="name" placeholder="이름*">
									<input type="email" name="email" placeholder="이메일*">
								</div>
							</div>
							<div class="single-contact-form">
								<div class="contact-box subject">
									<input type="text" name="subject" placeholder="제목*">
								</div>
							</div>
							<div class="single-contact-form">
								<div class="contact-box message">
									<textarea name="message" placeholder="내용*"></textarea>
								</div>
							</div>
							<div class="contact-btn">
								<button type="submit" class="fv-btn" onclick="location.href='mailto:ekdud822@gmail.com'">전송</button>
							</div>
						</form>
					</div>
					<div class="form-output">
						
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-6 col-sm-12 col-xs-12 smt-30 xmt-30">
				<div class="map-contacts">
					<div id="map" style="width: 500px; height: 400px;"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=acb2ebf66ffdf227a1f9bafac952911e"></script>
					<script>
						let mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(37.33888676483475,
									127.10939163189883), // 지도 중심좌표
							level : 3// 지도 확대 레벨
						};

						let map = new kakao.maps.Map(mapContainer, mapOption); // 지도 생성

						// 마커가 표시될 위치
						let markerPosition = new kakao.maps.LatLng(
								37.33888676483475, 127.10939163189883);

						// 마커 생성
						let marker = new kakao.maps.Marker({
							position : markerPosition
						});

						// 마커가 지도 위에 표시되도록 설정합니다
						marker.setMap(map);

						// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
						// marker.setMap(null);
					</script>
				</div>
			</div>
		</div>
	</div>
</section>
<div id="quickview-wrapper">
	<!-- Modal -->
	<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal__container" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="modal-product">
						<!-- Start product images -->
						<div class="product-images">
							<div class="main-image images">
								<img alt="big images" src="images/product/big-img/1.jpg">
							</div>
						</div>
						<!-- end product images -->
						<div class="product-info">
							<h1>Simple Fabric Bags</h1>
							<div class="rating__and__review">
								<ul class="rating">
									<li><span class="ti-star"></span></li>
									<li><span class="ti-star"></span></li>
									<li><span class="ti-star"></span></li>
									<li><span class="ti-star"></span></li>
									<li><span class="ti-star"></span></li>
								</ul>
								<div class="review">
									<a href="#">4 customer reviews</a>
								</div>
							</div>
							<div class="price-box-3">
								<div class="s-price-box">
									<span class="new-price">$17.20</span> <span class="old-price">$45.00</span>
								</div>
							</div>
							<div class="quick-desc">Designed for simplicity and made
								from high quality materials. Its sleek geometry and material
								combinations creates a modern look.</div>
							<div class="select__color">
								<h2>Select color</h2>
								<ul class="color__list">
									<li class="red"><a title="Red" href="#">Red</a></li>
									<li class="gold"><a title="Gold" href="#">Gold</a></li>
									<li class="orange"><a title="Orange" href="#">Orange</a></li>
									<li class="orange"><a title="Orange" href="#">Orange</a></li>
								</ul>
							</div>
							<div class="select__size">
								<h2>Select size</h2>
								<ul class="color__list">
									<li class="l__size"><a title="L" href="#">L</a></li>
									<li class="m__size"><a title="M" href="#">M</a></li>
									<li class="s__size"><a title="S" href="#">S</a></li>
									<li class="xl__size"><a title="XL" href="#">XL</a></li>
									<li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
								</ul>
							</div>
							<div class="social-sharing">
								<div class="widget widget_socialsharing_widget">
									<h3 class="widget-title-modal">Share this product</h3>
									<ul class="social-icons">
										<li><a target="_blank" title="rss" href="#"
											class="rss social-icon"><i class="zmdi zmdi-rss"></i></a></li>
										<li><a target="_blank" title="Linkedin" href="#"
											class="linkedin social-icon"><i
												class="zmdi zmdi-linkedin"></i></a></li>
										<li><a target="_blank" title="Pinterest" href="#"
											class="pinterest social-icon"><i
												class="zmdi zmdi-pinterest"></i></a></li>
										<li><a target="_blank" title="Tumblr" href="#"
											class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
										<li><a target="_blank" title="Pinterest" href="#"
											class="pinterest social-icon"><i
												class="zmdi zmdi-pinterest"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="addtocart-btn">
								<a href="#">Add to cart</a>
							</div>
						</div>
						<!-- .product-info -->
					</div>
					<!-- .modal-product -->
				</div>
				<!-- .modal-body -->
			</div>
			<!-- .modal-content -->
		</div>
		<!-- .modal-dialog -->
	</div>
	<!-- END Modal -->
</div>
<!-- END QUICKVIEW PRODUCT -->
<!-- Placed js at the end of the document so the pages load faster -->

<!-- jquery latest version -->
<script src="js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="js/bootstrap.min.js"></script>
<!-- All js plugins included in this file. -->
<script src="js/plugins.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/owl.carousel.min.js"></script>



