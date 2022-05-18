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
        <article class="myarticle">동백나무</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_14043_R.jpg" /></article>
        <article class="myarticle">1월</article>
        <article class="myarticle">누구보다 당신을 사랑합니다</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">2</article>
        <article class="myarticle">시클라멘</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu109_R.jpg" /></article>
        <article class="myarticle">11월</article>
        <article class="myarticle">수줍음 , 질투, 내성적</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">3</article>
        <article class="myarticle">베고니아</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu31_PK.jpg" /></article>
        <article class="myarticle">연중</article>
        <article class="myarticle">그대를 짝사랑합니다</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">4</article>
        <article class="myarticle">수선화</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu102_Y.jpg" /></article>
        <article class="myarticle">12월</article>
        <article class="myarticle">자기애,자존심,고결,신비,외로움</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">5</article>
        <article class="myarticle">게발선인장</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu10_R.jpg" /></article>
        <article class="myarticle">11월</article>
        <article class="myarticle">불타는 사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">6</article>
        <article class="myarticle">칼랑코에</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu168_R.jpg" /></article>
        <article class="myarticle">1월</article>
        <article class="myarticle">인기, 설렘, 평판</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">7</article>
        <article class="myarticle">군자란</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu23_M.jpg" /></article>
        <article class="myarticle">1월</article>
        <article class="myarticle">우아함, 고귀함</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">8</article>
        <article class="myarticle">심비디움</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu112_Y.jpg" /></article>
        <article class="myarticle">1월</article>
        <article class="myarticle">화려한 삶</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">9</article>
        <article class="myarticle">덴드로비움</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu43_PK.jpg" /></article>
        <article class="myarticle">12월</article>
        <article class="myarticle">말괄량이, 미인</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">10</article>
        <article class="myarticle">포인세티아</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu185_Y.jpg" /></article>
        <article class="myarticle">12월</article>
        <article class="myarticle">축복</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">11</article>
        <article class="myarticle">팔레놉시스</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu181_C.jpg" /></article>
        <article class="myarticle">11월</article>
        <article class="myarticle">행복이 날아옴, 애정의 표시</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">12</article>
        <article class="myarticle">세인트폴리아</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu97_P.jpg" /></article>
        <article class="myarticle">연중</article>
        <article class="myarticle">작은사랑</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">13</article>
        <article class="myarticle">개쑥갓</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_13956_Y.jpg" /></article>
        <article class="myarticle">2월</article>
        <article class="myarticle">밀회</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">14</article>
        <article class="myarticle">아프리카봉선화</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu121_C.jpg" /></article>
        <article class="myarticle">연중</article>
        <article class="myarticle">나의 사랑은 당신보다 깊다</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">15</article>
        <article class="myarticle">시네라리아</article>
        <article class="myarticle_img"><img class= "a" src="https://ssl.pstatic.net/sstatic/keypage/outside/flower/img2/fcs_gnu108_P.jpg" /></article>
        <article class="myarticle">12월</article>
        <article class="myarticle">즐거움, 기쁨충만</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    <section class="mysection">
        <article class="myarticle">16</article>
        <article class="myarticle">매화</article>
        <article class="myarticle_img"><img class= "a" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAzMjBfMjQg%2FMDAxNjQ3NzU3OTU1MjA5.1mwlNjNL_wuNEEl1coqW8wXLa8FzfrkvmeZI_h44iZAg.dmHbuMgNsz2vZIMOefzn7pyPz95pTq8BhLZZiBcYdjUg.JPEG.kjs5324%2F28.jpg&type=sc960_832" /></article>
        <article class="myarticle">2월</article>
        <article class="myarticle">고결한 마음, 맑은 마음, 기품</article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
</section>
<br><br><br><br><br><br><br><br><br><br>
</body>
</html>