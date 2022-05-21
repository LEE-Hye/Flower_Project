<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.FlowerVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.FlowerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
    
<% 
	FlowerDAO dao = new FlowerDAO();
	List<FlowerVO> flowerList_fall = dao.selectfall();
    pageContext.setAttribute("flowerList_fall", flowerList_fall);
%>
<!doctype html>   
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en" dir="ltr">



<head>
    <meta charset="utf-8" />
    <title>Flower_Project</title>
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
                                <img src="images/flower/spring봄.jpg" class="img-responsive2">
                                <h3 class="season_color">봄</h3>
                                </a>
                            </div>

                        </li>
                        <li>
                            <div class="portfolio-item">
                                <a href = "flower_sum.jsp">
                                <img src="images/flower/summer여름.jpg" class="img-responsive2">
                                <h3 class="season_color">여름</h3>		
                                </a>
                            </div>  

                        </li>
                        <li>
                            <div class="portfolio-item">
                                <a href = "flower_fall.jsp">
                                <img src="images/flower/autumn가을.jpg" class="img-responsive2">
                                <h3 class="season_color">가을</h3>	
                                </a>
                            </div>

                        </li>
                        <li>
                            <div class="portfolio-item">
                                <a href="flower_winter.jsp">
                                <img src="images/flower/winter겨울.jpg" class="img-responsive2">
                                <h3 class="season_color">겨울</h3>
                                </a>
                            </div>

                        </li> 
                    </ul>
                    <!-- End Portfolio items -->
            </div>
        </div>
    </div>

    <c:forEach var="f" items="${flowerList_fall}">
    <section class="mysection">
        <article class="myarticle">1</article>
        <article class="myarticle"><c:out value="${f.f_name }" /></article>
        <article class="myarticle_img"><img class="fsize" src='<c:out value="${f.f_img}" />'></article>
        <article class="myarticle"><c:out value="${f.f_month}" />월</article>
        <article class="myarticle"><c:out value="${f.f_story}" /></article>
        <article><input class = "f_btn" type="button" value="조회"  onclick ="location.href = 'main.jsp'"></article>
    </section><br>
    </c:forEach>

<br><br><br><br><br><br><br><br><br><br>
</body>