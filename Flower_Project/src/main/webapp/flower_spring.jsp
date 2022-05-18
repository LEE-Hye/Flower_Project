<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8" />
    <title>koreaMap</title>
    <link rel="stylesheet" href="css/korea.css" />

    <!-- Basic -->
    <title>Construction | 꽃</title>

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
                    <a href="#"><img id="main_pic" src="images/client/5055151.jpg" class="img-responsive" alt=""></a>
                </div>
            </div>
            <div class="col-md-7 col-sm-7">
                <div class="top-info">
                    <ul class="top-social">
                        <a href = "login.jsp">
                            <li>로그인</li>
                        </a>
                        <a href = "join.jsp">
                            <li>회원가입</li>
                        </a>
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
                        <a href="main.jsp">Home</a>
                    </li>
                    <li>
                        <a class="active" href="flower.jsp">꽃도감</a>
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

    



    <!-- Start Featured Project Section -->
    <div class="row">
        <div class="col-md-12">
            <div class="project-section project-4-col">
                
                <!-- Start Portfolio items -->
                    <ul id="portfolio-list" data-animated="fadeIn">
                        <li>
                            <div class="portfolio-item">
                                <a href="flower_spring.jsp">
                                <img src="images/flower/봄.PNG" class="img-responsive">
                                <h3 class="season_color">봄</h3>
                                </a>
                            </div>

                        </li>
                        <li>
                            <div class="portfolio-item">
                                <a href = "flower_sum.jsp">
                                <img src="images/flower/여름.PNG" class="img-responsive">
                                <h3 class="season_color">여름</h3>		
                                </a>
                            </div>  

                        </li>
                        <li>
                            <div class="portfolio-item">
                                <a href = "flower_fall.jsp">
                                <img src="images/flower/가을.jpg" class="img-responsive">
                                <h3 class="season_color">가을</h3>	
                                </a>
                            </div>

                        </li>
                        <li>
                            <div class="portfolio-item">
                                <a href="flower_winter.jsp">
                                <img src="images/flower/겨울.PNG" class="img-responsive">
                                <h3 class="season_color">겨울</h3>
                                </a>
                            </div>

                        </li> 
                    </ul>
                    <!-- End Portfolio items -->
            </div>
        </div>
    </div>
    <!-- End Featured Project Section -->

<section>
    <section class="mysection">
        <article class="myarticle">1</article>
        <article class="myarticle">복수초</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13118_Y.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">영원한 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">2</article>
        <article class="myarticle">산철쭉</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13695_PK.jpg" /></article>
        <article class="myarticle">3월</article>
        <article class="myarticle">자제,사랑의 즐거움</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">3</article>
        <article class="myarticle">개나리</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_15072_Y.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">희망,깊은정</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">4</article>
        <article class="myarticle">벚나무</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_15208_PK.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">정신의 아름다움</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">5</article>
        <article class="myarticle">민들레</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13976_Y.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">사랑,행복</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">6</article>
        <article class="myarticle">목련</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_12916_W.jpg" /></article>
        <article class="myarticle">3월</article>
        <article class="myarticle">고귀함</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">7</article>
        <article class="myarticle">자목련</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_12920_C.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">자연애,존경,숭고한 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">8</article>
        <article class="myarticle">달래</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu36_W.jpg" /></article>
        <article class="myarticle">3월</article>
        <article class="myarticle">청렴,신념</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">9</article>
        <article class="myarticle">유채</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_15004_Y.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">쾌활, 명랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">10</article>
        <article class="myarticle">영산홍</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/info/2012050312320071228.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">첫사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">11</article>
        <article class="myarticle">모란</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13147_C.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">부귀,영화,화려함</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">12</article>
        <article class="myarticle">패랭이꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/info/2012050312320071231.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">순결한 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">13</article>
        <article class="myarticle">산달래</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_11531_PK.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">신선</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">14</article>
        <article class="myarticle">다닥냉이</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_15022_W.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">나의 모든것을 드립니다</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">15</article>
        <article class="myarticle">팬지</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu182_R.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">나를 생각해 주세요</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">16</article>
        <article class="myarticle">튤립</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu177_R.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">사랑의 고백</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">17</article>
        <article class="myarticle">찔레꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/info/2012050312320071229.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">고독, 신중한 사랑, 가족에 대한 그리움</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">18</article>
        <article class="myarticle">수선화</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu102_Y.jpg" /></article>
        <article class="myarticle">3월</article>
        <article class="myarticle">자기애, 자존심, 고결, 신비, 외로움</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">19</article>
        <article class="myarticle">자운영</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13367_C.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">감화, 나의행복, 그대의 관대한 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">20</article>
        <article class="myarticle">히아신스</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu204_W.jpg" /></article>
        <article class="myarticle">3월</article>
        <article class="myarticle">유희, 겸손한 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">21</article>
        <article class="myarticle">양지꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_15203_Y.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">사랑스러움</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">22</article>
        <article class="myarticle">삼지구엽초</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13094_Y.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">비밀, 당신을 붙잡아두다</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">23</article>
        <article class="myarticle">고깔제비꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_14021_C.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">즐거운 생활</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">24</article>
        <article class="myarticle">나도바람꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13143_W.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">영원한 행복</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">25</article>
        <article class="myarticle">노랑무늬붓꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_16844932_M.jpg" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">절제의 아름다움</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">26</article>
        <article class="myarticle">족도리풀</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13515_C.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">모녀의 정</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">27</article>
        <article class="myarticle">은난초</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_11109_W.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">총명</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">28</article>
        <article class="myarticle">백선</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13668_M.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">방어</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">29</article>
        <article class="myarticle">개느삼</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13376_Y.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">30</article>
        <article class="myarticle">골무꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_14221_C.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">의협심</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">31</article>
        <article class="myarticle">산수유</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAzMTlfMTI3%2FMDAxNjQ3NjkwNjE0MDQ1.Xv_cslMv4THW-3wYvxI7CicTfWPPWsGC32ZXYNmywcog.itwdpR5Q_Mi5uxb8CrnwBHOGGjjUGl_qTuN2HOq6-iQg.JPEG.besoban%2FIMG_20160319_101403%252C%25C6%25ED%25C1%25FD.jpg&type=sc960_832" /></article>
        <article class="myarticle">3월</article>
        <article class="myarticle">영원 불멸의 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">32</article>
        <article class="myarticle">복사꽃 </article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MTlfMjEg%2FMDAxNjUwMzUwMzQ3MDIy.lwDaBGzeEyslFzbYVs53hxwAS_QfatkZ999RntlKSiQg.6TfVQiNo9G80BM_xSMA8NZH0AKm_Kxr0Gmr2mQitPb8g.JPEG.49parkyi%2FDSC_7458.JPG&type=sc960_832" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">사랑의 노예, 희망</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">33</article>
        <article class="myarticle">진달래</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MDlfNjMg%2FMDAxNjQ5NTA0MzQxNjM2.CxVCv4YJdeuPnELZOwJ0gVJSF0fx9g-aaLPS3JLNSp8g.DRVxfSsTIL7Ua__utqsHk9LKYVJUaro_iWjDDm-3YHQg.JPEG.sualocin%2F20220409_142148.jpg&type=a340" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">사랑의 기쁨</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">34</article>
        <article class="myarticle">살구꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MDFfOTAg%2FMDAxNjQ4ODA4NTQ3MTg3.J8za4E6r0pw1T0MdTPccD528zWhoUJLeYY80ETww5Cgg.oFNPZiX4LSBaaBs_paBFsMc7w1DZ_MtoVa3FmDTCvAkg.JPEG.corexsale%2F20220324_084434.jpg&type=sc960_832" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">아가씨의 수줍음</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">35</article>
        <article class="myarticle">복수초</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAzMTNfMzYg%2FMDAxNjQ3MDk4MjE3NjE5.PqiozBLi0gJYY5JTieGlViGZ-v2-wLsuUEOH4ZBMeusg.B38heLI2z7v9Sxz68NeLXpf7mej0KKbBYl_PEcyLdYsg.JPEG.flowerddadam%2F20220312%25A3%25DF151819.jpg&type=a340" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">영원한 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">36</article>
        <article class="myarticle">자두꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://t1.daumcdn.net/cfile/tistory/9989E44D5ACE0DB81F" /></article>
        <article class="myarticle">4월</article>
        <article class="myarticle">순백, 순박</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
</section>
<br><br><br><br><br><br><br><br><br><br>
</body>
</html>