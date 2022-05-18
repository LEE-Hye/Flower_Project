<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8" />
    <title>koreaMap</title>
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
                        <a href = "login.jsp" >
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
        <div id="board_write">
            <h4>글을 작성하는 공간입니다.</h4>
                <div id="write_area">
                    <form enctype="multipart/form-data" action="write_ok.php?board_id=<?echo $board_id;?>" method="post">
                        <div id="in_title">
                            <textarea name="title" id="utitle" rows="1" cols="55" placeholder="제목" maxlength="100" required></textarea>
                        </div>
     
                        <div class="wi_line"></div>
                        <div id="in_content">
                            <textarea name="content" id="ucontent" rows="20" cols="160" placeholder="내용" required></textarea>
                        </div>
     
                          <input type="file" name="SelectFile" />
                          <input type="file" name="SelectFile" />
                          <input type="file" name="SelectFile" />
                      
                          <br>
                          <div>
                            <input 
                                   type='button' 
                                   value='꽃태그' 
                                   id='btn2'
                                   onclick='toggleBtn1()'/>
                          </div>
                          <br>
                          <div id="btn1_spring">
                              <th>봄</th><br>
                            <a href="#"><td>#복수초 </td></a>
                            <a href="#"><td>#산철쭉 </td></a>
                            <a href="#"><td>#개나리 </td></a>
                            <a href="#"><td>#벚나무 </td></a>
                            <a href="#"><td>#민들레 </td></a>
                            <a href="#"><td>#목련 </td></a>
                            <a href="#"><td>#자목련 </td></a>
                            <a href="#"><td>#달래 </td></a>
                            <a href="#"><td>#유채 </td></a>
                            <a href="#"><td>#영산홍 </td></a>
                            <a href="#"><td>#모란 </td></a>
                            <a href="#"><td>#패랭이꽃 </td></a>
                            <a href="#"><td>#산달래 </td></a>
                            <a href="#"><td>#다닥냉이 </td></a>
                            <a href="#"><td>#팬지 </td></a>
                            <a href="#"><td>#튤립 </td></a>
                            <a href="#"><td>#찔레꽃 </td></a>
                            <a href="#"><td>#수선화 </td></a>
                            <a href="#"><td>#자운영 </td></a>
                            <a href="#"><td>#히아신스 </td></a>
                            <br>
                            <a href="#"><td>#양지꽃 </td></a>
                            <a href="#"><td>#삼지구엽초 </td></a>
                            <a href="#"><td>#고깔제비꽃 </td></a>
                            <a href="#"><td>#나도바람꽃 </td></a>
                            <a href="#"><td>#노랑무늬붓꽃 </td></a>
                            <a href="#"><td>#족도리풀 </td></a>
                            <a href="#"><td>#은난초 </td></a>
                            <a href="#"><td>#백선 </td></a>
                            <a href="#"><td>#개느삼 </td></a>
                            <a href="#"><td>#골무꽃 </td></a>
                            <a href="#"><td>#산수유 </td></a>
                            <a href="#"><td>#복사꽃 </td></a>
                            <a href="#"><td>#진달래 </td></a>
                            <a href="#"><td>#살구꽃 </td></a>
                            <a href="#"><td>#자두꽃 </td></a>
                          </div>
                          <br>
                          <div id="btn1_summer">
                            <th>여름</th><br>
                            <a href="#"><td>#나팔꽃 </td></a>
                            <a href="#"><td>#노루발 </td></a>
                            <a href="#"><td>#장미 </td></a>
                            <a href="#"><td>#수레국화 </td></a>
                            <a href="#"><td>#해바라기 </td></a>
                            <a href="#"><td>#카네이션 </td></a>
                            <a href="#"><td>#금낭화 </td></a>
                            <a href="#"><td>#메꽃 </td></a>
                            <a href="#"><td>#싱아 </td></a>
                            <a href="#"><td>#패랭이꽃 </td></a>
                            <a href="#"><td>#애기기린초 </td></a>
                            <a href="#"><td>#이질풀 </td></a>
                            <a href="#"><td>#담쟁이덩쿨 </td></a>
                            <a href="#"><td>#수정난풀 </td></a>
                            <a href="#"><td>#해란초 </td></a>
                            <a href="#"><td>#무궁화 </td></a>
                            <a href="#"><td>#돌양지꽃 </td></a>
                            <a href="#"><td>#글록시니아 </td></a>
                            <br>
                            <a href="#"><td>#쇠무릎 </td></a>
                            <a href="#"><td>#골등골나물 </td></a>
                            <a href="#"><td>#꽃고비 </td></a>
                            <a href="#"><td>#만병초 </td></a>
                            <a href="#"><td>#물꽈리아재비 </td></a>
                            <a href="#"><td>#플록스 </td></a>
                            <a href="#"><td>#자주괭이밥 </td></a>
                            <a href="#"><td>#말발도리 </td></a>
                            <a href="#"><td>#쑥부쟁이 </td></a>
                            <a href="#"><td>#여우팥 </td></a>
                            <a href="#"><td>#물양지꽃 </td></a>
                            <a href="#"><td>#인동덩쿨 </td></a>
                            <a href="#"><td>#수국 </td></a>
                            <a href="#"><td>#라벤더 </td></a>
                            <a href="#"><td>#봉숭아 </td></a>
                            <a href="#"><td>#붓꽃 </td></a>
                            <a href="#"><td>#연꽃 </td></a>
                            <br>
                            <a href="#"><td>#메리골드 </td></a>
                            <a href="#"><td>#백합 </td></a>
                        </div>
                        <br>
                          <div id="btn1_fall">
                            <th>가을</th><br>
                            <a href="#"><td>#국화 </td></a>
                            <a href="#"><td>#코스모스 </td></a>
                            <a href="#"><td>#투구꽃 </td></a>
                            <a href="#"><td>#땅따귀개 </td></a>
                            <a href="#"><td>#울릉국화 </td></a>
                            <a href="#"><td>#자주쓴풀 </td></a>
                            <a href="#"><td>#각시퓌 </td></a>
                            <a href="#"><td>#방울꽃 </td></a>
                            <a href="#"><td>#미국쑥부쟁이 </td></a>
                            <a href="#"><td>#구절초 </td></a>
                            <a href="#"><td>#한라돌쩌귀 </td></a>
                            <a href="#"><td>#부용 </td></a>
                            <a href="#"><td>#분꽃 </td></a>
                            <a href="#"><td>#산비장이 </td></a>
                            <a href="#"><td>#께묵 </td></a>
                            <a href="#"><td>#솔체꽃 </td></a>
                            <a href="#"><td>#조밥나물 </td></a>
                            <a href="#"><td>#오이풀 </td></a>
                            <br>
                            <a href="#"><td>#강활 </td></a>
                            <a href="#"><td>#바디나물 </td></a>
                            <a href="#"><td>#참싸리 </td></a>
                            <a href="#"><td>#사철란 </td></a>
                            <a href="#"><td>#소경불알 </td></a>
                            <a href="#"><td>#산씀바귀 </td></a>
                            <a href="#"><td>#눈괴불주머니 </td></a>
                            <a href="#"><td>#독활 </td></a>
                            <a href="#"><td>#꽃향유 </td></a>
                            <a href="#"><td>#개여뀌 </td></a>
                            <a href="#"><td>#쇠서나물 </td></a>
                            <a href="#"><td>#핑크뮬리 </td></a>
                            <a href="#"><td>#천일홍 </td></a>
                            <a href="#"><td>#백일홍 </td></a>
                            <a href="#"><td>#양귀비 </td></a>
                            <a href="#"><td>#억새 </td></a>
                            <a href="#"><td>#메밀꽃 </td></a>
                        </div>
                        <br>
                          <div id="btn1_winter">
                            <th>겨울</th><br>
                            <a href="#"><td>#동백나무 </td></a>
                            <a href="#"><td>#시클라멘 </td></a>
                            <a href="#"><td>#베고니아 </td></a>
                            <a href="#"><td>#수선화 </td></a>
                            <a href="#"><td>#게발선인장 </td></a>
                            <a href="#"><td>#칼랑코에 </td></a>
                            <a href="#"><td>#군자란 </td></a>
                            <a href="#"><td>#심비디움 </td></a>
                            <br>
                            <a href="#"><td>#덴드로비움 </td></a>
                            <a href="#"><td>#포인세티아 </td></a>
                            <a href="#"><td>#팔레놉시스 </td></a>
                            <a href="#"><td>#세인트폴리아 </td></a>
                            <a href="#"><td>#개쑥갓 </td></a>
                            <a href="#"><td>#아프리카봉선화 </td></a>
                            <a href="#"><td>#시네라리아 </td></a>
                            <a href="#"><td>#매화 </td></a>
                            
                        </div>

                          <br>
                          <br>
                        
                        <div >
                            <table >
                             <th id="selecttag">선택한 해시태그</th>
                             <tr>
                                 <td><br></td>
                             </tr>
                            <tr>
                                <td>
                                    여기칸에 들어가야함 ㅇㅇ
                                </td>
                            </tr>
                            </table>
                        </div>



                        <div class="bt_se">
                            <button type="submit" id="flower_tag2" style="float: right;">글 작성</button>
                        </div>
                        <br><br><br>
                    </form>
                </div>
            </div>
        </body>
        <script>

    // function toggleBtn1() {
    
    // // 토글 할 버튼 선택 (btn1)
    // const btn1 = document.getElementById('btn1');
    
    // // btn1 숨기기 (visibility: hidden)
    // if(btn1.style.visibility !== 'hidden') {
    //     btn1.style.visibility = 'hidden';
    // }
    // // btn` 보이기 (visibility: visible)
    // else {
    //     btn1.style.visibility = 'visible';
    // }
    
    // }
        </script>
    </html>



        
    </div>
    
    
    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>
</body>

</html>