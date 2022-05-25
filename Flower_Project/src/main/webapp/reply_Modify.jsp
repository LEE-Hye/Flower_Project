<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.domain.ReplyVO"%>
<%@page import="com.smhrd.domain.ReplyDAO"%>
<%@ page import="com.smhrd.domain.MemberVO" %>
<%@ page import="com.smhrd.domain.MemberDAO" %>
<%@page import="com.smhrd.domain.PostVO"%>
<%@page import="com.smhrd.domain.PostDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="UpdateReplyCon" method="post" name="replyform">
	댓글번호:<input name="reply_num" value="${param.reply_num}" type="text"><br>
    게시판번호:<input name="pnum" value="${post.pnum}" type="text" ><br>
    아이디:<input name="replyid" value="${loginMember.id}" type="text" readonly><br>
    <input name="replycontent" type="text" placeholder="댓글달기..">

    <input type="submit" value="게시" class="upload_btn">
                        
    </form>
    
    
    
	
</body>
</html>