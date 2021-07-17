<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%-- spring security custom tag를 사용하기 위한 선언 --%>
<%@taglib prefix="sec"  uri="http://www.springframework.org/security/tags"%> 
<sec:authorize access="hasRole('ROLE_ADMIN')">
<sec:authentication var="mvo" property="principal" />  
<div class="body__overlay"></div>

		<!-- Start Login Register Content -->

<div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        <div class="offset__wrapper">
            <!-- Start Search Popap -->
            <div class="search__area">
                <div class="container" >
                    <div class="row" >
                        <div class="col-md-12" >
                            <div class="search__inner">
                                <form action="#" method="get">
                                    <input placeholder="Search here... " type="text">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
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
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/myweb/images/product/sm-img/1.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">BO&Play Wireless Speaker</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$105.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                            </div>
                        </div>
                        <div class="shp__single__product">
                            <div class="shp__pro__thumb">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/myweb/images/product/sm-img/2.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">Brone Candle</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$25.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
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
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/myweb/images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Blog</h2>
                                <nav class="bradcaump-inner">
                                 		<sec:authorize access="hasRole('ROLE_ADMIN')">
					<sec:authentication var="mvo" property="principal" />  
 					${mvo.name} 관리자님 admin 메인화면입니다. 
			</sec:authorize>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- End Bradcaump area -->
        <!-- Start BLog Area -->
        <div class="htc__blog__area bg__white ptb--120">
            <div class="container">
            
                <div class="row">
                    <div class="blog__wrap blog--page clearfix">
                    
                        <!-- Start Single Blog -->
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="/admin/goods/registerProductForm">
                                            <img src="${pageContext.request.contextPath}/myweb/images/admin/1.jpg" alt="blog images">
                                        </a>
                                    </div>
                                    <div class="blog__hover__info">
                                        <div class="blog__hover__action">
                                            <p class="blog__des" style="font-size:35px; font-weight:bold;"><a href="${pageContext.request.contextPath}/admin/goods/registerProductForm">상품등록</a></p>
                                            <ul class="bl__meta">
                                                <li>By :<a href="#">Admin</a></li>
                                                <li>Product</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="/admin/goods/registerProductForm">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Blog -->
                        <!-- Start Single Blog -->
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="/admin/goods/productList">
                                            <img src="${pageContext.request.contextPath}/myweb/images/admin/2.jpg" alt="blog images">
                                        </a>
                                    </div>
                                    <div class="blog__hover__info">
                                        <div class="blog__hover__action">
                                            <p class="blog__des" style="font-size:35px; font-weight:bold;"><a href="${pageContext.request.contextPath}/admin/goods/productList">상품목록</a></p>
                                            <ul class="bl__meta">
                                                <li>By :<a href="#">Admin</a></li>
                                                <li>Product</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="/admin/goods/productList">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Blog -->
                        <!-- Start Single Blog -->
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="/views/shop/orderCheckList">
                                            <img src="${pageContext.request.contextPath}/myweb/images/admin/3.jpg" alt="blog images">
                                        </a>
                                    </div>
                                    <div class="blog__hover__info">
                                        <div class="blog__hover__action">
                                            <p class="blog__des" style="font-size:35px; font-weight:bold;"><a href="${pageContext.request.contextPath}/views/shop/orderCheckList">주문관리</a></p>
                                            <ul class="bl__meta">
                                                <li>By :<a href="#">Order</a></li>
                                                <li>Product</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="/views/shop/orderCheckList">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Blog -->
                        <!-- Start Single Blog -->
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="/admin/goods/memberList">
                                            <img src="${pageContext.request.contextPath}/myweb/images/admin/4.jpg" alt="blog images">
                                        </a>
                                      
                                    </div>
                                    <div class="blog__hover__info">
                                        <div class="blog__hover__action">
                                            <p class="blog__des" style="font-size:35px; font-weight:bold;"><a href="${pageContext.request.contextPath}/admin/goods/memberList">회원관리</a></p>
                                            <ul class="bl__meta">
                                                <li>By :<a href="#">Customer</a></li>
                                                <li>Product</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="/admin/goods/memberList">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Blog -->
                        <!-- Start Single Blog -->
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="/myweb/images/others/2.png">
                                            <img src="${pageContext.request.contextPath}/myweb/images/admin/5.jpg" alt="blog images">
                                        </a>
                                       
                                    </div>
                                    <div class="blog__hover__info">
                                        <div class="blog__hover__action">
                                            <p class="blog__des" style="font-size:35px; font-weight:bold;"><a href="/myweb/images/others/2.png">블랙리스트</a></p>
                                            <ul class="bl__meta">
                                                <li>By :<a href="#">Admin</a></li>
                                                <li>Customer</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="/myweb/images/others/2.png">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Blog -->
                        <!-- Start Single Blog -->
                 
                        <!-- End Single Blog -->
                        <!-- Start Single Blog -->
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="/myweb/images/others/2.png">
                                            <img src="${pageContext.request.contextPath}/myweb/images/admin/6.jpg" alt="blog images">
                                        </a>
                                    </div>
                                    <div class="blog__hover__info">
                                        <div class="blog__hover__action">
                                            <p class="blog__des" style="font-size:35px; font-weight:bold;"><a href="/myweb/images/others/2.png">제휴사관리</a></p>
                                            <ul class="bl__meta">
                                                <li>By :<a href="#">Admin</a></li>
                                                <li>Affiliate</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="/myweb/images/others/2.png">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Blog -->
                       
                    </div>
                </div>
                
            </div>
        </div>

 
</sec:authorize>