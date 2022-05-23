<%@page import="com.smhrd.domain.BoardListVO"%>
<%@page import="com.smhrd.domain.BoardListDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.smhrd.domain.MemberVO" %>
<%@ page import = "com.smhrd.domain.MemberDAO" %>
<%@ page import = "java.util.List" %>
<% 
	BoardListDAO dao = new BoardListDAO();
	List<BoardListVO> BoardList = dao.selecAlltBoard();
    pageContext.setAttribute("BoardList", BoardList);
%>


<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Canvas</title>

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
    
<style type="text/css">
    #login{
        text-align: right;
    }


    body{
        line-height:2em;        
        font-family:"맑은 고딕";
}
    ul, li{ 
        list-style:none;
        text-align:center;
        padding:0;
        margin:0;
}

    #mainWrapper{
        width: 935px;
        margin: 0 auto; /*가운데 정렬*/
    }

    #mainWrapper > ul > li:first-child {
        text-align: center;
        font-size:20pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
}

    #ulTable {margin-top:10px;}
    

    #ulTable > li:first-child > ul > li {
        background-color:#f5f107;
        font-weight:bold;
        text-align:center;
}

    #ulTable > li > ul {
        clear:both;
        padding:0px auto;
        position:relative;
        min-width:40px;
}
    #ulTable > li > ul > li { 
        float:left;
        font-size:12pt;
        border-bottom:1px solid silver;
        vertical-align:baseline;
}    

    #ulTable > li > ul > li:first-child               {width:10%;} /*No 열 크기*/
    #ulTable > li > ul > li:first-child +li           {width:45%;} /*제목 열 크기*/
    #ulTable > li > ul > li:first-child +li+li        {width:20%;} /*작성일 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li     {width:15%;} /*작성자 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li+li{width:10%;} /*조회수 열 크기*/

    #divPaging {
          clear:both; 
        margin:0 auto; 
        width:220px; 
        height:50px;
}

    #divPaging > div {
        float:left;
        width: 30px;
        margin:0 auto;
        text-align:center;
}

    #liSearchOption {clear:both;}
    #liSearchOption > div {
        margin:0 auto; 
        margin-top: 30px; 
        width: auto; 
        height:100px;

}

    .left {
        text-align : left;
}

    #search{
        margin:0 auto; 
        margin-top: 30px; 
        width: 50px;
        text-align : center;
    }
    
    #write {
    text-align: center;
    
    width: 300px;
    height: 40px;
    border: none;
    background: #f5f107;
}
</style>
    
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
                    <a href="main.jsp"><img src="images/client/5055151.jpg" class="img-responsive" id="main_pic"></a>
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
    
    
<!-- Start Call To Action Section -->
<div class="row">
    <div class="col-md-12">
        <div class="call-to-action">
            <div class="overlay">
                <h1>꽃 보고 왔다</h1>
                <p>이곳은 꽃 후기 게시판입니다.</p>
            </div>
        </div>
    </div>
</div>
<br><br><br>
     
    <!-- 로그인해야지만 글쓰기 버튼누르기 -->
   
    <c:if test="${!empty loginMember }">
    	<div>
        <input type="button" id="write" value="글쓰기" style="float: right" onclick="location.href='post_write.jsp'">
        </div>
    </c:if>
    
    

 
<br><br><br>
    


    


<div class="col-sm-3 col-lg-3">
    <div class="dash-unit">
        <a href="detail_page.jsp">
        <dtitle>게시글1</dtitle>
        <hr>
      <div class="thumbnail">
          <img src="images/flower/겨울_동백나무.jpg" class="img-circle">
      </div><!-- /thumbnail -->
      <h1>user 님의 게시글입니다.</h1>
      <h3>글 내용 동백나무꽃 너무이쁘다 글을 길게 써봐요~</h3>
      <br>
    </a>
    </div>
</div>


<c:forEach var="b" items="${BoardList}">
<div class="col-sm-3 col-lg-3">
    <div class="dash-unit">
        <a href="detail_page.jsp">

        <dtitle><c:out value="${b.b_num}" /></dtitle>
        <hr>
      <div class="thumbnail">
          <img src="images/flower/겨울_동백나무.jpg" class="img-circle">
      </div><!-- /thumbnail -->
      <h1><c:out value="${b.b_name}"/>님의 게시글입니다.</h1>
      <h3><c:out value="${b.b_title}" /></h3>

      <br>
    </a>
    </div>
</div>
</c:forEach>









    <li>
        <div id="divPaging">
            <div>◀</div>
               <div><b>1</b></div>
            <div>2</div>
            <div>3</div>
            <div>4</div>
            <div>5</div>
            <div>▶</div>
        </div>
    </li>

    <!-- 검색 폼 영역 -->
    <li id='liSearchOption'>
    
    
    <tr align="center">
				<td colspan="5">
					<form action="boardSearch.do" method="post">
						<select name="part">
							<option value="b_subject">제목</option>
							<option value="b_content">내용</option>
						</select> <input type="text" name="searchData" required="required" /> <input
							type="submit" value="검색" />
					</form>
				</td>
			</tr>



		</li>
    
   
   
    <br><br><br><br><br><br><br><br><br><br><br><br>

    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>
</body>

</html>