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
        <article class="myarticle">나팔꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/info/2012050311474471193.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">기쁜 소식</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">2</article>
        <article class="myarticle">노루발</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13693_W.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">소녀의 기도</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">3</article>
        <article class="myarticle">장미</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu146_R.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">빨강 : 열렬한 사랑, 흰색 : 순결함, 청순함, 노랑 : 우정과 영원한 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">4</article>
        <article class="myarticle">수레국화</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_16166245_PK.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">행복</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">5</article>
        <article class="myarticle">해바라기</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13923_Y.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">프라이드</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">6</article>
        <article class="myarticle">카네이션</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu164_M.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">모정, 사랑, 부인의 애정</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">7</article>
        <article class="myarticle">금낭화</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_15064_R.jpg" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">당신을 따르겠습니다</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">8</article>
        <article class="myarticle">메꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_14242_PK.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">수줍음, 충성, 속박</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">9</article>
        <article class="myarticle">싱아</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_12694_W.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">친근한 정</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">10</article>
        <article class="myarticle">패랭이꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13530_C.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">순결한 사랑, 재능, 거절</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">11</article>
        <article class="myarticle">애기기린초</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_17068_Y.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">소녀의 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">12</article>
        <article class="myarticle">이질풀</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13681_W.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">새색시</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">13</article>
        <article class="myarticle">담쟁이덩굴</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_10526_G.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">우정</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">14</article>
        <article class="myarticle">수정난풀</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13692_W.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">숲속의 요정, 사랑의 그림자</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">15</article>
        <article class="myarticle">해란초</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_14285_Y.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">영원한 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">16</article>
        <article class="myarticle">무궁화</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_14944_P.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">섬세한 아름다움, 일편당심 , 은근과 끈기</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">17</article>
        <article class="myarticle">돌양지꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_15191_Y.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">사랑스러움, 그리움, 행복의 열쇠</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">18</article>
        <article class="myarticle">글록시니아</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/info/2012050314215471257.jpg" /></article>
        <article class="myarticle">4-10월</article>
        <article class="myarticle">아양, 미태</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">19</article>
        <article class="myarticle">쇠무릎</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/info/2012050314215471258.jpg" /></article>
        <article class="myarticle">8월</article>
        <article class="myarticle">애교</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">20</article>
        <article class="myarticle">골등골나물</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13910_C.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">주저</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">21</article>
        <article class="myarticle">꽃고비</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_17456_W.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">기다림, 돌아와주세요</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">22</article>
        <article class="myarticle">만병초</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_16946_W.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">위엄, 존엄</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">23</article>
        <article class="myarticle">물꽈리아재비</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_17311_Y.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">노래</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">24</article>
        <article class="myarticle">플록스</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu190_PK.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">방심은 금물, 정열</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">25</article>
        <article class="myarticle">자주괭이밥</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13639_C.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">충실, 정의</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">26</article>
        <article class="myarticle">말발도리</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_15143_W.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">애교</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">27</article>
        <article class="myarticle">쑥부쟁이</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13865_P.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">그리움, 기다림</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">28</article>
        <article class="myarticle">여우팥</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13375_Y.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">기다림, 잃어버린 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">29</article>
        <article class="myarticle">물양지꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_16934_Y.jpg" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">사랑스러움 </article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">30</article>
        <article class="myarticle">인동덩굴</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_11059_W.jpg" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">사랑의 인연</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">31</article>
        <article class="myarticle">수국</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MjNfMTU3%2FMDAxNjUwNjg1ODQwNjMx.lCyEnsXn5ZsxEPEtr6A3t4lKsBsCYfi2DqbaiUWsy3og.GkjLEK8xsI9DnOh3cVpCrxh7veozqUDX-ietfMboDSog.JPEG.lovelykkkk%2FIMG_7552.jpg&type=a340" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">진심, 변덕, 처녀의 꿈</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">32</article>
        <article class="myarticle">라벤더</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MzBfMjA5%2FMDAxNjUxMzIzOTUwOTE4.UXtb-56lK4DTADJJhCTmSrWs-TMPTxNCerFh4CxRVM0g.kpxZTG0sfas-oY7B7yxGmc3P_AKCeJxz27F-i8BwH5gg.JPEG.holy2799%2Fholy27991_3.jpg&type=a340" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">침묵, 여자의 정절, 나에게 대답하세요</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">33</article>
        <article class="myarticle">봉숭아</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MTFfMjIw%2FMDAxNjI1OTc4MDc3NDY4.zSRK2GOsHXE7LzeFJSx2wCLhX_09E9Bg7SJoHd0klHog.W3fs7hjXtAzwSIBZJWYEXjVfzzDWZHLU54do2Ok6EYAg.JPEG.eoskan6685%2Funnamed.jpg&type=a340" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">부귀, 여린 아이같은 마음씨</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">34</article>
        <article class="myarticle">붓꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MjlfOTIg%2FMDAxNjUxMTg4NTkyODY1.l6pe7Fg6shckOK8lAL_OWhJneyQeTvJBGUPp9q0jXP4g.sbGSQ4NeMDcV5hJUYmo1SXbnhOIGYlpIOhcoZkQfIe0g.JPEG.sangyulekim%2FIMG_3145.JPG&type=a340" /></article>
        <article class="myarticle">5월</article>
        <article class="myarticle">좋은 소식, 잘 전해주세요</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">35</article>
        <article class="myarticle">연꽃</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA4MDdfMjcy%2FMDAxNjI4MzM0NDY4NTcw.6fFL6uO8MJ1yO8yeCOpUA5lb_L0dfxVs6xmCktzQqcQg.UPN-SvL9aYmCYZbcQu9pwLfwZI0puJJXVT3XgC-NpQcg.JPEG.alsl2067519%2F1628333365069.jpg&type=a340" /></article>
        <article class="myarticle">7월</article>
        <article class="myarticle">배신, 청결, 신성, 당신 모습이 아름다운 것만큼 마음도 아름답다.</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">36</article>
        <article class="myarticle">메리골드</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAyMTVfMjc5%2FMDAxNjQ0ODc3MzI4MjMz.3U6H_r9H6LoDinEWHJHvImPhq5948Jzav0j4L2TQ38Ag.SXg3UonrJzy5XvYz1O06QUte2AJqnZLmoaFgdChkV14g.JPEG.moon_seo%2F%25B4%25D9%25BF%25EE%25B7%25CE%25B5%25E5%25C6%25C4%25C0%25CF.jpg&type=a340" /></article>
        <article class="myarticle">6월</article>
        <article class="myarticle">우정, 예언</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
</section>
<br><br><br><br><br><br><br><br><br><br>
</body>
</html>