<%@page import="com.smhrd.domain.PostDAO"%>
<%@page import="com.smhrd.domain.PostVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.smhrd.domain.MemberVO" %>
<%@ page import = "com.smhrd.domain.MemberDAO" %>
<%@ page import = "java.util.List" %>

<%
	request.setCharacterEncoding("UTF-8");
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	System.out.print("pnum가져왓나?");
	PostVO p_vo = new PostVO(pnum);
	PostDAO dao = new PostDAO();
	PostVO post = dao.selectPost(pnum);
%>

<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8" />
    

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
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
 
    
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    

    <title>Flower_Project</title>
    
    
    <link rel="stylesheet" href="css/new_post.css">

    <!-- Construction CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="css/style.css">


 
    <style type="text/css">
        .img_wrap {
            width: 300px;
            margin-top: 50px;
        }
        .img_wrap img {
            max-width: 100%;
        }
 
    </style>
 
    <script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>
    <script type="text/javascript">
        
        var sel_file;
 
        $(document).ready(function() {
            $("#input_img").on("change", handleImgFileSelect);
        }); 
 
        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
 
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
                }
 
                sel_file = f;
 
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#img").attr("src", e.target.result);
                }
                reader.readAsDataURL(f);
            });
        }
 
    </script>


 
    <script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>
    <script type="text/javascript">
        
        var sel_file;
 
        $(document).ready(function() {
            $("#input_img").on("change", handleImgFileSelect);
        }); 
 
        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
 
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
                }
 
                sel_file = f;
 
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#img").attr("src", e.target.result);
                }
                reader.readAsDataURL(f);
            });
        }
 
    </script>



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
                    <a href="main.jsp"><img id="main_pic" src="images/client/5055151.jpg" class="img-responsive" alt=""></a>
                </div>
            </div>
            <div class="col-md-7 col-sm-7">
                <div class="top-info">
                    <ul id=login class="top-social" >
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
                        <a href="main.jsp">Home</a>
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
                        <a class="active" href="post_view.jsp">커뮤니티</a>
                    </li>
                <!-- 네비게이션 끝 -->
            </div>
        </div>
        
    </div>
    <!-- End Navigation Section-->
    
    
    
  
    
    
    
    <body>
        <br><br><br>
<section id="container">


    <div id="main_container">

        <div class="post_form_container">
            <form action="#" id="ModiForm" class="post_form">
                <div id="in_title">
                    <textarea name="title" value="${post.title}" id="utitle" rows="1" cols="55" placeholder="제목" maxlength="20" required></textarea>
                </div>
                <div class="preview">
                    <div class="upload">
                        <div class="post_btn">
                            <div class="plus_icon">
                                <span></span>
                                <span></span>
                            </div>
                            <p>대표 이미지 추가</p>
                            <canvas id="imageCanvas"></canvas>
                            <!--<p><img id="img_id" src="#" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>-->
                        </div>
                    </div>
                </div>
                <p>
                    <input type="file" name="photo" id="id_photo" required="required">
                </p>
                <p>
                    <textarea name="content" id="text_field" cols="50" rows="5" placeholder="내용은 1000자 까지 가능합니다"></textarea>

                </p>
                <br>

                <form enctype="multipart/form-data" action="write_ok.php?board_id=<?echo $board_id;?>" method="post">
                    
                   


                    <div class="wi_line"></div>
                    
 
                    
                          
                      <br>
                      <div>대표 꽃 태그를 선택해 주세요</div>

                      <div>
                        <table >
                         <th id="selecttag">대표 해시태그</th>
                         <tr>
                             <td></td>
                         </tr>
                        <tr>
                            <td>
                                <input type="text" id="flower_hash"  readonly>
                                
                            </td>
                        </tr>
                        </table>
                    </div>

                      <br>
                      <div id="btn1_spring">
                          <th>봄</th><br>
                          <a onclick="inputNum('복수초')" style="cursor: pointer;"><td>#복수초 </td></a>
                          <a onclick="inputNum('산철쭉')" style="cursor: pointer;"><td>#산철쭉 </td></a>
                          <a onclick="inputNum('개나리')" style="cursor: pointer;"><td>#개나리 </td></a>
                          <a onclick="inputNum('벚나무')" style="cursor: pointer;"><td>#벚나무 </td></a>
                          <a onclick="inputNum('민들레')" style="cursor: pointer;"><td>#민들레 </td></a>
                          <a onclick="inputNum('목련')" style="cursor: pointer;"><td>#목련 </td></a>
                          <a onclick="inputNum('자목련')" style="cursor: pointer;"><td>#자목련 </td></a>
                          <a onclick="inputNum('달래')" style="cursor: pointer;"><td>#달래 </td></a>
                          <a onclick="inputNum('유채')" style="cursor: pointer;"><td>#유채 </td></a>
                          <a onclick="inputNum('영산홍')" style="cursor: pointer;"><td>#영산홍 </td></a>
                          <a onclick="inputNum('모란')" style="cursor: pointer;"><td>#모란 </td></a>
                          <a onclick="inputNum('패랭이꽃')" style="cursor: pointer;"><td>#패랭이꽃 </td></a>
                          <a onclick="inputNum('산달래')" style="cursor: pointer;"><td>#산달래 </td></a>
                          <a onclick="inputNum('다닥냉이')" style="cursor: pointer;"><td>#다닥냉이 </td></a>
                          <a onclick="inputNum('팬지')" style="cursor: pointer;"><td>#팬지 </td></a>
                          <a onclick="inputNum('튤립')" style="cursor: pointer;"><td>#튤립 </td></a>
                          <a onclick="inputNum('찔레꽃')" style="cursor: pointer;"><td>#찔레꽃 </td></a>
                          <a onclick="inputNum('수선화')" style="cursor: pointer;"><td>#수선화 </td></a>
                          <a onclick="inputNum('자운영')" style="cursor: pointer;"><td>#자운영 </td></a>
                          <a onclick="inputNum('히아신스')" style="cursor: pointer;"><td>#히아신스 </td></a>
                          <br>
                          <a onclick="inputNum('양지꽃')" style="cursor: pointer;"><td>#양지꽃 </td></a>
                          <a onclick="inputNum('삼지구엽초')" style="cursor: pointer;"><td>#삼지구엽초 </td></a>
                          <a onclick="inputNum('고깔제비꽃')" style="cursor: pointer;"><td>#고깔제비꽃 </td></a>
                          <a onclick="inputNum('나도바람꽃')" style="cursor: pointer;"><td>#나도바람꽃 </td></a>
                          <a onclick="inputNum('노랑무늬붓꽃')" style="cursor: pointer;"><td>#노랑무늬붓꽃 </td></a>
                          <a onclick="inputNum('족도리풀')" style="cursor: pointer;"><td>#족도리풀 </td></a>
                          <a onclick="inputNum('은난초')" style="cursor: pointer;"><td>#은난초 </td></a>
                          <a onclick="inputNum('백선')" style="cursor: pointer;"><td>#백선 </td></a>
                          <a onclick="inputNum('개느삼')" style="cursor: pointer;"><td>#개느삼 </td></a>
                          <a onclick="inputNum('골무꽃')" style="cursor: pointer;"><td>#골무꽃 </td></a>
                          <a onclick="inputNum('산수유')" style="cursor: pointer;"><td>#산수유 </td></a>
                          <a onclick="inputNum('복사꽃')" style="cursor: pointer;"><td>#복사꽃 </td></a>
                          <a onclick="inputNum('진달래')" style="cursor: pointer;"><td>#진달래 </td></a>
                          <a onclick="inputNum('살구꽃')" style="cursor: pointer;"><td>#살구꽃 </td></a>
                          <a onclick="inputNum('자두꽃')" style="cursor: pointer;"><td>#자두꽃 </td></a>
                        </div>
                        <br>
                        <div id="btn1_summer">
                          <th>여름</th><br>
                          <a onclick="inputNum('나팔꽃')" style="cursor: pointer;"><td>#나팔꽃 </td></a>
                          <a onclick="inputNum('노루발')" style="cursor: pointer;"><td>#노루발 </td></a>
                          <a onclick="inputNum('장미')" style="cursor: pointer;"><td>#장미 </td></a>
                          <a onclick="inputNum('수레국화')" style="cursor: pointer;"><td>#수레국화 </td></a>
                          <a onclick="inputNum('해바라기')" style="cursor: pointer;"><td>#해바라기 </td></a>
                          <a onclick="inputNum('카네이션')" style="cursor: pointer;"><td>#카네이션 </td></a>
                          <a onclick="inputNum('금낭화')" style="cursor: pointer;"><td>#금낭화 </td></a>
                          <a onclick="inputNum('메꽃')" style="cursor: pointer;"><td>#메꽃 </td></a>
                          <a onclick="inputNum('싱아')" style="cursor: pointer;"><td>#싱아 </td></a>
                          <a onclick="inputNum('패랭이꽃')" style="cursor: pointer;"><td>#패랭이꽃 </td></a>
                          <a onclick="inputNum('애기기린초')" style="cursor: pointer;"><td>#애기기린초 </td></a>
                          <a onclick="inputNum('이질풀')" style="cursor: pointer;"><td>#이질풀 </td></a>
                          <a onclick="inputNum('담쟁이덩쿨')" style="cursor: pointer;"><td>#담쟁이덩쿨 </td></a>
                          <a onclick="inputNum('수정난풀')" style="cursor: pointer;"><td>#수정난풀 </td></a>
                          <a onclick="inputNum('해란초')" style="cursor: pointer;"><td>#해란초 </td></a>
                          <a onclick="inputNum('무궁화')" style="cursor: pointer;"><td>#무궁화 </td></a>
                          <a onclick="inputNum('돌양지꽃')" style="cursor: pointer;"><td>#돌양지꽃 </td></a>
                          <a onclick="inputNum('글록시니아')" style="cursor: pointer;"><td>#글록시니아 </td></a>
                          <br>
                          <a onclick="inputNum('쇠무릎')" style="cursor: pointer;"><td>#쇠무릎 </td></a>
                          <a onclick="inputNum('골등골나물')" style="cursor: pointer;"><td>#골등골나물 </td></a>
                          <a onclick="inputNum('꽃고비')" style="cursor: pointer;"><td>#꽃고비 </td></a>
                          <a onclick="inputNum('만병초')" style="cursor: pointer;"><td>#만병초 </td></a>
                          <a onclick="inputNum('물꽈리아재비')" style="cursor: pointer;"><td>#물꽈리아재비 </td></a>
                          <a onclick="inputNum('플록스')" style="cursor: pointer;"><td>#플록스 </td></a>
                          <a onclick="inputNum('자주괭이밥')" style="cursor: pointer;"><td>#자주괭이밥 </td></a>
                          <a onclick="inputNum('말발도리')" style="cursor: pointer;"><td>#말발도리 </td></a>
                          <a onclick="inputNum('쑥부쟁이')" style="cursor: pointer;"><td>#쑥부쟁이 </td></a>
                          <a onclick="inputNum('여우팥')" style="cursor: pointer;"><td>#여우팥 </td></a>
                          <a onclick="inputNum('물양지꽃')" style="cursor: pointer;"><td>#물양지꽃 </td></a>
                          <a onclick="inputNum('인동덩쿨')" style="cursor: pointer;"><td>#인동덩쿨 </td></a>
                          <a onclick="inputNum('수국')" style="cursor: pointer;"><td>#수국 </td></a>
                          <a onclick="inputNum('라벤더')" style="cursor: pointer;"><td>#라벤더 </td></a>
                          <a onclick="inputNum('봉숭아')" style="cursor: pointer;"><td>#봉숭아 </td></a>
                          <a onclick="inputNum('붓꽃')" style="cursor: pointer;"><td>#붓꽃 </td></a>
                          <a onclick="inputNum('연꽃')" style="cursor: pointer;"><td>#연꽃 </td></a>
                          <br>
                          <a onclick="inputNum('메리골드')" style="cursor: pointer;"><td>#메리골드 </td></a>
                          <a onclick="inputNum('백합')" style="cursor: pointer;"><td>#백합 </td></a>
                      </div>
                      <br>
                        <div id="btn1_fall">
                          <th>가을</th><br>
                          <a onclick="inputNum('국화')" style="cursor: pointer;"><td>#국화 </td></a>
                          <a onclick="inputNum('코스모스')" style="cursor: pointer;"><td>#코스모스 </td></a>
                          <a onclick="inputNum('투구꽃')" style="cursor: pointer;"><td>#투구꽃 </td></a>
                          <a onclick="inputNum('땅따귀개')" style="cursor: pointer;"><td>#땅따귀개 </td></a>
                          <a onclick="inputNum('울릉국화')" style="cursor: pointer;"><td>#울릉국화 </td></a>
                          <a onclick="inputNum('자주쓴풀')" style="cursor: pointer;"><td>#자주쓴풀 </td></a>
                          <a onclick="inputNum('각시퓌')" style="cursor: pointer;"><td>#각시퓌 </td></a>
                          <a onclick="inputNum('방울꽃')" style="cursor: pointer;"><td>#방울꽃 </td></a>
                          <a onclick="inputNum('미국쑥부쟁이')" style="cursor: pointer;"><td>#미국쑥부쟁이 </td></a>
                          <a onclick="inputNum('구절초')" style="cursor: pointer;"><td>#구절초 </td></a>
                          <a onclick="inputNum('한라돌쩌귀')" style="cursor: pointer;"><td>#한라돌쩌귀 </td></a>
                          <a onclick="inputNum('부용')" style="cursor: pointer;"><td>#부용 </td></a>
                          <a onclick="inputNum('분꽃')" style="cursor: pointer;"><td>#분꽃 </td></a>
                          <a onclick="inputNum('산비장이')" style="cursor: pointer;"><td>#산비장이 </td></a>
                          <a onclick="inputNum('께묵')" style="cursor: pointer;"><td>#께묵 </td></a>
                          <a onclick="inputNum('솔체꽃')" style="cursor: pointer;"><td>#솔체꽃 </td></a>
                          <a onclick="inputNum('조밥나물')" style="cursor: pointer;"><td>#조밥나물 </td></a>
                          <a onclick="inputNum('오이풀')" style="cursor: pointer;"><td>#오이풀 </td></a>
                          <br>
                          <a onclick="inputNum('강활')" style="cursor: pointer;"><td>#강활 </td></a>
                          <a onclick="inputNum('바디나물')" style="cursor: pointer;"><td>#바디나물 </td></a>
                          <a onclick="inputNum('참싸리')" style="cursor: pointer;"><td>#참싸리 </td></a>
                          <a onclick="inputNum('사철란')" style="cursor: pointer;"><td>#사철란 </td></a>
                          <a onclick="inputNum('소경불알')" style="cursor: pointer;"><td>#소경불알 </td></a>
                          <a onclick="inputNum('산씀바귀')" style="cursor: pointer;"><td>#산씀바귀 </td></a>
                          <a onclick="inputNum('눈괴불주머니')" style="cursor: pointer;"><td>#눈괴불주머니 </td></a>
                          <a onclick="inputNum('독활')" style="cursor: pointer;"><td>#독활 </td></a>
                          <a onclick="inputNum('꽃향유')" style="cursor: pointer;"><td>#꽃향유 </td></a>
                          <a onclick="inputNum('개여뀌')" style="cursor: pointer;"><td>#개여뀌 </td></a>
                          <a onclick="inputNum('쇠서나물')" style="cursor: pointer;"><td>#쇠서나물 </td></a>
                          <a onclick="inputNum('핑크뮬리')" style="cursor: pointer;"><td>#핑크뮬리 </td></a>
                          <a onclick="inputNum('천일홍')" style="cursor: pointer;"><td>#천일홍 </td></a>
                          <a onclick="inputNum('백일홍')" style="cursor: pointer;"><td>#백일홍 </td></a>
                          <a onclick="inputNum('양귀비')" style="cursor: pointer;"><td>#양귀비 </td></a>
                          <a onclick="inputNum('억새')" style="cursor: pointer;"><td>#억새 </td></a>
                          <a onclick="inputNum('메밀꽃')" style="cursor: pointer;"><td>#메밀꽃 </td></a>
                      </div>
                      <br>
                        <div id="btn1_winter">
                          <th>겨울</th><br>
                          <a onclick="inputNum('동백나무')" style="cursor: pointer;"><td>#동백나무 </td></a>
                          <a onclick="inputNum('시클라멘')" style="cursor: pointer;"><td>#시클라멘 </td></a>
                          <a onclick="inputNum('베고니아')" style="cursor: pointer;"><td>#베고니아 </td></a>
                          <a onclick="inputNum('수선화')" style="cursor: pointer;"><td>#수선화 </td></a>
                          <a onclick="inputNum('게발선인장')" style="cursor: pointer;"><td>#게발선인장 </td></a>
                          <a onclick="inputNum('칼랑코에')" style="cursor: pointer;"><td>#칼랑코에 </td></a>
                          <a onclick="inputNum('군자란')" style="cursor: pointer;"><td>#군자란 </td></a>
                          <a onclick="inputNum('심비디움')" style="cursor: pointer;"><td>#심비디움 </td></a>
                          <br>
                          <a onclick="inputNum('덴드로비움')" style="cursor: pointer;"><td>#덴드로비움 </td></a>
                          <a onclick="inputNum('포인세티아')" style="cursor: pointer;"><td>#포인세티아 </td></a>
                          <a onclick="inputNum('팔레놉시스')" style="cursor: pointer;"><td>#팔레놉시스 </td></a>
                          <a onclick="inputNum('세인트폴리아')" style="cursor: pointer;"><td>#세인트폴리아 </td></a>
                          <a onclick="inputNum('개쑥갓')" style="cursor: pointer;"><td>#개쑥갓 </td></a>
                          <a onclick="inputNum('아프리카봉선화')" style="cursor: pointer;"><td>#아프리카봉선화 </td></a>
                          <a onclick="inputNum('시네라리아')" style="cursor: pointer;"><td>#시네라리아 </td></a>
                          <a onclick="inputNum('매화')" style="cursor: pointer;"><td>#매화 </td></a>
                          
                      </div>

                  </form>

                <input class="submit_btn" id = "update" type="submit" value="수정" >
                <input class="submit_btn" id = "delete" type="submit" value="삭제" >
            </form>
				
        </div>

    </div>

    <br><br><br><br><br><br><br>
</section>


<script src="js/insta.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
    $(function () {
        
        $("#update").click(function () {
            $("#ModiForm").attr("action","UpdatePostCon");
        });
        
        $("#delete").click(function () {
            $("#ModiForm").attr("action","DeletePostCon");
        });
    });
 
</script>

<script>
       var fileInput  = document.querySelector( "#id_photo" ),
           button     = document.querySelector( ".input-file-trigger" ),
           the_return = document.querySelector(".file-return");

       // Show image
       fileInput.addEventListener('change', handleImage, false);
       var canvas = document.getElementById('imageCanvas');
       var ctx = canvas.getContext('2d');


        function handleImage(e){
           var reader = new FileReader();
           reader.onload = function(event){
               var img = new Image();
               // var imgWidth =
               img.onload = function(){
                   canvas.width = 300;
                   canvas.height = 300;
                   ctx.drawImage(img,0,0,300,300);
               };
               img.src = event.target.result;
               // img.width = img.width*0.5
               // canvas.height = img.height;
           };
           reader.readAsDataURL(e.target.files[0]);
       }

       function inputNum(text){
                  document.getElementById('flower_hash').value = text;
              }

</script>
    
  
    
    
    

    
        
</body>

</html>