<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.smhrd.domain.MemberVO" %>
<%@ page import = "com.smhrd.domain.MemberDAO" %>
<%@ page import = "java.util.List" %>
<%@page import="com.smhrd.domain.ReplyVO"%>
<%@page import="com.smhrd.domain.ReplyDAO"%>
<%@page import="com.smhrd.domain.PostVO"%>
<%@page import="com.smhrd.domain.PostDAO"%>

<%
   ReplyDAO dao = new ReplyDAO();
   List<ReplyVO> replyList = dao.selectAllReply();
   pageContext.setAttribute("replyList", replyList);
    /* for(ReplyVO vo: replyList){
      System.out.println("id : "+vo.getReplyid());
      System.out.println("content : "+vo.getReplycontent()); 
   } */
%>


<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en" dir="ltr">

<head>

    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    

    <title>Flower_Project</title>
    <link rel="stylesheet" href="css/style_post.css">
    <link rel="stylesheet" href="css/detail-page.css">
   

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
    
    <!-- 로그인해야지만 글쓰기 버튼누르기 -->
   
   
    <c:if test="${post.mid eq loginMember.id }">
       <div>
        <input type="button" id="write" value="수정" style="float: right" onclick="location.href='post_modify.jsp?pnum=${post.pnum}'" >
        </div>
    </c:if>
    
<!-- Start Call To Action Section -->

<section id="container">


    <div id="main_container">

        <section class="b_inner">

            <div class="contents_box">

                <article class="contents cont01">

                    <div class="img_section">
                        <div class="trans_inner">
                            <div><img src='<c:out value="upload/${post.sname}" />' alt=""></div>
                            
                        </div>
                        <br><br>
                        <div>
                            <span id="cont_show"><c:out value="${post.content}"/></span>
                        </div>
                    </div>


                    <div class="detail--right_box">

                        <header class="top">
                            <div class="user_container">
                                <div class="profile_img">
                                    <img src="imgs/thumb.jpeg" alt="">
                                </div>
                                <div class="user_name">
                                    <div class="nick_name"><c:out value="${post.mid}"/></div>
                                    <div class="nick_name"><c:out value="${post.pdate}"/></div>
                                    <h5>조회수 : <c:out value="${post.hit}" /></h5>
                                </div>
                            </div>
                            <div class="sprite_more_icon" data-name="more">
                                <ul class="more_detail">
                                    <li>수정</li>
                                    <li>삭제</li>
                                </ul>
                            </div>

                        </header>

                        <section class="scroll_section">
                            
                     
                     
                     <c:forEach var="r" items="${replyList}">
                     <c:if test="${r.pnum eq post.pnum}">
                            <div class="user_container-detail">
                                <div class="comment">
                                    <span class="user_id">아이디 : <c:out value="${r.replyid}"/></span>
                                    <p>내용 : <c:out value="${r.replycontent}" /></p>
                                    <c:if test="${loginMember.id eq r.replyid}">
                                    <form id="replyUpdateForm" action=""  method="get">
	                                      <input type="text" name="reply_num" value="${r.reply_num}" readonly/>
			                              <input type="submit" class="replyUpdate" value="댓글 수정하기"
			                                 style="float: right" >
			                              <input type="submit" class="replydelete" value="댓글 삭제하기"
			                                 style="float: right" >
                           			</form>
                        </c:if>
                           </div>
                            </div>
                            </c:if>
                            </c:forEach>
                     
                           

                                                       

                        </section>


                        <div class="bottom_icons">
                            <div class="left_icons">
                                <div class="heart_btn">
                                    <div class="sprite_heart_icon_outline" data-name="heartbeat"></div>
                                </div>
                                <div>
                                    <div class="sprite_bubble_icon"></div>
                                </div>
                                <div>
                                    <div class="sprite_share_icon" data-name="share"></div>
                                </div>
                            </div>

                            <div class="right_icon">
                                <div class="sprite_bookmark_outline" data-name="book-mark"></div>
                            </div>
                        </div>
               
                        <div class="count_likes">
                        <c:choose>
                        	<c:when test="${!empty loginMember }">
                        		<input type="button" value="🌼좋아요" id='like' class="like_button"></input>
                         		<span class="count">${post.plike}</span>
                        	</c:when>
                        	
                        	<c:otherwise>
                        		<span class="count">🌼좋아요${post.plike}</span>
                        	</c:otherwise>
 
                        </c:choose>
                        </div>
                        
                        <div class="timer">2시간</div>
                        
                        <form action="ReplyCon" method="post" name="replyform">
                           <input name="pnum" value="${post.pnum}" type="text" hidden>
                           <input name="replyid" value="${loginMember.id}" type="text" readonly>
                            <input name="replycontent" type="text" placeholder="댓글달기..">

                            <input type="submit" value="게시" class="upload_btn">  
                        
                        </form>
                        
                    </div>


                </article>
            </div>
        </section>

    </div>


    <div class="del_pop">
        <div class="btn_box">
            <div class="del">삭제</div>
            <div class="cancel">취소</div>
        </div>
   </div>

</section>
   </div>
   
    <br><br><br><br><br><br><br><br><br><br><br><br>

    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	
	$(document).on("click","#like",function(){ 
		$.ajax({
			data : {status : "like", pnum : ${post.pnum}},
			url : "LikeAjaxCon",
			method : "GET",
			dataType : "text",
			context : this, //sucess 안에서 this(#like)를 사용하고 싶은 경우
			success: function(data){
				$('#like+span').text(data)
	            $(this).attr('id','dislike')	
			},
			error: function(){
				alert("통신실패!")
			}
		})
	});
	    
	$(document).on("click","#dislike",function(){ 
	    $.ajax({
			data : {status : "dislike", pnum : ${post.pnum}},
			url : "LikeAjaxCon",
			method : "GET",
			dataType : "text",
			context : this,
			success: function(data){
					$('#dislike+span').text(data)
		            $(this).attr('id','like')
			},
			error: function(){
				alert("통신실패!")
			}
		})
	
	});
	 

    
    $(function () {
        
        $(".replyUpdate").click(function () {
            $(this).parent().attr("action","reply_Modify.jsp");
        });
        
        $(".replydelete").click(function () {
           
        	$(this).parent().attr("action","DeleteReplyCon");
        });
    });
 
</script>

</html>