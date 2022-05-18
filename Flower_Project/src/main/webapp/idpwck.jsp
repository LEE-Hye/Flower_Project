<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                    <a href="#"><img src="images/client/11d1.jpg" class="img-responsive" alt=""></a>
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
                        <a href="post.jsp">커뮤니티</a>
                    </li>
                <!-- 네비게이션 끝 -->
            </div>
        </div>
        
    </div>
    <!-- End Navigation Section -->
    </div>
    <form action="IdPwCheck" name="idfindscreen" method = "POST"onsubmit="return id_search()">
         <div class = "wrapper">
            <h3>아이디/비밀번호 확인</h3><br><br>
         
      <section class = "form-search">
         <div class = "find-name">
            <label>이름</label>
            <input type="text" name="name" class = "btn-name" placeholder = "등록한 이름">
         <br><br><br>
         
         <div class = "find-birth">
            <label>생일</label>
            <input type="date" name="birth" class = "btn-birth" placeholder = "등록한 생일">
         </div>
         <br><br><br>
   </section>
   <div class ="btnSearch">
      <input type="submit" name ="enter"  value="찾 기" class="btn">
      <button class="btn btn-primary" onclick="back_main()" type="button">취소</button>
    </div>
    </div>
 </form>
    
    <!-- <form action="IdPwCkCon.jsp" method="post">
    <div class="wrapper">
        <h3>아이디/비밀번호 찾기</h3>
        <br>
        <div class="name">
            <input type="text" name ="name" text="name" id="name" placeholder="등록한 이름"><br><br>
        </div><br><br>
        <div class="birth">
            <input type="date" name ="birth" text="birth" id="birth" placeholder="등록한 생년월일"><br><br>
        </div><br><br><br>
        
        <div class="submit_button"><input type="submit" name ="enter"  value="찾 기" class="btn" onclick="id_search()"/></div><br>
        <div class="submit_button"><input type="submit" name ="cancle" value="취 소" class="btn" onclick=""/></div>
      <input type="button" name="enter" value="찾기"  onClick="id_search()">
      <input type="button" name="cancle" value="취소" onClick="history.back()">
       
        </form> -->
   <!-- <div>
         <div class = "search-title">
            <h3>아이디 찾기</h3>
         </div>
      <section class = "form-search">
         <div class = "find-name">
            <label>이름</label>
            <input type="text" name="member_name" class = "btn-name" placeholder = "등록한 이름">
         <br>
         </div>
         <div class = "find-phone">
            <label>생년월일</label>
            <input type="text" onKeyup = "addHypen(this);" name="member_phone" class = "btn-phone" placeholder = "휴대폰번호를 '-'없이 입력">
         </div>
         <br>
   </section>
   <div class ="btnSearch">
      <input type="button" name="enter" value="찾기"  onClick="id_search()">
      <input type="button" name="cancle" value="취소" onClick="history.back()">
    </div>
 </form>
 </div>
  -->
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br>
    <script type="text/javascript">
    frm.method = "post";
    frm.action = "FindIdResult.jsp"; //넘어간화면
    frm.submit(); 
    }
    function id_search(){
       if(!document.idfindscreen.name.value){
          alert("이름을 입력해주세요");
          return false;
       }
       if(!document.idfindscreen.birth.value){
          alert("생년월일을 입력해주세요");
          return false
       }   
    }
    </script>
    <script type="text/javascript">
    function back_main(){
       var frm = document.idfindscreen;
       
       frm.method = "post"
       frm.action = "main.jsp;"
       frm.submit();
    }
    </script>
</body>
</html>