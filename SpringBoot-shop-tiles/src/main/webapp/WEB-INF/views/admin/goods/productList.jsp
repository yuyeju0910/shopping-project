<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
   <title><tiles:insertAttribute name="title" ignore="true" /></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
        
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/myboard/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/myweb/css/bootstrap.min.css">
    <!-- Owl Carousel main css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/myweb/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/myweb/css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/myweb/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/myweb/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/myweb/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/myweb/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/myweb/css/custom.css">

</head>
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
<sec:authorize access="hasRole('ROLE_ADMIN')">
   <sec:authentication var="mvo" property="principal" />
   
<body class="sb-nav-fixed">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container">
                        <h2 class="section-title-3">Admin Table</h2>
                      <br>
                        <div class="card mb-4">
                            <div class="card-body">
                                Mignon Place
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                DataTable for Admin
                            </div>
                            <div class="card-body">
                             <sec:csrfInput/>
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>상품정보</th>
                                            <th>상품명</th>
                                            <th>상품코드</th>
                                            <th>상품가격</th>
                                            <th>상품재고</th>
                                            <th>업데이트시간</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <c:forEach items="${productList}" var="list">
                     <tr>
                        <td><a href="${pageContext.request.contextPath}/admin/goods/view?n=${list.gdsNum}">${list.gdsName}></a></td>
                        <td>${list.gdsName}</td>
                        <td>${list.middlecateCode}</td>
                        <td>${list.gdsPrice}</td>
                        <td>${list.gdsStock}</td>
                        <td>${list.gdsDate}</td>
                     </tr>
                  </c:forEach>              
                                      
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>

            </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/myboard/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/myboard/js/datatables-simple-demo.js"></script>
    </body>
  
   
</sec:authorize>