<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
    <title>Flower_Project</title>
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

<section>
    <section class="mysection">
        <article class="myarticle">1</article>
        <article class="myarticle">국화</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu22_Y.jpg" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">청결, 정조, 순결</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">2</article>
        <article class="myarticle">코스모스</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13899_P.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">소녀의 순정</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">3</article>
        <article class="myarticle">투구꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13111_P.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">밤의 열림</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">4</article>
        <article class="myarticle">땅귀개</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_16179978_Y.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">파리의 눈물</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">5</article>
        <article class="myarticle">울릉국화</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_16843_PK.jpg" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">어머님의 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">6</article>
        <article class="myarticle">자주쓴풀</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_15104_C.jpg" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">지각, 깨달음을 얻다</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">7</article>
        <article class="myarticle">각시취</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_16579_C.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">연정</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">8</article>
        <article class="myarticle">방울꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_17299_P.jpg" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">만족, 감사</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">9</article>
        <article class="myarticle">미국쑥부쟁이</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13862_W.jpg" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">그리움, 기다림, 가을바람 살랑거리는 10월</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">10</article>
        <article class="myarticle">구절초</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13887_W.jpg" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">가을여인</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">11</article>
        <article class="myarticle">한라돌쩌귀</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13112_B.jpg" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">그리움 </article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">12</article>
        <article class="myarticle">부용</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_14945_PK.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">섬세한 아름다움</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">13</article>
        <article class="myarticle">분꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13495_M.jpg" /></article>
        <article class="myarticle">6-10월</article>
        <article class="myarticle">겁쟁이, 내성적, 소심, 수줍음</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">14</article>
        <article class="myarticle">산비장이</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13959_C.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">추억</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">15</article>
        <article class="myarticle">께묵</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_17449_Y.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">관심</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">16</article>
        <article class="myarticle">솔체꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_17064_B.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">이루어 질 수 없는 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">17</article>
        <article class="myarticle">조밥나물</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13925_Y.jpg" /></article>
        <article class="myarticle">7-10월</article>
        <article class="myarticle">선언, 눈치가 빠른 눈썰미</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">18</article>
        <article class="myarticle">오이풀</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13268_R.jpg" /></article>
        <article class="myarticle">7-9월</article>
        <article class="myarticle">존경, 애모, 당신을 사랑합니다</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">19</article>
        <article class="myarticle">강활</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_16625_W.jpg" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">노여움</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">20</article>
        <article class="myarticle">바디나물</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13288_C.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">동심</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">21</article>
        <article class="myarticle">참싸리</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13400_C.jpg" /></article>
        <article class="myarticle">7-9월</article>
        <article class="myarticle">은혜</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">22</article>
        <article class="myarticle">사철란</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_11115_W.jpg" /></article>
        <article class="myarticle">8-9월</article>
        <article class="myarticle">숲속의 요정</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">23</article>
        <article class="myarticle">소경불알</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_WF552_M.jpg" /></article>
        <article class="myarticle">7-9월</article>
        <article class="myarticle">효심</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">24</article>
        <article class="myarticle">산씀바귀</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_18469_Y.jpg" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">순박함</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">25</article>
        <article class="myarticle">눈괴불주머니</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_17430_Y.jpg" /></article>
        <article class="myarticle">7-9월</article>
        <article class="myarticle">보물주머니</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">26</article>
        <article class="myarticle">독활</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_16796_G.jpg" /></article>
        <article class="myarticle">7-8월</article>
        <article class="myarticle">애절, 희생</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">27</article>
        <article class="myarticle">꽃향유</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_14170_C.jpg" /></article>
        <article class="myarticle">9-10월</article>
        <article class="myarticle">가을의 향기</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">28</article>
        <article class="myarticle">개여뀌</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_12728_C.jpg" /></article>
        <article class="myarticle">6-9월</article>
        <article class="myarticle">나를 생각해주세요</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">29</article>
        <article class="myarticle">쇠서나물</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13946_Y.jpg" /></article>
        <article class="myarticle">6-9월</article>
        <article class="myarticle">발랄</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">30</article>
        <article class="myarticle">핑크뮬리</article>
        <article class="myarticle_img"><img class= "a" src="https://post-phinf.pstatic.net/MjAxOTEwMjhfOTgg/MDAxNTcyMjQ5NDQxNzA2.jNiQpFnI2qeceQQaPiTp5ZFFE3nl0VMagznXzj2OX70g.EeVLh3rgckvdfIzpOys76sKWyeDYuNqXla6jJzSY7Aog.JPEG/GettyImages-1067171152.jpg?type=w1200" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">고백</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">31</article>
        <article class="myarticle">천일홍</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MTBfMjU3%2FMDAxNjMxMjM3NDk1NjU2.N0vEmlyz4vZJ44L1n6uyKSF5mA2lugg3een4zixkNfIg.NY4a6L9OBAnxneCwJKHXZXNH1uEIZ0417ZVEHkK8uDUg.JPEG.kimys5741%2F1631187967886.jpg&type=sc960_832" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">매혹, 변치않는 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">32</article>
        <article class="myarticle">백일홍</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F2472_000_1%2F20160720172419158_P70I2U0SA.jpg%2F20150624163150_1.jpg%3Ftype%3Dm4500_4500_fst_n&type=sc960_832" /></article>
        <article class="myarticle">6월-10월</article>
        <article class="myarticle">인연</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">33</article>
        <article class="myarticle">양귀비</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20220423_23%2F1650648453849rqqqi_PNG%2F51784352503933569_1635238190.PNG&type=sc960_832" /></article>
        <article class="myarticle">5-6월</article>
        <article class="myarticle">위로, 위안</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">34</article>
        <article class="myarticle">억새</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F2765_000_22%2F20180916222317686_J2N0DDR8W.jpg%2F1735517.jpg%3Ftype%3Dm4500_4500_fst&type=a340" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">친절, 세력, 활력</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">35</article>
        <article class="myarticle">눈괴불주머니</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEwMDJfMTQ1%2FMDAxNjMzMTUyOTY5NTI5.vwVIYwfBMlugisu4pqHI4bIlZgo9EzgGBXJ_vGGUih8g.CQwPL_R5Es3lh7OP9qJH4ie76J_5vxRKgSk8jKaa6kgg.JPEG.kimsa522%2FIMG_3746.JPG&type=sc960_832" /></article>
        <article class="myarticle">9월</article>
        <article class="myarticle">연인</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>


</section>
<br><br><br><br><br><br><br><br><br><br>
</body>
</html>