<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<meta name="_csrf" th:content="${_csrf.token}">
<meta name="_csrf_header" th:content="${_csrf.headerName}">
     <script>
			function replyList() {
                let gdsNum = ${goods.gdsNum};
                 $.getJSON("${pageContext.request.contextPath}/views/shop/replyList" + "?n=" + gdsNum, function(data){
                  let str = "";
                  
                  $(data).each(function(){
                   
                   console.log(data);
                   
                  let repDate = new Date(this.repDate);
                   repDate = repDate.toLocaleDateString("ko-US") //시간뿌려주
                   
                   str += "<li data-gdsNum='" + this.gdsNum + "'>"
                     + "<div class='userInfo'>"
                     + "<span class='name'>" + this.name + "</span>"
                     + "<span class='date'>" + repDate + "</span>"
                     + "</div>"
                     + "<div class='replyContent'>" + this.repCon + "</div>"
                     
                     + "<div class='replyFooter'>"
                     + "<button type='button' class='modify' data-repNum='" + this.repNum + "'>M</button>"
                     + "<button type='button' class='delete' data-repNum='" + this.repNum + "'>D</button>"
                     + "</div>"
                     
                     + "</li>";           
                  });
                  
                  $("section.replyList ol").html(str);
                 });
			}
                </script>
    <style>
     section.replyForm { padding:30px 0; }
 section.replyForm div.input_area { margin:10px 0; }
 section.replyForm textarea { background-color: transparent; border: 1px solid #4b4b4b; font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500%; height:150px; }
 section.replyForm button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
 
 section.replyList { padding:30px 0; }
 section.replyList ol { padding:0; margin:0; }
 section.replyList ol li { padding:10px 0; border-bottom:2px solid #eee; }
 section.replyList div.userInfo { }
 section.replyList div.userInfo .userName { font-size:24px; font-weight:bold; }
 section.replyList div.userInfo .date { color:#999; display:inline-block; margin-left:10px; }
 section.replyList div.replyContent { padding:10px; margin:20px 0; }
/* 이 부분 보기 section.replyList div.replyFooter button { font-size:14px; border: 1px solid #999; background:none; margin-right:10px; } */
 
    </style>
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
                  src="${pageContext.request.contextPath}/myweb/images/logo/logo.png"
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
                  <h2 class="bradcaump-title">Product Details</h2>
                  <nav class="bradcaump-inner">
                     <a class="breadcrumb-item" href="index.html">Home</a> <span
                        class="brd-separetor">/</span> <span
                        class="breadcrumb-item active">Product Details</span>
                  </nav>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- End Bradcaump area -->
<!-- Start Product Details -->
<section class="htc__product__details pt--120 pb--100 bg__white">
   <div class="container">
      <div class="row">
         <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
            <div class="product__details__container">
             
               <div class="product__big__images">
                  <div class="portfolio-full-image tab-content">
                     <div role="tabpanel"
                        class="tab-pane fade in active product-video-position"
                        id="img-tab-1">
                        <img src="${goods.gdsImg}" alt="full-image">
                     </div>
                     <div role="tabpanel" class="tab-pane fade product-video-position"
                        id="img-tab-2">
                        <img src="${goods.gdsThumbImg}" alt="full-image">
                        <div class="product-video">
                           <a class="video-popup"
                              href="https://www.youtube.com/watch?v=cDDWvj_q-o8"> <i
                              class="zmdi zmdi-videocam"></i> View Video
                           </a>
                        </div>
                     </div>
                     <div role="tabpanel" class="tab-pane fade product-video-position"
                        id="img-tab-3">
                        <img
                           src="${pageContext.request.contextPath}/myweb/images/product-details/big-img/11.jpg"
                           alt="full-image">
                        <div class="product-video">
                           <a class="video-popup"
                              href="https://www.youtube.com/watch?v=cDDWvj_q-o8"> <i
                              class="zmdi zmdi-videocam"></i> View Video
                           </a>
                        </div>
                     </div>
                     <div role="tabpanel" class="tab-pane fade product-video-position"
                        id="img-tab-4">
                        <img src="${goods.gdsThumbImg}" alt="full-image">
                        <div class="product-video">
                           <a class="video-popup"
                              href="https://www.youtube.com/watch?v=cDDWvj_q-o8"> <i
                              class="zmdi zmdi-videocam"></i> View Video
                           </a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12 smt-30 xmt-30">
            <form role="form" method="post" action="${pageContext.request.contextPath}/views/shop/view/addCart">
               <input type="hidden" name="gdsNum" id="gdsNum" value="${goods.gdsNum}" />
            </form>
            <div class="htc__product__details__inner">
               <div class="pro__detl__title">
                  <h2>${goods.gdsName}</h2>
               </div>
               <div class="pro__dtl__rating">
                  <ul class="pro__rating">
                     <li><span class="ti-star"></span></li>
                     <li><span class="ti-star"></span></li>
                     <li><span class="ti-star"></span></li>
                     <li><span class="ti-star"></span></li>
                     <li><span class="ti-star"></span></li>
                  </ul>
                  <span class="rat__qun">(Based on 0 Ratings)</span>
               </div>
               <div class="pro__details">
                  <p>상품설명</p>
               </div>
               <ul class="pro__dtl__prize">
                  <li class="old__prize">$15.21</li>
                  <li>$10.00</li>
               </ul>
               
               <div class="product-action-wrap">
                  <div class="prodict-statas">
                     <span>Quantity :</span>
                  </div>
                  <div class="product-quantity">
                     <form id='myform'>
                        <div class="product-quantity">
                           <div class="cart-plus-minus">
                           <!-- 상품재고 -->
                              <input class="cart-plus-minus-box" type="number" min="1" 
                                 name="qtybutton" max="${goods.gdsStock}" value=1>
                           </div>
                           <input type="hidden" value="${goods.gdsStock}" class="gdsStock_hidden"/>
                        </div>
                     </form>
                  </div>
               </div>
               <ul class="pro__dtl__btn">
                  <li class="buy__now__btn"><a href="/views/shop/orderpage">buy now</a></li>
                  <li><a href="#"><span class="ti-heart"></span></a></li>
                  </ul>
                  <script>
            
                 
                  $(".ti-heart").click(function(e) {
                     e.preventDefault();
                    
                      let gdsNum= $("#gdsNum").val();
                    
                      let cartStock=$(".gdsStock_hidden").val();
                     
                     
                      let data={
                            gdsNum : gdsNum,
                            cartStock : cartStock
                      };
                      

                      $.ajax({
                        url :"/views/shop/addCart",
                        type:"post",
                        data: data,
                        beforeSend : function(xhr){   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                        },
                        success: function(result){
                            /* alert(result); */
                           if(result ==1){
                           alert("카트에 상품이 담겼습니다");
                           $(".cart-plus-minus-box").val("1");
                        } else{
                           alert("회원이용가능");
                           $(".cart-plus-minus-box").val("1");
                        }
                      },
                        error : function(){                       
                           alert("카트 담기 실패");
                        }
                      });
   
                  });

                  </script>
                  <!-- 공유 start -->
                  <!-- <li><a href="#"><span class="ti-email"></span></a></li>
               </ul>
               <div class="pro__social__share">
                  <h2>Share :</h2>
                  <ul class="pro__soaial__link">
                     <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                     <li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
                     <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                     <li><a href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
                  </ul> -->
                  <!-- 공유 end -->
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!-- End Product Details -->
<!-- Start Product tab -->
<section class="htc__product__details__tab bg__white pb--120">
 
   <div class="container">
    
      <div class="row">
         <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
            <ul class="product__deatils__tab mb--60" role="tablist">
               <!-- <li role="presentation" class="active"><a href="#description"
                  role="tab" data-toggle="tab">Description</a></li>
               <li role="presentation"><a href="#sheet" role="tab"
                  data-toggle="tab">Data sheet</a></li> -->
               <li role="presentation"><a href="#reviews" role="tab"
                  data-toggle="tab">Reviews</a></li>
            </ul>
         </div>
      </div>
      <div class="row"><!-- 상세설명 -->
         <div class="col-md-12">
            <div class="product__details__tab__content">
               
               <div role="tabpanel" id="reviews"
                  class="product__tab__content fade">
                  <div class="review__address__inner">
                     <!-- Start Single Review -->
                    
                   <div class="pro__review">
                        <div class="review__thumb">
                           <img
                              src="${pageContext.request.contextPath}/myweb/images/review/2.png"
                              alt="review images">
                        </div>
                     		<div id="reply">
							 <section class="replyForm">
							  <form role="form">
							  
							  <input type="hidden" name="gdsNum"  id="gdsNum" value="${goods.gdsNum}" >
							 
							   <div class="input_area">
							    <textarea name="repCon" id="repCon"></textarea>
							   </div>
							   
							   <div class="input_area">
							    <button type="button" id="reply_btn">reply :)</button>
							    <script>
									 $("#reply_btn").click(function(){
									  
									 let formObj = $(".replyForm form[role='form']");
									  let gdsNum = $("#gdsNum").val();
									  let repCon = $("#repCon").val()
									  
									  let data = {
									    gdsNum : gdsNum,
									    repCon : repCon
									    };
									  
									  $.ajax({
									   url : "/views/shop/registReply",
									   type : "get",
									   data : data,
						
									   success : function(){
									    replyList();//리스트 새로고침
									    $("#repCon").val("");
									   }
									  });
									 });
</script>
							   </div>
							   
							  </form>
							 </section>
					
							 <section class="replyList">
							  <ol>
							   <li></li>
							   </ol>   
							   <script>
 									replyList();
									</script>
									
									<script>
									// 스크립트로 인해 생성된 HTML의 이벤트는 .click() 메서드를 사용할 수 없음
									$(document).on("click", ".delete", function(){
										
										// 사용자에게 삭제 여부를 확인
										var deletConfirm = confirm("정말로 삭제하시겠습니까?"); 
										
										if(deletConfirm) {
										
											var data = {repNum : $(this).attr("data-repNum")};  // ReplyVO 형태로 데이터 생성
											
											$.ajax({
												url : "/views/shop/deleteReply",
												type : "get",
												data : data,
												 beforeSend : function(xhr){   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
							                            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
							                        },
												success : function(result){
													
													// result의 값에 따라 동작
													if(result == 1) {
														replyList();  // 리스트 새로고침
													} else {
														alert("작성자 본인만 할 수 있습니다.")  // 본인이 아닌 경우										
													}
												},
												error : function(){
													// 로그인하지 않아서 에러가 발생한 경우
													alert("로그인하셔야합니다.")
												}
											});
										}
									});
								
						</script>
									<div class="rating__send">
                                                    <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                </div>
									
									 
							 </section>
							</div>
                  
                        </div>
                        
                     </div> 
                     
                     <!-- End Single Review -->
                     <!-- Start Single Review -->
               
                     <!-- End Single Review -->
                  </div>
                  <!-- Start RAting Area -->
       
                  <!-- End RAting Area -->
                
               
               <!-- End Single Content -->
            </div>
         </div>
      </div>
    
   </div>
 ----------------
 <section class="htc__product__details__tab bg__white pb--120">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                        <ul class="product__deatils__tab mb--60" role="tablist">
                            <li role="presentation" class="">
                                <a href="#description" role="tab" data-toggle="tab" aria-expanded="false">Description</a>
                            </li>
                            <li role="presentation">
                                <a href="#sheet" role="tab" data-toggle="tab">Data sheet</a>
                            </li>
                            <li role="presentation" class="active">
                                <a href="#reviews" role="tab" data-toggle="tab" aria-expanded="true">Reviews</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="product__details__tab__content">
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="description" class="product__tab__content fade">
                                <div class="product__description__wrap">
                                    <div class="product__desc">
                                        <h2 class="title__6">Details</h2>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis noexercit ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id.</p>
                                    </div>
                                    <div class="pro__feature">
                                        <h2 class="title__6">Features</h2>
                                        <ul class="feature__list">
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Duis aute irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Sed do eiusmod tempor incididunt ut labore et </a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Nisi ut aliquip ex ea commodo consequat.</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="sheet" class="product__tab__content fade">
                                <div class="pro__feature">
                                        <h2 class="title__6">Data sheet</h2>
                                        <ul class="feature__list">
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Duis aute irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Sed do eiusmod tempor incididunt ut labore et </a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Sed do eiusmod tempor incididunt ut labore et </a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Nisi ut aliquip ex ea commodo consequat.</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Nisi ut aliquip ex ea commodo consequat.</a></li>
                                        </ul>
                                    </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="reviews" class="product__tab__content fade active in">
                                <div class="review__address__inner">
                                    <!-- Start Single Review -->
                                    <div class="pro__review">
                                        <div class="review__thumb">
                                            <img src="images/review/1.jpg" alt="review images">
                                        </div>
                                        <div class="review__details">
                                            <div class="review__info">
                                                <h4><a href="#">Gerald Barnes</a></h4>
                                                <ul class="rating">
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                </ul>
                                                <div class="rating__send">
                                                    <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="review__date">
                                                <span>27 Jun, 2016 at 2:30pm</span>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                        </div>
                                    </div>
                                    <!-- End Single Review -->
                                    <!-- Start Single Review -->
                                    <div class="pro__review ans">
                                        <div class="review__thumb">
                                            <img src="images/review/2.jpg" alt="review images">
                                        </div>
                                        <div class="review__details">
                                            <div class="review__info">
                                                <h4><a href="#">Gerald Barnes</a></h4>
                                                <ul class="rating">
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                </ul>
                                                <div class="rating__send">
                                                    <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="review__date">
                                                <span>27 Jun, 2016 at 2:30pm</span>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                        </div>
                                    </div>
                                    <!-- End Single Review -->
                                </div>
                                <!-- Start RAting Area -->
                                <div class="rating__wrap">
                                    <h2 class="rating-title">Write  A review</h2>
                                    <h4 class="rating-title-2">Your Rating</h4>
                                    <div class="rating__list">
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                    </div>
                                </div>
                                <!-- End RAting Area -->
                                <div class="review__box">
                                    <form id="review-form">
                                        <div class="single-review-form">
                                            <div class="review-box name">
                                                <input type="text" placeholder="Type your name">
                                                <input type="email" placeholder="Type your email">
                                            </div>
                                        </div>
                                        <div class="single-review-form">
                                            <div class="review-box message">
                                                <textarea placeholder="Write your review"></textarea>
                                            </div>
                                        </div>
                                        <div class="review-btn">
                                            <a class="fv-btn" href="#">submit review</a>
                                        </div>
                                    </form>                                
                                </div>
                            </div>
                            <!-- End Single Content -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
 ----------------------
   
</section>
 