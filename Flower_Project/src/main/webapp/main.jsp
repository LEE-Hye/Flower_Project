<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.smhrd.domain.MemberVO" %>
<%@ page import = "com.smhrd.domain.MemberDAO" %>
<%@ page import = "java.util.List" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8" />
    <title>Flower_Project</title>
    <link rel="stylesheet" href="css/korea.css" />

    <!-- Basic -->
    <title>Construction | Home</title>

    <!-- Define Charset -->
    <meta charset="utf-8">

    <!-- Responsive Metatag -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Page Description and Author -->
    <meta name="description" content="Construction - Responsive HTML5 Template">
    <meta name="author" content="iThemesLab">

    <!-- Bootstrap CSS  -->
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.css" type="text/css">
    <link rel="stylesheet" href="css/owl.transitions.css" type="text/css">
    
    <!-- Light Box CSS -->
    <link rel="stylesheet" href="css/lightbox.css" type="text/css">
    

    <!-- Construction CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <!-- Default Color --> 
    <link rel="stylesheet" type="text/css" href="css/colors/light-red.css">
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="css/colors/light-red.css" title="light-red">
    <link rel="stylesheet" type="text/css" href="css/colors/green.css" title="green">
    <link rel="stylesheet" type="text/css" href="css/colors/blue.css" title="blue">
    <link rel="stylesheet" type="text/css" href="css/colors/light-blue.css" title="light-blue">
    <link rel="stylesheet" type="text/css" href="css/colors/yellow.css" title="yellow">
    <link rel="stylesheet" type="text/css" href="css/colors/black.css" title="black">
    
    <!-- Responsive CSS Style -->
    <link rel="stylesheet" type="text/css" href="css/responsive.css">

    <!-- Css3 Transitions Styles  -->
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    
    
    
    <!-- Construction JS File -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/lightbox.min.js"></script>
    <script src="js/jquery.appear.js"></script>
    <script src="js/jquery.fitvids.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/superfish.min.js"></script>
    <script src="js/supersubs.js"></script>
    <script src="js/styleswitcher.js"></script>
    <script src="js/script.js"></script>
    
</head>
 <script type="text/javascript" src="js/d3.js"></script>
    <script type="text/javascript" src="js/korea.js"></script>
<body>
<!-- Start Loader -->   
<div id="loader">
    <div class="spinner">
        <div class="dot1"></div>
        <div class="dot2"></div>
    </div>
</div>
<!-- End Loader -->
    
    <div class="container">
    
    
    <!-- Start Header Section -->
    <div class="header-section">
        <div class="row">
            <div class="col-md-5 col-sm-5">
                <div class="logo-img">
                    <a href="main.jsp"><img id="main_pic" src="images/client/5055151.jpg" class="img-responsive" alt=""></a>
                </div>
            </div>
            <div class="col-md-7 col-sm-7">
                <div class="top-info">
                    <ul class="top-social">
                    <c:choose>
                       <c:when test="${empty loginMember }">
                           <a href = "login.jsp"><li>로그인</li></a>
                           <a href = "join.jsp"><li>회원가입</li></a>
                        </c:when>
                        <c:otherwise>
                           <c:if test="${!empty loginMember }">
                              <h5>${loginMember.id}님 환영합니다</h5>
                              <a href="LogoutCon">로그아웃</a>   
                           </c:if>
                        </c:otherwise>
                    </c:choose>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Section -->
    
    <!-- Start Navigation Section -->
    <div class="navigation">
        
        <div class="navbar navbar-default navbar-top">
            <div class="navbar-header">
                <!-- Stat Toggle Nav Link For Mobiles -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                        
            </div>
            <div class="navbar-collapse collapse">
    
                <!-- 네비게이션 시작 -->
                <ul class="nav navbar-nav">
                    <li>
                        <a class="active" href="main.jsp">Home</a>
                    </li>
                    <li>
                        <a href="flower.jsp">꽃도감</a>
                    </li>
                    <li>
                        <a href="select.jsp">축제/나들이 조회</a>
                    </li>
                    
                    <li>
                        <a href="flower_rec.jsp">꽃레시피</a>
                    </li>
                    <li>
                        <a href="post_view.jsp">커뮤니티</a>
                    </li>
                <!-- 네비게이션 끝 -->
            </div>
        </div>
        
    </div>
    <!-- End Navigation Section -->
    
    
    <!-- Start Main Slider Section -->
    <div class="row">
        <div class="col-md-12">
            <div class="main-slider hidden-sm hidden-xs" id="main-slider">
                
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="images/slider/공룡이.jpg" class="img-responsive" alt="Slider images 1">
                            <div class="carousel-caption">
                                <h1>공룡축제</h1>
                                <p>귀여운 티라노 사우르스가 있는 공룡 축제<br>기간 : 2023년 05월 20일 ~ 2026년 49월 03일</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/slider/오두막이.jpg" class="img-responsive" alt="Slider images 2">
                            <div class="carousel-caption">
                                <h1>오두막 축제</h1>
                                <p>깜찍한 오두막이 있는 캠핑 축제<br>기간 : 2025년 93월 49일 ~ 2068년 58월 93일</p>
                            </div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                
            </div>
        </div>
    </div>
    <!-- End Main Slider Section -->
    
    
        
    <!-- Start Service Section -->

    <div class="wrap">
        <div class="galleries">
            <section class="gallery_main">
                <article class="arts half">
                    <h3>현재 개화시기</h3>
                    <p id = "container"></p>
                </article>
                <article class="arts half">
                    <h3>현재 축제시기</h3>
                    <p id = "container2"></p>
                </article>
            </section>
        </div>
    </div>
   
    <!-- End Services Section -->

    <div class="row">
        <a href="flower_rec.jsp"><div class="col-md-5">
            <div class="home-about-us">
                <h3 class="section-title">🌹꽃 요리 레시피🌹 </h3>
                <img src="images/f_rec.jpg" class="img-responsive" alt="">
                <p>꽃으로 만드는 맛있는 음식🌼</p>
            </div>
        </a>
        </div>
        <div class="col-md-7">
            <div class="running-project">
                <h3 class="section-title">호감도 베스트 4개</h3>
                <div class="row">
                    
                    <div class="col-md-6 col-sm-6">
                        <div class="project">
                            <img src="images/running-project/running1.jpg" class="img-responsive" alt="">

                        </div>
                    </div>
                    
                    <div class="col-md-6 col-sm-6">
                        <div class="project">
                            <img src="images/running-project/running2.jpg" class="img-responsive" alt="">
                        </div>
                    </div>
                
                    <div class="col-md-6 col-sm-6">
                        <div class="project">
                            <img src="images/running-project/running3.jpg" class="img-responsive" alt="">

                        </div>
                    </div>
                    
                    <div class="col-md-6 col-sm-6">
                        <div class="project">
                            <img src="images/running-project/running4.jpg" class="img-responsive" alt="">
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>

    <!-- Start Call To Action Section -->
    <div class="row">
        <div class="col-md-12">
            <div class="call-to-action">
                <div class="overlay">
                    <h1>당신의 꽃구경을 자랑하세요!</h1>
                    <p>게시판에 여러분의 자랑글을 작성하세요!</p>
                    <a class="custom-btn" href="post_view.jsp" role="button">게시판으로 이동</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Call To Action Section -->
    <br>
    <!-- Start Footer Section -->
    <div class="row">
        <div class="col-md-12">
            <div class="footer-section">
                
                <div class="row">
                    
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-address">
                            <h2>스마트인재개발원</h2>
                            <address>
                                <strong>(주)Flower_Project</strong><br>
                                광주 동구 예술길 31-15 3~5, 7층<br>
                                1차프로젝트결과물<br>
                            </address>
                    
                            <address>
                                <strong>Phone :</strong> (123) 456-7890<br>
                                <strong>Mobile :</strong> (123) 456-7890<br>
                                <strong>E-mail :</strong> youremail@email.com
                            </address>
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-gallery">
                            <h3>Photo Gallery</h3>
                            <ul>
                                <li><a href="images/building/project-1.jpg" data-lightbox="project-1"><img src="images/building/project-1.jpg" class="img-responsive" alt=""></a></li>
                                <li><a href="images/building/project-2.jpg" data-lightbox="project-2"><img src="images/building/project-2.jpg" class="img-responsive" alt=""></a></li>
                                <li><a href="images/building/project-3.jpg" data-lightbox="project-3"><img src="images/building/project-3.jpg" class="img-responsive" alt=""></a></li>
                                <li><a href="images/building/project-4.jpg" data-lightbox="project-4"><img src="images/building/project-4.jpg" class="img-responsive" alt=""></a></li>
                                <li><a href="images/building/project-5.jpg" data-lightbox="project-5"><img src="images/building/project-5.jpg" class="img-responsive" alt=""></a></li>
                                <li><a href="images/building/project-6.jpg" data-lightbox="project-6"><img src="images/building/project-6.jpg" class="img-responsive" alt=""></a></li>
                                <li><a href="images/building/project-7.jpg" data-lightbox="project-7"><img src="images/building/project-7.jpg" class="img-responsive" alt=""></a></li>
                                <li><a href="images/building/project-8.jpg" data-lightbox="project-8"><img src="images/building/project-8.jpg" class="img-responsive" alt=""></a></li>
                                <li><a href="images/building/project-9.jpg" data-lightbox="project-9"><img src="images/building/project-9.jpg" class="img-responsive" alt=""></a></li>
                            </ul>
                        
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-link">
                            <h3>Our Team Introduce</h3>
                            <ul>
                                <li><a href="#"><i class="fa fa-chevron-circle-right"></i>팀장 : 방제엽</a></li>
                                <li><a href="#"><i class="fa fa-chevron-circle-right"></i>팀원 : 이혜빈</a></li>
                                <li><a href="#"><i class="fa fa-chevron-circle-right"></i>팀원 : 박동명</a></li>
                                <li><a href="#"><i class="fa fa-chevron-circle-right"></i>팀원 : 조용호</a></li>
                                <li><a href="#"><i class="fa fa-chevron-circle-right"></i>팀원 : 서지현</a></li>
                                <li><a href="#"><i class="fa fa-chevron-circle-right"></i>팀원 : 김순기</a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-social">
                            <h3>꽃 보러 갈래?</h3>
                            <br><br><br><br><br><br><br>
                            <h3>Flower_Project</h3>
                           
                        </div>
                    </div>
                    
                </div>
                
            </div>
        </div>        
    </div>
    <!-- End Footer Section -->
    
    <!-- Start Copyright Section -->
    <div class="row">
        <div class="col-md-12">
            <div class="copyright-section">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="copy">&copy; Copyright 2022 || Flower_Project </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="design">Design & Developed by <a href="http://graygrids.com">GrayGrids</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Copyright Section -->

    
    
    </div><!-- /.container -->

    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>
</body>

</html>