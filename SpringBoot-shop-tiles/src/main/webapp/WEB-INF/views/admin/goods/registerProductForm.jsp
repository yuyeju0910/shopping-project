<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<head>

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
	<!-- Start Login Register Area -->
	<!--    상단부분 회색 배경 삽입 -->
	<div class="ht__bradcaump__area"
		style="background: rgba(0, 0, 0, 0) url(/myweb/images/bg/2.jpg) no-repeat scroll center center/cover;">
		<div class="ht__bradcaump__wrap">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">Product Register</h2>
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
					<!-- 주황색 register <ul class="login__register__menu" role="tablist">
                  <li role="presentation" class="login active"><a
                     href="register" role="tab" data-toggle="tab">Register</a></li>
               </ul> -->
					<div class="checkout-form">
						<h2 class="section-title-3">Register</h2>
						<div class="checkout-form-inner"></div>
					</div>
				</div>
			</div>
			<div class="col-xs-6">
				<br>
				<br> <img src="/myweb/images/mypage/5.png">
			</div>
			<form role="form" method="post" autocomplete="off"
				enctype="multipart/form-data"
				action="${pageContext.request.contextPath}/admin/goods/registergoods">
				<sec:csrfInput />
				<%-- csrf 토큰 --%>
				<div class="checkout-form"
					style="display: block; justify-content: center;">
					<div class="single-checkout-box select-option mt--40">

						<label style="visibility: hidden;">대분류</label> <select
							id="category">
							<option>대분류*</option>
							<c:forEach items="${category}" var="item">
								<option value="${item.CATECODE}">${item.CATENAME}</option>
							</c:forEach>
						</select><br>
						<br> <label style="visibility: hidden;">중분류</label> <select
							id="category2" name="middlecateCode">
							<option value="">중분류*</option>
						</select>

					</div>

					<div class="single-checkout-box">
						<label for="gdsName"></label> <input type="text" id="gdsName"
							aria-label="sizing example input" name="gdsName"
							placeholder="상품명*" />
					</div>

					<div class="single-checkout-box">
						<label for="gdsPrice"></label> <input type="text" id="gdsPrice"
							name="gdsPrice" placeholder="상품가격*" />
					</div>

					<div class="single-checkout-box">
						<label for="gdsStock"></label> <input type="text" id="gdsStock"
							name="gdsStock" placeholder="상품수량*" />
					</div>
					<br>
					<br>
					<br>

					<div class="inputArea">
						<label for="gdsDes">상품소개</label>
						<textarea rows="5" cols="50" id="gdsDes" name="gdsDes"></textarea>
						<script>
							var ckeditor_config = {
								resize_enaleb : false,
								enterMode : CKEDITOR.ENTER_BR,
								shiftEnterMode : CKEDITOR.ENTER_P,
								filebrowserUploadUrl : "${pageContext.request.contextPath}/admin/goods/registergoods"
							};

							CKEDITOR.replace("gdsDes", ckeditor_config);
						</script>
					</div>

					<div class="inputArea">
						<label for="gdsImg">이미지</label> <input type="file" id="gdsImg"
							name="file" />
						<div class="select_img">
							<img src="" />
						</div>

					</div>

				</div>
				<script>
					$("#gdsImg").change(
							function() {
								if (this.files && this.files[0]) {
									var reader = new FileReader;
									reader.onload = function(data) {
										$(".select_img img").attr("src",
												data.target.result).width(500);
									}
									reader.readAsDataURL(this.files[0]);
								}
							});
				</script>
				<input type="submit" class="btn-register" value="등록"
					style="border-radius: 25px; padding: 12px 10px; width: 7%">
				<br>
				<br>
				<%=request.getRealPath("/")%>

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
