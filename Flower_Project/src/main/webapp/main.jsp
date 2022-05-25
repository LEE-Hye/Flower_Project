<%@page import="com.smhrd.domain.PostVO"%>
<%@page import="com.smhrd.domain.PostDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.smhrd.domain.MemberVO" %>
<%@ page import = "com.smhrd.domain.MemberDAO" %>
<%@ page import = "java.util.List" %>
<% 
   PostDAO dao = new PostDAO();
   List<PostVO> likeList = dao.selectLikeAllBoard();
   pageContext.setAttribute("likeList", likeList);
%>
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
                    <c:forEach var="like" items="${likeList}" begin="0" end="3">
							<div class="col-md-6 col-sm-6">
							<a href="SelectPostCon?pnum=${like.pnum}">
								<div class="project">
									<img src='<c:out value="upload/${like.sname}" />'
										class="img-responsive" alt="호감도순사진">
								</div>
							</div>
					</c:forEach>

                
                   
                    
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
                                <li><img src="data:image/jpeg;base64,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" id="img-res" alt=""></a></li>
                                <li><img src="data:image/jpeg;base64,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" id="img-res" alt=""></a></li>
                                <li><img src="data:image/jpeg;base64,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" id="img-res" alt=""></a></li>
                                <li><img src="data:image/jpeg;base64,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" id="img-res" alt=""></a></li>
                                <li><img src="data:image/jpeg;base64,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" id="img-res" alt=""></a></li>
                                <li><img src="data:image/jpeg;base64,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" id="img-res" alt=""></a></li>
                                
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