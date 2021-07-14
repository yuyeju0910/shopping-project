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
        <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
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
<sec:authorize access="hasRole('ROLE_ADMIN')">
   <sec:authentication var="mvo" property="principal" />
   
<body class="sb-nav-fixed">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container">
                        <h2 class="section-title-3">MemberList</h2>
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
                                            <th>아이디</th>
                                            <th>비밀번호</th>
                                            <th>닉네임</th>
                                            <th>전화번호</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <c:forEach items="${mlist}" var="list">
                     <tr>
                      
                        <td>${list.id}</td>
                        <td>${list.password}</td>
                        <td>${list.name}</td>
                        <td>${list.phone}</td>
                       
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
        <script src="${pageContext.request.contextPath}/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js/datatables-simple-demo.js"></script>
    </body>
  
   
</sec:authorize>