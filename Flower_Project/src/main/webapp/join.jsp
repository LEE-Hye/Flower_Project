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
                    <a href="main.jsp"><img id="main_pic" src="images/client/5055151.jpg" class="img-responsive" alt=""></a>
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
                        <a href="post_view.jsp">커뮤니티</a>
                    </li>
                <!-- 네비게이션 끝 -->
            </div>
        </div>
        
    </div>
    <!-- End Navigation Section -->
    </div>

    <form action="JoinCon" method="POST" name="joinform" class="joinForm"
      onsubmit="return checkJoin();">

      <h2>회원가입</h2>
      <div class="textForm">
         <input name="id" type="text" class="id" id="userid" placeholder="아이디">
      </div>

      <button class="btn btn-primary" onclick="idCheck()" type="button">중복체크</button>

      <div class="textForm">
         <input name="pw" type="password" class="pw" id="pw1"
            placeholder="비밀번호">
      </div>
      <div class="textForm">
         <input name="loginPwConfirm" type="password" class="pw" id="pw2"
            placeholder="비밀번호 확인">
      </div>
      <div class="textForm">
         <input name="name" type="text" class="name" placeholder="이름">
      </div>
      <div class="textForm">
         <input name="birth" type="date" class="birth" placeholder="생년월일">
      </div>
      <input type="submit" class="btn" value="J O I N" />
   </form>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script>
    
      var inputbotton = 0
   
       function idCheck(){
         let userid = $("#userid").val()

         $.ajax({
            data : {
               'userid' : userid
            },
            url : 'IdCheckCon',
            type : 'get',
            contentType : 'application/json; charset=UTF-8',
            dataType : 'text',
            success : function(data) {
               if (data == 'true') {
                  inputbotton = 1
                  alert("사용할 수 있는 아이디입니다.")
                  $("#userid").val(userid)
                  
               } else {
                  alert("사용할 수 없는 아이디입니다.")
                  $("#userid").val("")
               }
            },
            error : function(data) { 
               alert("통신실패!")
            }
         })

      }

      function checkJoin() {
         if (!document.joinform.id.value) {
            alert("ID를 입력하세요")
            return false;
         }
         if(inputbotton == 0){
            alert("중복체크를 하세요")
            return false;
         }
         if (!document.joinform.pw.value) {
            alert("비밀번호를 입력하세요")
            return false;
         }
         if (document.joinform.pw.value != document.joinform.loginPwConfirm.value) {
            alert("Password가 서로 다릅니다")
            return false;
         }
         if (!document.joinform.name.value) {
            alert("이름을 입력하세요")
            return false;
         }
         if (!document.joinform.birth.value) {
            alert("생년월일을 입력하세요")
            return false;
         }

      }
   </script>
    
    
    
    
</body>
</html>