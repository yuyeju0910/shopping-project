
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
                  <form action="/views/shop/searchGoods" >
                     <input placeholder="Search here... " type="text" name="gdsName">
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
                  <a href="#"> <img src="images/product/sm-img/1.jpg"
                     alt="product images">
                  </a>
               </div>
               <div class="shp__pro__details">
                  <h2>
                     <a href="product-details">BO&Play Wireless Speaker</a>
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
                     <a href="product-details">Brone Candle</a>
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
            <li><a href="cart">View Cart</a></li>
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

            <div class="bradcaump__inner text-center">
               <h2 class="bradcaump-title">Shop Page</h2>
               <nav class="bradcaump-inner">
                  <a class="breadcrumb-item" href="index.html">Home</a> <span
                     class="brd-separetor">/</span> <span
                     class="breadcrumb-item active">Shop Page</span>
               </nav>
            </div>

         </div>
      </div>
   </div>
</div>
<!-- End Bradcaump area -->
<!-- Start Our Product Area -->
<section class="htc__product__area shop__page ptb--130 bg__white">
   <div class="container">
      <div class="htc__product__container">
         <!-- Start Product MEnu -->
         <div class="row">
            <div class="col-md-12">
               <div class="filter__menu__container">
                   <div class="product__menu">
                     <button data-filter="*" class="is-checked">All</button>
                     <button data-filter=".cat--1">Best</button>
                     <button data-filter=".cat--2">Ring/Earrings</button>
                     <button data-filter=".cat--3">Necklaces</button>
                     <button data-filter=".cat--4">ETC</button>
                  </div>
                <!--   <div class="filter__box">
                     <a class="filter__menu" href="#">filter</a> -->
                  </div>
               </div>
            </div>
         </div>
         <!-- Start Filter Menu -->
         <div class="filter__wrap">
            <div class="filter__cart">
               <div class="filter__cart__inner">
                  <div class="filter__menu__close__btn">
                     <a href="#"><i class="zmdi zmdi-close"></i></a>
                  </div>
                  <div class="filter__content">
                     <!-- Start Single Content -->
                     <div class="fiter__content__inner">
                        <div class="single__filter">
                           <h2>Sort By</h2>
                           <ul class="filter__list">
                              <li><a href="#default">Default</a></li>
                              <li><a href="#accessories">Accessories</a></li>
                              <li><a href="#bags">Bags</a></li>
                              <li><a href="#chair">Chair</a></li>
                              <li><a href="#decoration">Decoration</a></li>
                              <li><a href="#fashion">Fashion</a></li>
                           </ul>
                        </div>
                        <div class="single__filter">
                           <h2>Size</h2>
                           <ul class="filter__list">
                              <li><a href="#xxl">XXL</a></li>
                              <li><a href="#xl">XL</a></li>
                              <li><a href="#x">X</a></li>
                              <li><a href="#l">L</a></li>
                              <li><a href="#m">M</a></li>
                              <li><a href="#s">S</a></li>
                           </ul>
                        </div>
                        <div class="single__filter">
                           <h2>Tags</h2>
                           <ul class="filter__list">
                              <li><a href="#">All</a></li>
                              <li><a href="#">Accessories</a></li>
                              <li><a href="#">Bags</a></li>
                              <li><a href="#">Chair</a></li>
                              <li><a href="#">Decoration</a></li>
                              <li><a href="#">Fashion</a></li>
                           </ul>
                        </div>
                        <div class="single__filter">
                           <h2>Price</h2>
                           <ul class="filter__list">
                              <li><a href="#">$0.00 - $50.00</a></li>
                              <li><a href="#">$50.00 - $100.00</a></li>
                              <li><a href="#">$100.00 - $150.00</a></li>
                              <li><a href="#">$150.00 - $200.00</a></li>
                              <li><a href="#">$300.00 - $500.00</a></li>
                              <li><a href="#">$500.00 - $700.00</a></li>
                           </ul>
                        </div>
                        <div class="single__filter">
                           <h2>Color</h2>
                           <ul class="filter__list sidebar__list">
                              <li class="black"><a href="#"><i
                                    class="zmdi zmdi-circle"></i>Black</a></li>
                              <li class="blue"><a href="#"><i
                                    class="zmdi zmdi-circle"></i>Blue</a></li>
                              <li class="brown"><a href="#"><i
                                    class="zmdi zmdi-circle"></i>Brown</a></li>
                              <li class="red"><a href="#"><i
                                    class="zmdi zmdi-circle"></i>Red</a></li>
                              <li class="orange"><a href="#"><i
                                    class="zmdi zmdi-circle"></i>Orange</a></li>
                           </ul>
                        </div>
                     </div>
                     <!-- End Single Content -->
                  </div>
               </div>
            </div>
         </div>
         <!-- End Filter Menu -->
         <!-- End Product MEnu -->
         <div class="row">
          <c:forEach items="${list}" var="list">
  
    
     <div class="col-md-3 single__pro col-lg-3 hidden-sm col-xs-12 cat--3">
             
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                        	<a href="/views/shop/view?n=${list.gdsNum}">
                                                <img src="${list.gdsThumbImg}" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    
                                    <div class="product__hover__info">
                                            <div class="product__action">
                                                <a href="/views/shop/view?n=${list.gdsNum}">view details
                                            </a>
                                            </div>
                                        </div>
                                    
                                    <div class="product__details">
                                        <h2><a href="/views/shop/view?n=${list.gdsNum}">${list.gdsName}</a></h2>
                                        <ul class="product__price">
                                        	<li class="old__price" style="visibility:hidden">$16.00</li>
                                            <li class="new__price" style="visibility:hidden">$10.00</li>
                                            <li class="new__price">$${list.gdsPrice}</li>
                                        </ul>
                                    </div>
                                </div>
                              
                            </div>

             
                  </c:forEach>
                  </div>
                  
                  
                  
                  
                  
</section>
<!-- End Our Product Area -->
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
                        <img alt="big images"
                           src="${pageContext.request.contextPath}/myweb/images/product/big-img/1.jpg">
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