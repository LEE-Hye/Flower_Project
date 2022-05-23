<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.MapVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MapDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
#mapwrap{position:relative;overflow:hidden;}
.category, .category *{margin:0;padding:0;color:#000;background:pink;}   
.category {position:absolute;overflow:hidden;top:10px;left:10px;width:50px;height:50px;z-index:10;border:1px solid black;font-family:'Malgun Gothic','맑은 고딕',sans-serif;font-size:12px;text-align:center;background-color:#fff;}
.category .menu_selected {background:#FF5F4A;color:#fff;border-left:1px solid #915B2F;border-right:1px solid #915B2F;margin:0 -1px;} 
.category li{list-style:none;float:left;width:50px;height:45px;padding-top:5px;cursor:pointer;} 
.category .ico_comm {display:block;margin:0 auto 2px;width:22px;height:26px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png') no-repeat;} 
.category .pic1{display:block;margin:0 auto 2px;width:22px;height:26px;}
.category .pic1{display:block;margin:0 auto 2px;width:22px;height:26px;} 
.category .ico_carpark {background-position:-10px -72px;} 
</style>
</head>
<body>
   <div id="map" style="width:100%; height:100vh;"></div>
   <form>
       <div class="category">
        <ul>
 <!--            <li id="flower" onclick="changeMarker('flower')">
                 <span><img src ="https://cdn2.iconfinder.com/data/icons/gardening-caramel-vol-1/256/CALENDULA-512.png" class="pic1"></span>
                전국 꽃~ -->
            </li>
            <li id="carnival" onclick="changeMarker('carnival')">
                <span><img src ="https://cdn4.iconfinder.com/data/icons/carnival-and-amusement-flat-colors/64/confetti-256.png" class="pic1"></span>
                5월축제
            </li>
 <!--          <li id="month1" onclick="changeMarker('month1')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/gardening-caramel-vol-1/256/DANDELION-256.png" class="pic1"></span>
                1월
            </li>
            <li id="month2" onclick="changeMarker('month2')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/season-7/340/spring_flower_season_blossom_floral_bloom_fresh-128.png" class="pic1"></span>
                2월
            </li>
            <li id="month3" onclick="changeMarker('month3')">
                <span><img src ="https://cdn4.iconfinder.com/data/icons/sakura-festival-2/512/Sakura-spring-japanese-03-512.png" class="pic1"></span>
                3월
            </li>
            <li id="month4" onclick="changeMarker('month4')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_velocity-256.png" class="pic1"></span>
                4월
            </li> -->
<!--             <li id="month5" onclick="changeMarker('month5')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/hokkaido-color-line/48/hokkaido_pixel_perfect_color_line_icons_5-lavender-256.png" class="pic1"></span>
                5월
            </li> -->
  <!--           <li id="month6" onclick="changeMarker('month6')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_hr-256.png" class="pic1"></span>
                6월
            </li>
            <li id="month7" onclick="changeMarker('month7')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_postit-512.png" class="pic1"></span>
                7월
            </li>
            <li id="month8" onclick="changeMarker('month8')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_standup_meeting-256.png" class="pic1"></span>
                8월
            </li>
            <li id="month9" onclick="changeMarker('month9')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/easter-2126/496/27.-flower-256.png" class="pic1"></span>
                9월
            </li>
            <li id="monthA" onclick="changeMarker('monthA')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/gardening-caramel-vol-1/256/CARNATION-256.png" class="pic1"></span>
                10~11월
            </li>
<!--             <li id="month11" onclick="changeMarker('month11')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/valentine-day-16/512/540_love_flower_wedding_heart_valentine_valentines_day_love-256.png" class="pic1"></span>
                11월
            </li>
            <li id="monthB" onclick="changeMarker('monthB')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/valentine-day-16/512/540_love_flower_wedding_heart_valentine_valentines_day_love-256.png" class="pic1"></span>
                12월
            </li>-->
        </ul>
    </div>
    </form>
    
   <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e98ea6bbf35f78f0fe5bed829537d85&libraries=clusterer"></script>
   <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = {
              center: new kakao.maps.LatLng(36.36588486441299, 127.38796189978896), // 지도의 중심좌표
              level: 13, // 지도의 확대 레벨
              mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
          }; 

      
      
      //지도 관련 부분★   
      
      // 지도를 생성한다 
      var map = new kakao.maps.Map(mapContainer, mapOption); 
        // 마커 클러스터러를 생성합니다 
        var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
        minLevel: 10 // 클러스터 할 최소 지도 레벨 
        });
        //데이터 마커 이미지
        var imageSrc = 'https://cdn4.iconfinder.com/data/icons/spring-6/128/yumminky-spring-color-24-256.png', // 마커이미지의 주소입니다    
        imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
        
        //축제 마커 이미지 만들기
        var imageSrc0 = 'https://cdn4.iconfinder.com/data/icons/circus-25/64/entrance-entertainment-festival-carnival-circus-128.png', // 마커이미지의 주소입니다    
        imageSize0 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption0 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage0 = new kakao.maps.MarkerImage(imageSrc0, imageSize0, imageOption0),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
        
        //1월 마커 이미지 만들기
        var imageSrc1 = 'https://cdn2.iconfinder.com/data/icons/gardening-caramel-vol-1/256/DANDELION-256.png', // 마커이미지의 주소입니다    
        imageSize1 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption1 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage1 = new kakao.maps.MarkerImage(imageSrc1, imageSize1, imageOption1),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
        
      //2월 마커 이미지 만들기
        var imageSrc2 = 'https://cdn2.iconfinder.com/data/icons/season-7/340/spring_flower_season_blossom_floral_bloom_fresh-128.png', // 마커이미지의 주소입니다    
        imageSize2 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption2 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage2 = new kakao.maps.MarkerImage(imageSrc2, imageSize2, imageOption2),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
        
      //3월 마커 이미지 만들기
        var imageSrc3 = 'https://cdn4.iconfinder.com/data/icons/sakura-festival-2/512/Sakura-spring-japanese-03-512.png', // 마커이미지의 주소입니다    
        imageSize3 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption3 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage3 = new kakao.maps.MarkerImage(imageSrc3, imageSize3, imageOption3),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
        
      //4월 마커 이미지 만들기
        var imageSrc4 = 'https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_velocity-256.png', // 마커이미지의 주소입니다    
        imageSize4 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption4 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage4 = new kakao.maps.MarkerImage(imageSrc4, imageSize4, imageOption4),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
        
      //5월 마커 이미지 만들기
        var imageSrc5 = 'https://cdn2.iconfinder.com/data/icons/hokkaido-color-line/48/hokkaido_pixel_perfect_color_line_icons_5-lavender-256.png', // 마커이미지의 주소입니다    
        imageSize5 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption5 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage5 = new kakao.maps.MarkerImage(imageSrc5, imageSize5, imageOption5),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
        
      //6월 마커 이미지 만들기
        var imageSrc6 = 'https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_hr-256.png', // 마커이미지의 주소입니다    
        imageSize6 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption6 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage6 = new kakao.maps.MarkerImage(imageSrc6, imageSize6, imageOption6),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
        
      //7월 마커 이미지 만들기
        var imageSrc7 = 'https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_postit-512.png', // 마커이미지의 주소입니다    
        imageSize7 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption7 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage7 = new kakao.maps.MarkerImage(imageSrc7, imageSize7, imageOption7),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
        
      //8월 마커 이미지 만들기
        var imageSrc8 = 'https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_standup_meeting-256.png', // 마커이미지의 주소입니다    
        imageSize8 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption8 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage8 = new kakao.maps.MarkerImage(imageSrc8, imageSize8, imageOption8),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
        
      //9월 마커 이미지 만들기
        var imageSrc9 = 'https://cdn0.iconfinder.com/data/icons/easter-2126/496/27.-flower-256.png', // 마커이미지의 주소입니다    
        imageSize9 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption9 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage9 = new kakao.maps.MarkerImage(imageSrc9, imageSize9, imageOption9),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
                
      //10월 마커 이미지 만들기
        var imageSrcA = 'https://cdn2.iconfinder.com/data/icons/gardening-caramel-vol-1/256/CARNATION-256.png', // 마커이미지의 주소입니다    
        imageSizeA = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOptionA = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImageA = new kakao.maps.MarkerImage(imageSrcA, imageSizeA, imageOptionA),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
        
      //111월 마커 이미지 만들기
        var imageSrc11 = 'https://cdn2.iconfinder.com/data/icons/valentine-day-16/512/540_love_flower_wedding_heart_valentine_valentines_day_love-256.png', // 마커이미지의 주소입니다    
        imageSize11 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption11 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage11 = new kakao.maps.MarkerImage(imageSrc11, imageSize11, imageOption11),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
        
      //12월 마커 이미지 만들기
        var imageSrcB = 'https://cdn2.iconfinder.com/data/icons/valentine-day-16/512/540_love_flower_wedding_heart_valentine_valentines_day_love-256.png', // 마커이미지의 주소입니다    
        imageSizeB = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOptionB = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImageB = new kakao.maps.MarkerImage(imageSrcB, imageSizeB, imageOptionB),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
              
        //DB에서 데이터 가져오기 ~ ★      
              
        <%
        MapDAO dao = new MapDAO();
        List<MapVO> MapList = dao.Allmap();
        List<MapVO> carnivalList = dao.Carnivalmap5();
        List<MapVO> month1 = dao.month1();
        List<MapVO> month2 = dao.month2();
        List<MapVO> month3 = dao.month3();
        List<MapVO> month4 = dao.month4();
        List<MapVO> month5 = dao.month5();
        List<MapVO> month6 = dao.month6();
        List<MapVO> month7 = dao.month7();
        List<MapVO> month8 = dao.month8();
        List<MapVO> month9 = dao.month9();
        List<MapVO> monthA = dao.month10();
        List<MapVO> month11 = dao.month11();
        List<MapVO> monthB = dao.month12();
        pageContext.setAttribute("MapList",MapList);
        %>
        
      console.log('<%=MapList.get(0).getWi()%>')
      console.log('<%=MapList.get(0).getGy()%>')
      
      
      var 데이터 = []
      var 데이터markers = []// 데이터 마커들을 담아줄 변수      나중에 삭제 시에도 필요함
      var chkflag = true;
      console.log(<%=MapList.size()%>)
      <%for(int i =0 ; i<MapList.size();i++){ %>
         데이터.push([<%=MapList.get(i).getWi()%>, <%=MapList.get(i).getGy()%>, '<div style="padding:5px;"><%=MapList.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=MapList.get(i).getFlower()%></a></div>'])
      <%}%>
      var 축제 = []
      var 축제markers = []
      var chkflag0 = true;
      <%for(int i =0 ; i<carnivalList.size();i++){ %>
      축제.push([<%=carnivalList.get(i).getWi()%>, <%=carnivalList.get(i).getGy()%>, '<div style="padding:5px;"><%=carnivalList.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=carnivalList.get(i).getFlower()%></a></div>'])
      <%}%>
      var 일월 = []
      var 일월markers = []
      var chkflag1 = true;
      <%for(int i =0 ; i<month1.size();i++){ %>
      일월.push([<%=month1.get(i).getWi()%>, <%=month1.get(i).getGy()%>, '<div style="padding:5px;"><%=month1.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month1.get(i).getFlower()%></a></div>'])
      <%}%>
      var 이월 = []
      var 이월markers = []
      var chkflag2 = true;
      <%for(int i =0 ; i<month2.size();i++){ %>
      이월.push([<%=month2.get(i).getWi()%>, <%=month2.get(i).getGy()%>, '<div style="padding:5px;"><%=month2.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month2.get(i).getFlower()%></a></div>'])
      <%}%>
      var 삼월 = []
      var 삼월markers = []
      var chkflag3 = true;
      <%for(int i =0 ; i<month3.size();i++){ %>
      삼월.push([<%=month3.get(i).getWi()%>, <%=month3.get(i).getGy()%>, '<div style="padding:5px;"><%=month3.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month3.get(i).getFlower()%></a></div>'])
      <%}%>
      var 사월 = []
      var 사월markers = []
      var chkflag4 = true;
      <%for(int i =0 ; i<month4.size();i++){ %>
      사월.push([<%=month4.get(i).getWi()%>, <%=month4.get(i).getGy()%>, '<div style="padding:5px;"><%=month4.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month4.get(i).getFlower()%></a></div>'])
      <%}%>
      var 오월 = []
      var 오월markers = []
      var chkflag5 = true;
      <%for(int i =0 ; i<month5.size();i++){ %>
      오월.push([<%=month5.get(i).getWi()%>, <%=month5.get(i).getGy()%>, '<div style="padding:5px;"><%=month5.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month5.get(i).getFlower()%></a></div>'])
      <%}%>
      var 육월 = []
      var 육월markers = []
      var chkflag6 = true;
      <%for(int i =0 ; i<month6.size();i++){ %>
      육월.push([<%=month6.get(i).getWi()%>, <%=month6.get(i).getGy()%>, '<div style="padding:5px;"><%=month6.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month6.get(i).getFlower()%></a></div>'])
      <%}%>
      var 칠월 = []
      var 칠월markers = []
      var chkflag7 = true;
      <%for(int i =0 ; i<month7.size();i++){ %>
      칠월.push([<%=month7.get(i).getWi()%>, <%=month7.get(i).getGy()%>, '<div style="padding:5px;"><%=month7.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month7.get(i).getFlower()%></a></div>'])
      <%}%>
      var 팔월 = []
      var 팔월markers = []
      var chkflag8 = true;
      <%for(int i =0 ; i<month8.size();i++){ %>
      팔월.push([<%=month8.get(i).getWi()%>, <%=month8.get(i).getGy()%>, '<div style="padding:5px;"><%=month8.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month8.get(i).getFlower()%></a></div>'])
      <%}%>
      var 구월 = []
      var 구월markers = []
      var chkflag9 = true;
      <%for(int i =0 ; i<month9.size();i++){ %>
      구월.push([<%=month9.get(i).getWi()%>, <%=month9.get(i).getGy()%>, '<div style="padding:5px;"><%=month9.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month9.get(i).getFlower()%></a></div>'])
      <%}%>
      var 십월 = []
      var 십월markers = []
      var chkflagA = true;
      <%for(int i =0 ; i<monthA.size();i++){ %>
      십월.push([<%=monthA.get(i).getWi()%>, <%=monthA.get(i).getGy()%>, '<div style="padding:5px;"><%=monthA.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=monthA.get(i).getFlower()%></a></div>'])
      <%}%>
      var 십일월 = []
      var 십일월markers = []
      var chkflag11 = true;
      <%for(int i =0 ; i<month11.size();i++){ %>
      십일월.push([<%=month11.get(i).getWi()%>, <%=month11.get(i).getGy()%>, '<div style="padding:5px;"><%=month11.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month11.get(i).getFlower()%></a></div>'])
      <%}%>
      var 십이월 = []
      var 십이월markers = []
      var chkflagB = true;
      <%for(int i =0 ; i<monthB.size();i++){ %>
      십이월.push([<%=monthB.get(i).getWi()%>, <%=monthB.get(i).getGy()%>, '<div style="padding:5px;"><%=monthB.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=monthB.get(i).getFlower()%></a></div>'])
      <%}%>
      
      
        
      var markers = []
        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
        var zoomControl = new kakao.maps.ZoomControl();
        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


        
        
        
        
        // ★마커생성 부분
function createMarkers() {
        for (var i=0; i<데이터.length; i++){
                  // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(데이터[i][0], 데이터[i][1]), // 마커의 좌표
          image: markerImage // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);



        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 데이터[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        데이터markers.push(marker)


        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
        });
        
        }//반복문 끝 ~
        }
        
        
function createMarkers1() {
        // 축제 마커 만들기 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
        for (var i=0; i<축제.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(축제[i][0], 축제[i][1]), // 마커의 좌표
          image: markerImage0 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);



        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 축제[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        축제markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
        });
        
        }
      }//반복문 끝 ~
        //축제 마커 끝 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
        
        //1월 꽃정보
    function createmonth1() {
        for (var i=0; i<일월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(일월[i][0], 일월[i][1]), // 마커의 좌표
          image: markerImage1 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 일월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        일월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }   
  //2월 꽃정보
    function createmonth2() {
        for (var i=0; i<이월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(이월[i][0], 이월[i][1]), // 마커의 좌표
          image: markerImage2 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 이월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        이월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }
  //3월 꽃정보
    function createmonth3() {
        for (var i=0; i<삼월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(삼월[i][0], 삼월[i][1]), // 마커의 좌표
          image: markerImage3 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 삼월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        삼월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }
  //4월 꽃정보
    function createmonth4() {
        for (var i=0; i<사월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(사월[i][0], 사월[i][1]), // 마커의 좌표
          image: markerImage4 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 사월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        사월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }
    //5월 꽃정보
    function createmonth5() {
        for (var i=0; i<오월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(오월[i][0], 오월[i][1]), // 마커의 좌표
          image: markerImage5 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 오월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        오월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }        
    //6월 꽃정보
    function createmonth6() {
        for (var i=0; i<육월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(육월[i][0], 육월[i][1]), // 마커의 좌표
          image: markerImage6 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 육월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        육월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }
    //7월 꽃정보
    function createmonth7() {
        for (var i=0; i<칠월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(칠월[i][0], 칠월[i][1]), // 마커의 좌표
          image: markerImage7 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 칠월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        칠월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }
    //8월 꽃정보
    function createmonth8() {
        for (var i=0; i<팔월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(팔월[i][0], 팔월[i][1]), // 마커의 좌표
          image: markerImage8 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 팔월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        팔월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }
    //9월 꽃정보
    function createmonth9() {
        for (var i=0; i<구월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(구월[i][0], 구월[i][1]), // 마커의 좌표
          image: markerImage9 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 구월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        구월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }    
    //10월 꽃정보
    function createmonthA() {
        for (var i=0; i<십월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(십월[i][0], 십월[i][1]), // 마커의 좌표
          image: markerImageA // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 십월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        십월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }         
    //11월 꽃정보
    function createmonthB() {
        for (var i=0; i<십이월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(십이월[i][0], 십이월[i][1]), // 마커의 좌표
          image: markerImageB // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 십이월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        십이월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
           });
          }
      }        
        
        
        
        
        
        
        
        //★ 기능 추가 부분
        
        // 클러스터러에 마커들을 추가합니다
        //clusterer.addMarkers(markers);
        
        // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
       function makeOverListener(map, marker, infowindow) {
          return function() {
              infowindow.open(map, marker);
          };
      }
      // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
      function makeOutListener(infowindow) {
         return function() {
            infowindow.close();
         };
      }
      
      createMarkers1(map);
      function changeMarker(type){
          
          var flower = document.getElementById('flower');
          var carnival = document.getElementById('carnival');
          var month1 = document.getElementById('month1');
          var month2 = document.getElementById('month2');
          var month3 = document.getElementById('month3');
          var month4 = document.getElementById('month4');
          var month5 = document.getElementById('month5');
          var month6 = document.getElementById('month6');
          var month7 = document.getElementById('month7');
          var month8 = document.getElementById('month8');
          var month9 = document.getElementById('month9');
          var monthA = document.getElementById('monthA');
          var month11 = document.getElementById('month11');
          var monthB = document.getElementById('monthB');
          
        
       // 커피숍 카테고리가 클릭됐을 때
       if (type === 'flower') {
       
          if(chkflag === true){
             flower.className = 'menu_selected';
             createMarkers(map);
              chkflag = false;
          }else if(chkflag === false){
              for (var i=0; i<데이터markers.length; i++){
             데이터markers[i].setMap(null);
             flower.className = '';
             console.log("test")
             chkflag = true;
              }
          }
          
       } else if (type === 'carnival') { // 편의점 카테고리가 클릭됐을 때
       
          if(chkflag0 === true){
             carnival.className = 'menu_selected';
             createMarkers1(map);
              chkflag0 = false;
          }else if(chkflag0 === false){
              for (var i=0; i<축제markers.length; i++){
             축제markers[i].setMap(null);
             carnival.className = '';
             console.log("test")
             chkflag0 = true;
              }
          }
           
       } else if (type === 'month1') { //1월 카테고리가 클릭됐을 때
          
          if(chkflag1 === true){
              month1.className = 'menu_selected';
              createmonth1(map);
              chkflag1 = false;
          }else if(chkflag1 === false){
              for (var i=0; i<일월markers.length; i++){
             일월markers[i].setMap(null);
             month1.className = '';
             console.log("test")
             chkflag1 = true;
              }
          }
         }else if (type === 'month2') { //2월 카테고리가 클릭됐을 때
             
             if(chkflag2 === true){
                 month2.className = 'menu_selected';
                 createmonth2(map);
                 chkflag2 = false;
             }else if(chkflag2 === false){
                 for (var i=0; i<이월markers.length; i++){
                이월markers[i].setMap(null);
                month2.className = '';
                console.log("test")
                chkflag2 = true;
                }
             }
         }else if (type === 'month3') { //3월 카테고리가 클릭됐을 때
             
             if(chkflag3 === true){
                 month3.className = 'menu_selected';
                 createmonth3(map);
                 chkflag3 = false;
             }else if(chkflag3 === false){
                 for (var i=0; i<삼월markers.length; i++){
                삼월markers[i].setMap(null);
                month3.className = '';
                console.log("test")
                chkflag3 = true;
                }
             }
          }else if (type === 'month4') { //4월 카테고리가 클릭됐을 때
             
             if(chkflag4 === true){
                 month4.className = 'menu_selected';
                 createmonth4(map);
                 chkflag4 = false;
             }else if(chkflag4 === false){
                 for (var i=0; i<사월markers.length; i++){
                사월markers[i].setMap(null);
                month4.className = '';
                console.log("test")
                chkflag4 = true;
                }
             }
          }else if (type === 'month5') { //5월 카테고리가 클릭됐을 때
             
             if(chkflag5 === true){
                 month5.className = 'menu_selected';
                 createmonth5(map);
                 chkflag5 = false;
             }else if(chkflag5 === false){
                 for (var i=0; i<오월markers.length; i++){
                오월markers[i].setMap(null);
                month5.className = '';
                console.log("test")
                chkflag5 = true;
                }
             }
          }else if (type === 'month6') { //6월 카테고리가 클릭됐을 때
             
             if(chkflag6 === true){
                 month6.className = 'menu_selected';
                 createmonth6(map);
                 chkflag6 = false;
             }else if(chkflag6 === false){
                 for (var i=0; i<육월markers.length; i++){
                육월markers[i].setMap(null);
                month6.className = '';
                console.log("test")
                chkflag6 = true;
                }
             }
          }else if (type === 'month7') { //7월 카테고리가 클릭됐을 때
             
             if(chkflag7 === true){
                 month7.className = 'menu_selected';
                 createmonth7(map);
                 chkflag7 = false;
             }else if(chkflag7 === false){
                 for (var i=0; i<칠월markers.length; i++){
                칠월markers[i].setMap(null);
                month7.className = '';
                console.log("test")
                chkflag7 = true;
                }
             }
          }else if (type === 'month8') { //8월 카테고리가 클릭됐을 때
             
             if(chkflag8 === true){
                 month8.className = 'menu_selected';
                 createmonth8(map);
                 chkflag8 = false;
             }else if(chkflag8 === false){
                 for (var i=0; i<팔월markers.length; i++){
                팔월markers[i].setMap(null);
                month8.className = '';
                console.log("test")
                chkflag8 = true;
                }
             }
          }else if (type === 'month9') { //9월 카테고리가 클릭됐을 때
             
             if(chkflag9 === true){
                 month9.className = 'menu_selected';
                 createmonth9(map);
                 chkflag9 = false;
             }else if(chkflag9 === false){
                 for (var i=0; i<구월markers.length; i++){
                구월markers[i].setMap(null);
                month9.className = '';
                console.log("test")
                chkflag9 = true;
                }
             }
          }else if (type === 'monthA') { //10월 카테고리가 클릭됐을 때
             
             if(chkflagA === true){
                 monthA.className = 'menu_selected';
                 createmonthA(map);
                 chkflagA = false;
             }else if(chkflagA === false){
                 for (var i=0; i<십월markers.length; i++){
                십월markers[i].setMap(null);
                monthA.className = '';
                console.log("test")
                chkflagA = true;
                }
             }
          }else if (type === 'monthB') { //12월 카테고리가 클릭됐을 때
             
             if(chkflagB === true){
                 monthB.className = 'menu_selected';
                 createmonthB(map);
                 chkflagB = false;
             }else if(chkflagB === false){
                 for (var i=0; i<십이월markers.length; i++){
                십이월markers[i].setMap(null);
                monthB.className = '';
                console.log("test")
                chkflagB = true;
                }
             }
          } 
       
       
      }//마커표시함수 끝
   </script>


</body>
</html>