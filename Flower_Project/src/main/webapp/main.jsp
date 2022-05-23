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
    <title>Flower_Project</title>\
    <link rel="stylesheet" href="css/korea.css" />


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
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                        
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                        <a href="https://xn--ok0b236bp0a.com/place/2499" target='_blank'>
                            <img src="http://tong.visitkorea.or.kr/cms/resource/99/2717699_image2_1.jpeg" id="main_ban" alt="Slider images 1">
                            <div class="carousel-caption">
                                <h1>원주 용수골양귀비축제</h1>
                                <p>1만평 꽃양귀비 꽃밭에서 펼쳐지는 축제! 꽃양귀비 뿐만 아니라 청보랏빛 수레국화와 알리움도 함께 심어져 아름다움을 더하고 있으니 꼭 참여하세요!
                        <br>기간 : 2022년 05월25일 ~ 2022년 06월12일</p>
                            </div>
                        </a>    
                        </div>
                        <div class="item">
                        <a href="https://xn--ok0b236bp0a.com/place/3764" target='_blank'>
                            <img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=0c9e5ce6-f5a4-4a65-b189-eacaf0a6e959" id="main_ban2" alt="Slider images 2">
                            <div class="carousel-caption">
                                <h1>곡성 세계장미축제</h1>
                                <p>일제히 꽃문을 연 1,004 종의 장미와 함께 펼쳐지는 화려한 봄의 페스티벌! 쉽게 볼 수 없는 전 세계 명품 장미를 한 곳에서 볼 수 있는 국내 유일의 기회!
                                <br>기간 : 2022년 05월 21일 ~ 2022년 06월 06일</p>
                            </div>
                        </a>
                        </div>
                        <div class="item">
                        <a href="https://xn--ok0b236bp0a.com/place/25997" target='_blank'>
                            <img src="https://api.cdn.visitjeju.net/photomng/imgpath/202203/08/b8974c12-229b-4256-a007-9167d4080e21.jpg" id="main_ban3" alt="Slider images 1">
                            <div class="carousel-caption">
                                <h1>휴애리 봄 수국축제</h1>
                                <p>오색빛깔 수국을 한 곳에서 올 봄 가장 먼저 수국을 만나 볼 수 있는 절호의 기회!
                        <br>기간 : 2022년 03월 25일 ~ 2022년 06월 12일</p>
                            </div>
                        </a>
                        </div>
                        <div class="item">
                        <a href="https://xn--ok0b236bp0a.com/place/3781" target='_blank'>
                            <img src="https://www.tournews21.com/news/photo/202004/42045_74001_722.jpg" id="main_ban4" alt="Slider images 1">
                            <div class="carousel-caption">
                                <h1>영주 소백산철쭉제</h1>
                                <p>봄바람의 선율에 꽃망울을 터트리며, 국내 최대 철쭉 군락지인 소백산의 꽃길과 푸른 하늘을 바라보며 사랑의 기쁨을 느껴보자!
                        <br>기간 : 2022년 05월 28일 ! 2022년 05월 29일</p>
                            </div>
                        </a>
                        </div>
                        <div class="item">
                        <a href="https://xn--ok0b236bp0a.com/place/26079" target='_blank'>
                            <img src="http://tong.visitkorea.or.kr/cms/resource/03/2811503_image2_1.jpg" id="main_ban5" id="main_ban5" alt="Slider images 1">
                            <div class="carousel-caption">
                                <h1>백만송이 봄꽃축제</h1>
                                <p>벽초지수목원의 동서양의 27개의 정원들을 봄맞이 대표꽃인 튤립, 크로커스, 수선화, 아이리스 등과 함께 화려함의 대명사인 다알리아와 수백종의 야생화들이 수놓아 맞이하고있으니 꼭 한번 참여하세요!
                        <br>기간 : 2022년 04월 08일 ~ 2022년 05월 30일</p>
                            </div>
                        </a>
                        </div>
                        <div class="item">
                        <a href="https://xn--ok0b236bp0a.com/place/2638" target='_blank'>
                            <img src="http://www.100ssd.co.kr/news/photo/201905/61773_41922_154.jpg" id="main_ban6" id="main_ban5" alt="Slider images 1">
                            <div class="carousel-caption">
                                <h1>부여서동연꽃축제</h1>
                                <p>스무살, 연꽃화원의 초대 빛나는 이야기를 담다
                                천만송이 연꽃의 향연, 부여서동연꽃축제에 여러분을 초대합니다!
                        <br>기간 : 2022년 07월 14일 ~ 2022년 07월 17일</p>
                            </div>
                        </a>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <img class = "arrow" src="img/prev.png">
                        
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <img class = "arrow" src="img/next.png">
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
                    <h3>5월 저 피었어요🌸<h3>
                    <div>
                    <iframe width="100%" height="700px" src="api_main1.jsp" scrolling="no"></iframe>       
                	</div>
                </article>
                <article class="arts half">
                    <h3>5월 축제 뿜뿜🎉<h3>
                    <div>
                    <iframe width="100%" height="700px" src="api_main2.jsp" scrolling="no"></iframe>
                    </div>
                </article>
            </section>
        </div>
    </div>
   
    <!-- End Services Section -->
    <div class="row">
        <div class="container227">
            <h3>오늘의 날씨</h3>
            <span class="weatherInfo"></span>
             <img class="weatherIcon">
        </div>
         
         
    <div class="row">
        <a href="flower_rec.jsp"><div class="col-md-5">
            <div class="home-about-us">
                <h3 class="section-title">🌹꽃 요리 레시피🌹 </h3>
                <img src="images/f_rec.jpg" class="img-responsive" alt="">
            </div>
        </a>
        </div>
        <div class="col-md-7">
            <div class="running-project">
                <h3 class="section-title">꽃과 함께하는 OOTD٩( ᐛ )و</h3>
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
                    <h1>OOTD WITH FLOWERS</h1>
                    <p>당신의 모습을 보여주세요!</p>
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
<script src="app.js"></script>
         <script>
            const API_KEY = "#"; //add your API KEY 
    const COORDS = "coords"; //좌표를 받을 변수 
    
    //DOM객체들 
    const weatherInfo = document.querySelector(".weatherInfo");
    const weatherIconImg = document.querySelector(".weatherIcon");
    
    //초기화 
    function init() {
        askForCoords();
    }
    
    //좌표를 물어보는 함수 
    function askForCoords() {
        navigator.geolocation.getCurrentPosition(handleSuccess, handleError);
    }
    
    //좌표를 얻는데 성공했을 때 쓰이는 함수 
    function handleSuccess(position) {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;
        const coordsObj = {
            latitude,
            longitude
        };
        getWeather(latitude, longitude); //얻은 좌표값을 바탕으로 날씨정보를 불러온다.
    }
    //좌표를 얻는데 실패했을 때 쓰이는 함수 
    function handleError() {
        console.log("can't not access to location");
    }
    
    //날씨 api를 통해 날씨에 관련된 정보들을 받아온다. 
    function getWeather(lat, lon) {
        fetch(`http://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${'591998c0423f5ab7c296cccae8075f9b'}&units=metric&lang=kr`).then(function(response) {
            return response.json();
        })
        
        .then(function(json) {
            //온도, 위치, 날씨묘사, 날씨아이콘을 받는다. 
            const temperature = json.main.temp;
            const place = json.name;
            const weatherDescription = json.weather[0].description;
            const weatherIcon = json.weather[0].icon;
            const weatherIconAdrs = `http://openweathermap.org/img/wn/${weatherIcon}@2x.png`;
        
            //받아온 정보들을 표현한다. 
            weatherInfo.innerText = `${temperature} °C / @${place} / ${weatherDescription}`;
            weatherIconImg.setAttribute("src", weatherIconAdrs);
        })
        .catch((error) => console.log("error:", error));
    }
    
    init();
        </script> 
</body>
<script src="app.js"></script>
</html>