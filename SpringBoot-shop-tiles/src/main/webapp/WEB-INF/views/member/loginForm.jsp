<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
   <sec:authorize access="isAuthenticated()==false">
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
<!-- Start Login Register Area -->
<div class="htc__login__register bg__white ptb--130"
   style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/myweb/images/bg/5.jpg) no-repeat scroll center center/cover;">
   <div class="container">
      <div class="row">
         <div class="col-md-6 col-md-offset-3">
            
               <ul class="login__register__menu" role="tablist">
                  <li role="presentation" class="login active"><a href="#login"
                     role="tab" data-toggle="tab">Login</a></li>

               </ul>
         </div>
      </div>
      <!-- Start Login Register Content -->
      <div class="row">
         <div class="col-md-6 col-md-offset-3">
            <div class="htc__login__register__wrap">
               <!-- Start Single Content -->
               <div id="login" role="tabpanel"
                  class="single__tabs__panel tab-pane fade in active">

                  <form class="login" method="post"
                     action="${pageContext.request.contextPath}/login">
                     <sec:csrfInput />
                     <input type="text" placeholder="*아이디" name="id" required="required">
                     <br><br>
                     <input type="password" name="password" placeholder="*비밀번호" required="required">
                     <br><br>
                     <button type="submit" class="btn-register" name="register-ok" style="border-radius: 25px; padding: 12px 10px; width: 100%">로그인</button>
                     <br><br>
                     <button type="submit" class="btn-register" name="registerform" style="border-radius: 25px; padding: 12px 10px; width: 100%" onClick="location.href='${pageContext.request.contextPath}/user/registerForm'">회원가입</button>
                     </form>
                     </div>
                  
                  <%-- <div class="htc__login__btn mt--30">
                     <a href="${pageContext.request.contextPath}/user/registerForm">register</a> --%>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</sec:authorize>
<!-- - -->
<sec:authorize access="isAuthenticated()">
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
   <!-- Start Bradcaump area -->
   <div class="ht__bradcaump__area"
      style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/myweb/images/bg/2.jpg) no-repeat scroll center center / cover ;">
      <div class="ht__bradcaump__wrap">
         <div class="container">
            <div class="row">
               <div class="col-xs-12">
                  <div class="bradcaump__inner text-center">
                     <h2 class="bradcaump-title">My Page</h2>
                     <nav class="bradcaump-inner">
                        <span class="breadcrumb-item">logout</span> 
                        <span class="brd-separetor">/</span> 
                        <span class="breadcrumb-item active">update</span>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- End Bradcaump area -->
   <div class="single-portfolio-area bg__white ptb--100">
      <div class="container">
         <div class="row">
            <div class="col-md-7">
               <div class="single-portfolio-img">
                  <img
                     src="${pageContext.request.contextPath}/myweb/images/mypage/1.png"
                     alt="마이페이지 사진">
               </div>
            </div>
            <br><br><br><br>
            <div class="col-md-5">
               <div class="portfolio-description mrg-sm">
                  <h2>
                     <sec:authentication property="principal.name" />
                     님 <br><br>환영합니다<br>
                 <h2><a href="${pageContext.request.contextPath}/home">Go-Home</a></h2>
                            <div class="portfolio-info">
                                <ul>
                                    <li><span><script type="text/javascript">
                        $(document).ready(function() {
                           $("#logoutAction").click(function() {
                              $("#logoutForm").submit();
                           });
                        });
                     </script>
                     
                     <a href="#" id="logoutAction">로그아웃</a></span>LogOut</li>
                     <form id="logoutForm"
                        action="${pageContext.request.contextPath}/logout" method="post"
                        style="display: none">
                        <sec:csrfInput />
                     </form>
                                    <li><span><a href="${pageContext.request.contextPath}/updateForm">회원정보수정</a></span>Update</li>
                                     <li><span><a href="${pageContext.request.contextPath}/views/shop/orderList">orderList</a></span>orderList</li>
                                      <li><span><a href="${pageContext.request.contextPath}/views/shop/orderCheckList">testorderList</a></span>testorderList</li>
                                    <%-- 아래는 회원관리자이자 일 때 보이는 메뉴 --%>
                                    <li><span><sec:authorize
                     access="hasRole('ROLE_ADMIN') and hasRole('ROLE_MEMBER')">
                     <a href="${pageContext.request.contextPath}/admin/main">관리자모드</a>
                 </span>admin</li> </sec:authorize>
                
                                </ul>
                            </div>
                  <div class="portfolio-social">
                     <ul>
                        <li>Share:</li>
                        <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                        <li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
                        <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                        <li><a href="#"><i class="zmdi zmdi-google"></i></a></li>
                        <li><a href="#"><i class="zmdi zmdi-dribbble"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
<%--    <div class="portfolio-related-post pb--100 bg__white">
      <div class="container">
         <div class="section__title text-center mb--50">
            <h2 class="title__line">Related Projects</h2>
         </div>
         <div class="tab-content portfolio-carousel-style jump">
            <div class="related-portfolio">
               <div class="row">
                  <div class="portfolio-slider-active owl-carousel">
                     <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="single-portfolio mb--30">
                           <div class="portfolio-img-title">
                              <a href="single-portfolio.html"> <img
                                 src="${pageContext.request.contextPath}/myweb/images/portfolio/equal/1.jpg"
                                 alt="" />
                              </a>
                              <div class="portfolio-title hover-title">
                                 <h3>
                                    <a href="single-portfolio.html">TITLE GOES HERE</a>
                                 </h3>
                                 <span>Design</span>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="single-portfolio mb--30">
                           <div class="portfolio-img-title">
                              <a href="single-portfolio.html"> <img
                                 src="${pageContext.request.contextPath}/myweb/images/portfolio/equal/2.jpg"
                                 alt="" />
                              </a>
                              <div class="portfolio-title hover-title">
                                 <h3>
                                    <a href="single-portfolio.html">TITLE GOES HERE</a>
                                 </h3>
                                 <span>Design</span>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="single-portfolio mb--30">
                           <div class="portfolio-img-title">
                              <a href="single-portfolio.html"> <img
                                 src="${pageContext.request.contextPath}/myweb/images/portfolio/equal/3.jpg"
                                 alt="" />
                              </a>
                              <div class="portfolio-title hover-title">
                                 <h3>
                                    <a href="single-portfolio.html">TITLE GOES HERE</a>
                                 </h3>
                                 <span>Design</span>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="single-portfolio mb--30">
                           <div class="portfolio-img-title">
                              <a href="single-portfolio.html"> <img
                                 src="${pageContext.request.contextPath}/myweb/images/portfolio/equal/4.jpg"
                                 alt="" />
                              </a>
                              <div class="portfolio-title hover-title">
                                 <h3>
                                    <a href="single-portfolio.html">TITLE GOES HERE</a>
                                 </h3>
                                 <span>Design</span>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="single-portfolio mb--30">
                           <div class="portfolio-img-title">
                              <a href="single-portfolio.html"> <img
                                 src="${pageContext.request.contextPath}/myweb/images/portfolio/equal/5.jpg"
                                 alt="" />
                              </a>
                              <div class="portfolio-title hover-title">
                                 <h3>
                                    <a href="single-portfolio.html">TITLE GOES HERE</a>
                                 </h3>
                                 <span>Design</span> --%>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</sec:authorize>



